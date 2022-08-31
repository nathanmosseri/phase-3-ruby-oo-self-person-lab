class Person 
    @@num_of_ppl = 0

    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness

    def initialize(name)
       @name = name
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
       @@num_of_ppl += 1
    end

    def happiness=value
        @happiness = value.clamp(0, 10)
    end

    def hygiene=value
        @hygiene = value.clamp(0, 10)
    end

    def clean?
       self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if (topic == 'politics')
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == 'weather')
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end

lydia = Person.new('lydia')
jeremy = Person.new('jeremy')

lydia.happiness = 1
jeremy.happiness = 55


p jeremy.start_conversation(lydia, 'politics')
p lydia.start_conversation(jeremy, 'thing')

