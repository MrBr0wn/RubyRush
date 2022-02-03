# frozen_string_literal: true

require 'sqlite3'
require 'pathname'

# Parent class for different records
class Post
  current_path = Pathname.new(__FILE__)
  file_db = current_path.realpath.parent.parent.to_s
  @@SQLITE_DB_FILE = "#{file_db}/data/db/notepad_db.db"

  # List of types Posts
  def self.post_types
    { 'Memo' => Memo, 'Task' => Task, 'Link' => Link }
  end

  # Create an appropriate subclass (Memo, Task or Link)
  def self.create(type)
    post_types[type].new
  end

  # Finding the record in db by id
  def self.find_by_id(id)
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)

    # Finding record by id
    if id.nil?
      abort 'Search Error!'
    else
      # Set result as hash
      db.results_as_hash = true

      # Query to db notepad_db, posts table
      result = db.execute('SELECT * FROM posts WHERE rowid = ?', id)

      # db.execute should returning an array
      result = result[0] if result.is_a?(Array)

      db.close

      if result.nil? || result.empty?
        abort "Record with ID = #{id} not found"
        nil
      else
        # Calling static class method without specifying class name,
        # because it calling from another static class method same class
        # post = Post.create() eq post = create()
        post = create(result['type'])
        post.load_data(result)
        post
      end
    end
  end

  # Finding the record in db with pararms from terminal
  def self.find_all(limit, type, _id)
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)

    # Returning all table of records
    db.results_as_hash = false
    query = 'SELECT rowid, * FROM posts '
    query += 'WHERE type = :type ' unless type.nil?
    query += 'ORDER BY rowid DESC '
    query += 'LIMIT :limit' unless limit.nil?

    # Preparing query
    statement = db.prepare(query)

    statement.bind_param('type', type) unless type.nil?
    statement.bind_param('limit', limit) unless limit.nil?

    result = statement.execute!

    statement.close
    db.close

    result
  end

  def initialize
    @text = nil
    @created_at = Time.now
  end

  def read_from_console
    # ...
  end

  def to_lines
    # ...
  end

  def save
    file = File.new(file_path, 'w')

    to_lines.each do |line|
      file.puts(line)
    end

    file.close
  end

  # Build path to the file
  def file_path
    current_path = Pathname.new(__FILE__)
    current_path = current_path.realpath.parent.parent.to_s

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    "#{current_path}/output/#{file_name}"
  end

  # Save record to db
  def save_to_db
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)
    # Set result as hash
    db.results_as_hash = true

    # Query to db notepad_db, posts table
    db.execute(
      "INSERT INTO posts (#{to_db_hash.keys.join(',')}) VALUES (#{('?,' * to_db_hash.keys.size).chomp(',')})",
      to_db_hash.values
    )

    inser_row_id = db.last_insert_row_id

    db.close
    inser_row_id
  end

  # Convert data to hash for including to query db
  def to_db_hash
    {
      'type' => self.class.name,
      'created_at' => @created_at.to_s
    }
  end

  # Preparing data for printing in the terminal
  def load_data(data_hash)
    @created_at = Time.parse(data_hash['created_at'])
  end
end
