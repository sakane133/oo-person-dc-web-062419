# your code goes here
require 'pry'
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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
        if new_happiness <= 10 && new_happiness >= 0
            @happiness = new_happiness
        elsif new_happiness > 10 
            @happiness = 10
        else 
            @happiness = 0
        
        end 
    end

    def hygiene
        @hygiene
    end

    def hygiene=(new_hygiene)
        if new_hygiene <= 10 && new_hygiene >= 0
            @hygiene = new_hygiene
        elsif new_hygiene > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
            

    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end

    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
        
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif
            topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end


    end

end

# Lisa = Person.new("Lisa")

# Lisa.take_bath
