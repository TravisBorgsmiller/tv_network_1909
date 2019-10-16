require_relative './character'

class Show

  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
     @characters.first.salary + @characters.last.salary
  end

end
