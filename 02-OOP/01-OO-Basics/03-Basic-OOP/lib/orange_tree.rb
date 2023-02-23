class OrangeTree
  attr_accessor :age, :height, :fruits, :dead

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    @height += 1 if @age <= 10
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    else
      @fruits = 0
    end
    die
  end

  def dead?
    @dead
  end

  def die
    @dead = @age >= rand(51..100) if @age > 50
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end
end
