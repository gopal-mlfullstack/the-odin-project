module Speak 
  def speak(speak)
    puts speak
  end

  def eat(foods)
    puts foods 
  end

end

class GoodMan
  include Speak 
end

class GoodDog 
  include Speak 
end

# sparky = GoodDog.new()
# puts "Sparky Speaks: "
# sparky.speak("aakh.. aakhh... akkhh..")
# puts "Sparky Eats: "
# sparky.eat("marri biscuit")
# ujjal = GoodMan.new()
# puts "Ujjal Speaks: "
# ujjal.speak("hello..")
# puts "Ujjal Eats: "
# ujjal.eat("chaai with biscuit")

# ancestors method
puts GoodDog.ancestors
puts " "
puts GoodMan.ancestors