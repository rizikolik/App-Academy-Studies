
class Computer
    @@users={}
    def initialize(username,password)
      @username=username
      @password=password
      @@users[username]=password
      @files={}
    end
    def create(filename)
      time=Time.now
    
      @files[filename]=time
      puts "New file created"
    end
    def Computer.get_users
      @@users
    end
  end
  my_computer=Computer.new("usernew",12345)



  class Account
    attr_reader:name
      attr_reader:balance
      def initialize(name,balance=100)
        @name=name
        @balance=balance
      end
      public
      def display_balance(pin_number)
     puts  pin_number==@pin ?"Balance: $#{@balance}.": pin_error
      end
      
      def withdraw(pin_number,amount)
     if  pin_number==@pin
     @balance -= amount
     puts "Withdrew #{amount}. New balance: $#{@balance}."
      end
      end
      private
      def pin
        @pin=1234
      end
      def pin_error
        "Access denied: incorrect PIN."
      end
      
    end
    checking_account=Account.new("bla bla")