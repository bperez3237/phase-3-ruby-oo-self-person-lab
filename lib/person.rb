# your code goes here
require 'pry'


class Person 
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name
    attr_writer

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        if new_happiness > 10
            @happiness = 10
        elsif new_happiness < 0 
            @happiness = 0
        else 
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0 
            @hygiene = 0
        else 
            @hygiene = new_hygiene
        end
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(self.hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(self.happiness+2)
        self.hygiene=(self.hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # binding.pry
        self.happiness=(self.happiness+3)
        friend.happiness=(friend.happiness+3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness=(self.happiness-2)
            friend.happiness=(friend.happiness-2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(self.happiness+1)
            friend.happiness=(friend.happiness+1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
            
end