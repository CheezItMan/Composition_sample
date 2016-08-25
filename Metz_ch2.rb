# metz_ch2.rb

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    ratio / cog.to_f
  end
  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end
  def diameter
    rim + (tire * 2)
  end
  def circumference
    diameter * Math::PI
  end
end
