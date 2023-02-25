class Crop
  attr_reader :grains

  def initialize
    @grains = 0
  end

  def state
    @state = @grains >= 15 ? "ripe" : "not ripe"
  end

  def ripe?
    @grains >= 15
  end
end
