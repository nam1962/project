# TODO: code the Rice class
require_relative "crop"

class Rice < Crop
  attr_reader :grains

  def water!
    @grains += 5
  end

  def transplant!
    @grains += 10
  end
end
