class TeaPot
  def initialize(material, color, volume)
    @material = material
    @color = color
    @volume = volume
    @full = false
  end

  def material
    @material
  end

  def color
    @color
  end

  def volume
    @volume
  end

  def full?
    @full
  end

  def fill
    @full = true
  end
end
