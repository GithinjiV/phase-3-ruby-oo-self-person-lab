class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account, :paid
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num> 10
             10
        elsif num<0
            0
        else
            num
        end
        # @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = if num> 10
            10
       elsif num<0
           0
       else
           num
       end

       #@hygiene = num.clamp(0, 10)
    end

    def happy?
        self.happiness>7? true : false
    end

    def clean?
        self.hygiene>7? true : false
    end

    def get_paid(num)
        self.bank_account+=num
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            [self, person].each{|friend| friend.happiness-=2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, person].each{|friend| friend.happiness+=1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        
        # if (topic == "politics")
        #     self.happiness-=2
        #     person.happiness-=2
        #     "blah blah partisan blah lobbyist"
        # elsif (topic == "weather")
        #     self.happiness+=1
        #     person.happiness+=1
        #     "blah blah sun blah rain"
        # else
        #     'blah blah blah blah blah'
        # end
    end
end