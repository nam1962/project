require_relative "animal"
class Chicken < Animal
  attr_reader :eggs

  def initialize(sex)
    super()
    @sex = sex
    @eggs = 0
  end

  def talk
    if @sex == "male"
      "cock-a-doodle-doo"
    else
      "cluck cluck"
    end
  end

  def feed!
    super
    if @sex == "female"
      @eggs += 2
    end
  end
end
