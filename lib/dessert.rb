class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    return true if @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @calories = 5 
    @name = flavor + ' jelly bean'
    @flavor = flavor
  end
  def delicious?
    return false if (@flavor == 'licorice' and self.instance_of? JellyBean)
    true
  end
end
