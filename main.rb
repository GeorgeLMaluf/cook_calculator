# frozen_string_literal: true
require './lib/cook_timer'

puts 'Miojo CookCalculator'
puts "George L.  'Maverick' Maluf"
3.times { puts '' }
puts 'Informe o tempo de cozimento'
time = gets.to_i
puts 'Informe o tempo da primeira ampulheta'
hour_glass_a = gets.to_i
puts 'Informe o tempo da segunda ampulheta'
hour_glass_b = gets.to_i
cook_timer = CookTimer.new(time_to_cook: time,
                           hour_glass_one: hour_glass_a,
                           hour_glass_two: hour_glass_b)
if !cook_timer.solvable?
  puts 'Não há como resolver com os parametros informados'
else
  puts ''
end
