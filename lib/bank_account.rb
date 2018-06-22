class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(money)
        self.balance += money
    end

    def display_balance
        @balance
    end

    def valid?
        if self.status == "open" && self.balance > 0
            true
        else false
        end
    end 
end
