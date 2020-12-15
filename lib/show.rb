class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    sum_of_salaries = 0
    @characters.each do |character|
      sum_of_salaries += character.salary
    end
    sum_of_salaries
  end

  def highest_paid_actor
    higest_paid = @characters.first
    @characters.each do |character|
      if character.salary > higest_paid.salary
        highest_paid = character
      end
    end
    higest_paid.actor
  end

  def actors
    characters.map do |character|
      character.actor
    end
  end
end
