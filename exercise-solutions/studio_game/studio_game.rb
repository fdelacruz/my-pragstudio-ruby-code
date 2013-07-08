class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def name=(name)
    @name = name.capitalize
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def score
    @health + @name.length
  end

  def to_s
   "I'm #{@name} with a health of #{@health} and a score of #{score}" 
  end
end

player1 = Player.new("moe")
puts player1
puts player1.name
puts player1.health
puts player1.score

player2 = Player.new("larry", 60)
puts player2
puts player2.name
player2.name = "lawrence"
puts player2
puts player2.name
puts player2.health
puts player2.score
puts player2

player3 = Player.new("curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3

