require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account(amount=0)
    @bank_account += amount
  end

  # def happiness=(index)
  #   @happiness += index
  #   happiness(@happiness)
  # end
  #
  # def hygiene=(index)
  #   @hygiene += index
  #   hygiene(@hygiene)
  # end

  def happiness=(index)
    @happiness = [[10, index].min, 0].max
  end

  def hygiene=(index)
    @hygiene = [[10, index].min, 0].max
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    bank_account(salary)
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(hygiene+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(hygiene-3)
    self.happiness=(happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness=(person.happiness+3)
    self.happiness=(happiness+3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic="politics")
    case topic
      when "politics"
       self.happiness=(happiness-2)
       person.happiness=(person.happiness-2)
       "blah blah partisan blah lobbyist"
     when "weather"
       self.happiness=(happiness+1)
       person.happiness=(person.happiness+1)
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
    end
  end
end
