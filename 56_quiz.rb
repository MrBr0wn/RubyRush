file_path = File.dirname(__FILE__)
if File.exist?(file_path + "/modules/data/56_questions.txt") &&
  File.exist?(file_path + "/modules/data/56_answers.txt")
  questions = File.readlines(file_path + "/modules/data/56_questions.txt")
  answers = File.readlines(file_path + "/modules/data/56_answers.txt")
  question = 0
  answer = nil
  correct = 0
  incorrect = 0

  while question < questions.size
    puts questions[question]

    unless !answer.nil?
      puts "Your answer: "
      answer = STDIN.gets.chomp
    end

    if answer.to_i == answers[question].to_i
      puts "Correct!"
      correct += 1
    else
      puts "Incorrect!"
      incorrect += 1

      puts "User: "
      p answer.to_i
      puts "Data: "
      p answers[question].to_i
    end

    answer = nil
    question += 1
  end
  puts "\n\n"
  puts "Your result:\nCorrect answers: #{correct}\nIncorrect answers: #{incorrect}"
else
  puts "Files not found"
end
