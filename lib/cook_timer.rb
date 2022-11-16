# frozen_string_literal: true

class CookTimer
  attr_accessor :time_to_cook, :hour_glass_one, :hour_glass_two

  def initialize(time_to_cook, hour_glass_one, hour_glass_two)
    @time_to_cook = time_to_cook
    @hour_glass_one = hour_glass_one
    @hour_glass_two = hour_glass_two
  end

  def solvable?
    return false if (time_to_cook > hour_glass_one) || (time_to_cook > hour_glass_two)

    (time_to_cook % hour_glass_one.gcd(hour_glass_two)).zero?
  end

  def cook_time
    max_times_hour_glass_one = remain(time_to_cook, hour_glass_one, hour_glass_two)
    max_times_hour_glass_two = remain(time_to_cook, hour_glass_two, hour_glass_one)

    [max_times_hour_glass_one * hour_glass_one, max_times_hour_glass_two * @hour_glass_two].min
  end

  private

  def remain(time, dividend, divisor)
    (1..divisor).each { |index| return index if (dividend * index) % divisor === time }
  end
end
