# frozen_string_literal: true

class CookTimer
  attr_accessor :time_to_cook, :hour_glass_one, :hour_glass_two

  def initialize(time_to_cook:, hour_glass_one:, hour_glass_two:)
    @time_to_cook = time_to_cook
    @hour_glass_one = hour_glass_one
    @hour_glass_two = hour_glass_two
  end

  def solvable?
    (time_to_cook % hour_glass_one.gcd(hour_glass_two)).zero?
  end
end
