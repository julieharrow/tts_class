
# The app should have a class of Student and the student should "login" with their email and password before they can take a test. The user should be able to take the test and receive feedback on answers. Their score should be saved and printed at the end of the test. If they score under 60 they should be prompted to take the test again.

class Student
  attr_accessor :name, :email, :password
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

end

class Test
  attr_reader :questions, :answers, :score
  def initialize(questions, answers, score)
    @questions = questions
    @answers = answers
    @score = score
  end

  def run_test
    puts "Please answer the following questions."
    for i in 0...@questions.length do
      puts @questions[i]
      answer = gets.chomp
      if answer == @answers[i]
        puts "Correct!"
        @score += (100/@questions.length)
      else
        puts "Incorrect"
      end
    end
  end

  def print_results
    puts "You earned a score of #{@score}."
    if @score < 60
      puts "Because you scored fewer than 60 points, you must retake the test."
    else
      puts "Congratulations on passing the exam!"
    end
  end

end


puts "Name:"
input_name = gets.chomp
puts "Email:"
input_email = gets.chomp
puts "Password:"
input_password = gets.chomp

student = Student.new(input_name,input_email,input_password)
exam = Test.new(['4 * 4', '5 - 2', '3 / 3'],['16','3','1'],0)

exam.run_test
exam.print_results



# Create an Atm Application that includes:
# An Account class
# 3 attributes: name, balance, pin
# Create 4 additional methods: display_balance, withdraw, deposit, and pin_error.
# The user should be prompted to enter their pin anytime they call display_balance, withdraw, or deposit.
# pin_error should contain  "Access denied: incorrect PIN." and be puts when the user types the wrong pin.


class Account
  @@bank = "Chase"
  attr_accessor :name, :balance
  attr_reader :pin, :account_access

  def self.bank
     @@bank
  end

  def initialize(name, balance, pin, account_access)
    @name = name
    @balance = balance
    @pin = pin
    @account_access = account_access
  end

  def display_balance
    puts "#{@name}'s account balance:  $#{@balance}"
  end

  def withdraw=(amount)
    if amount > @balance
      puts "Withdrawal denied: amount exceeds $#{@balance} balance."
    else
      @balance -= amount
      puts "$#{amount} withdrawal successful."
      puts "#{@name}'s Account Balance:  $#{@balance}"
    end
  end

  def deposit=(amount)
    @balance += amount
  end

  def pin_error=(input_pin)
    num_chances = 1
    until input_pin == @pin || num_chances == 3
      puts "Access denied: incorrect PIN. Try Again"
      input_pin = gets.chomp.to_i
      num_chances +=1
    end
    if input_pin == @pin
      puts "Access granted.  What would you like to do? (Display balance / Make a withdrawal / Make a deposit)"
    else
      puts "Access denied: session over."
      @account_access = "Locked"
    end
  end

end

# julie harrow opens an account with Chase
active_account = Account.new("Julie Harrow",2000,1234,"Active")
puts "Welcome to #{Account.bank} bank ATM, #{active_account.name}! Please enter your pin number to access your account:"
active_account.pin_error = gets.chomp.to_i
if active_account.account_access == "Active"
  action = gets.chomp.downcase
  until action == "done"
    if action == "display balance"
      active_account.display_balance
    elsif action == "make a withdrawal"
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      active_account.withdraw = amount
    elsif action == "make a deposit"
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      active_account.deposit = amount
    end
    puts "Anything else that you would you like to do? (Display balance / Make a withdrawal / Make a deposit / Done)"
    action = gets.chomp.downcase
  end
end
