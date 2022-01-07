class Bridge

  def initialize
    puts "The Bridge was created!"
    @opened = false
  end

  def open
    puts "The Bridge was opened! Let's go!"
    @opened = true
  end

  def is_opened?
    @opened
  end
end
