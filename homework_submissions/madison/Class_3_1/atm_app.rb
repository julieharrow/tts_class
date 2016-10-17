#Create an ATM application that includes an Account class and 3 attributes (name, balance, pin). Create 4 additional methods: display_balance, withdraw, deposit, and pin_error. The user should be prompted to enter their pin anytime they call display_balance, withdraw, or deposit. pin_error should contain  "Access denied: incorrect PIN." and be puts when the user types the wrong pin.
class Account

  attr_reader :name, :balance, :pin
  def initialize(name, balance = 100, pin)
    @name = name
    @balance = balance
    @pin = pin
  end
end

def display_balance(pin_number)
  puts "Please enter your PIN."
  answer = gets.chomp
  if answer == pin
    puts "Your account balance is #{@balance}."
  else
    puts "#{pin_error}"
  end
end

def withdraw
  puts "Please enter your PIN."
  answer = gets.chomp
  if answer == pin
    puts "You may withdraw funds."
  else
    puts "#{pin_error}"
  end
end

def deposit
  puts "Please enter your PIN."
  answer = gets.chomp
  if answer == pin
    puts "You may deposit funds."
  else
    puts "#{pin_error}"
  end
end

def pin_error
  return "Access denied: incorrect PIN."
end

private
def pin
  @pin = 1234
end
