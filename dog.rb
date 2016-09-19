class Dog
	attr_reader :color, :breed
	attr_accessor :name

  def initialize(color, breed)
  	@color = color
  	@breed = breed
  	@hungry = true
  end
  
  def feed(food)
  	puts "Mmm, " + food + "!"
  	@hungry = false
  end
  
  def hungry?
  	if @hungry
  		puts "I\'m hungry!"
  	else 
  		puts "I\'m full!"
  	end
  	@hungry
  end

  def speak
  	puts "Arf! Arf!"
  end

end
puppy = Dog.new("black", "Yorky")
puts "Let\'s inspect our new dog:"
puts puppy.inspect
puts "What class does our new dog belong to?"
puts puppy.class
puts "Is our new dog an object?"
puts puppy.is_a?(Object)
puts "What color is our dog?"
puts puppy.color
puts "Let\'s name our dog"
puppy.name = "PJ"
puts puppy.name
puts "Is our dog hungry?"
puppy.hungry?
puts "Quick, feed our dog!"
puppy.feed("something resembling human food")
puts "Is our dog stiiiill hungry?"
puppy.hungry?
puts "Our dog can make noise"
puppy.speak