require 'timecop'

class Varys
  # Say the name of the character
  def say_my_name!
    "I am Varys, and I'm here to say what you want to hear."
  end

  # Flatter Cersei and Joffrey
  def say_rocks!(name)
    "#{name} rocks!"
  end

  # Upon receiving a list of words, reverse them and return only the ones
  # which have five letters or more
  def backwards_wording(list_of_words)
    list_of_words.select do |elem|
      elem.length >= 5
    end.map { |e| e.reverse }
  end

# Upon receiving a list of float numbers, return a portion of them. If it is
# Friday, return the ones that are below 0. Otherwise, return the ones above
# or equal 0.
  def friday_numbers(list_of_float)
    if Time.now.friday? 
      list_of_float.select { |float| float < 0}
    else
      list_of_float.select { |float| float >= 0}
    end 
  end
end
