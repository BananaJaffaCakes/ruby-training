=begin
Class improvements
Completed - Include a deposit method that lets users add money to their accounts
In-progress - Include error checking that prevents users from overdrawing their accounts
Create CheckingAccounts or SavingsAccounts that inherit from Account

ruby .\08_banking.rb
=end

class Account
    attr_reader :name
    attr_reader :balance
    
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw(pin_number, amount)
      if pin_number == pin and (@balance - amount) >= 0
        @balance -= amount
        puts "Withdrew $#{amount}. New balance: $#{@balance}"
      elsif pin_number == pin and (@balance - amount) < 0
        puts "Withdrawal amount of $#{amount} exceeds balance: $#{@balance}"
      else
        puts pin_error
      end
    end

    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
        puts "Deposited $#{amount}. New balance: $#{@balance}"
      else
        puts pin_error
      end
    end
    
    private
    
    def pin
      @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
   
  end
  
checking_account = Account.new("checking_account", 100_000)
checking_account.display_balance(1111)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 1_000_000)
checking_account.deposit(1234, 10)

