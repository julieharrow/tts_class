#The app should have a class of Student and the student should "login" with their email and password before they can take a test. The user should be able to take the test and receive feedback on answers. Their score should be saved and printed at the end of the test. If they score under 60 they should be prompted to take the test again.
class Student

  attr_reader :email, :password

  def initialize(email, password)
    @email = email
    @password = password
  end
end

puts "To take this test, you must login. Please enter your email."
email_from_user = gets.chomp.downcase
puts "Please enter your password."
password_from_user = gets.chomp.downcase

student = Student.new(email_from_user, password_from_user)

class Teacher

  attr_reader :questions, :answers

  def initialize(questions, answers)
    @questions = questions
    @answers = answers
  end
end

questions = Array.new
questions = ["What is 2+2?", "What is 4*2?", "What is 4/2?"]

answers = Array.new
answers = ["4", "8", "2"]


#The user should be able to take the test and receive feedback on answers. Their score should be saved and printed at the end of the test. If they score under 60 they should be prompted to take the test again.


if score = <60
  puts "Please retake the test."
end
