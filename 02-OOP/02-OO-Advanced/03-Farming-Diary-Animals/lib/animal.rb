class Animal
  attr_reader :energy
  def initialize
    @energy = 0
  end

  def feed!
    @energy += 1
  end

end
