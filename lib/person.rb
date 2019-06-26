# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
    end
    def name 
        @name
    end

    def bank_account
        @bank_account
    end
    def bank_account=(new_balance)
        @bank_account = new_balance
    end
    def happiness
        @happiness
    end 
    def happiness=(new_happiness)
        if new_happiness <= 10
            @happiness = new_happiness
        end 
    end

end