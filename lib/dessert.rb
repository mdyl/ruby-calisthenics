class Dessert
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
  def calories
    @calories
  end
  def calories=(new_calories)
    @calories = new_calories
  end
  def initialize(name, calories)
    self.name = name
    self.calories = calories
  end
  def healthy?
    if self.calories < 200
      true
    else
      false
    end
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def flavor
    @flavor
  end
  def flavor=(new_flavor)
    @flavor = new_flavor
  end
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end
  def delicious?
    if self.flavor == "licorice"
      false
    else
      true
    end
  end
end
