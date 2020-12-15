class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def network_characters
    @shows.map do |show|
      show.characters
    end.flatten
  end

  def main_characters
    network_main_characters = []
    network_characters.each do |character|
      if character.salary > 500_000 && character.name == character.name.upcase
        network_main_characters.push(character)
      end
    end
    network_main_characters
  end

  def show_actor_names(show)
    show.characters.map do |character|
      character.actor
    end
  end


  def actors_by_show
    list_of_shows = {}
    @shows.each do |show|
      list_of_shows[show] = show_actor_names(show)
    end
    list_of_shows
  end
end
