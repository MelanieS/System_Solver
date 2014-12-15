require 'matrix'
puts puts puts
coefficients = [[1122.807, 2527.426], [3812.865, 232.068]].collect!
#This sets equations 1 as 1122.807p + 2527.426q, then eqn 2 as 3812.865p + 232.068q
#As long as the variables stay in the SAME ORDER in each equation, this works

coefficients.each do |row|
    row.collect! { |x| (x) }
end

coefficients = Matrix[*coefficients]
constants = Matrix[[0.194], [0.315]]
#These are the "answers" to each equation. Must be in the same order as above equations.
#1122.807, 2527.426 from above corresponds to 0.194 because the arrays are in the same position

the_answer = coefficients.inverse * constants

puts "Answer to 25f:"
puts "P, Q respectively"
puts the_answer

puts puts puts


coefficients = [[3200.0, 10900.0, 19300.0],
                [5900.0, 9400.0, 10100.0],
                [27500.0, 12200.0, 3500.0]].collect!
coefficients.each do |row|
    row.collect! { |x| (x) }
end

coefficients = Matrix[*coefficients]
constants = Matrix[[0.5095],
                   [0.3566],
                   [0.5271]]

the_answer = coefficients.inverse * constants

puts "Answer to T1:"
puts "A, B, C respectively"
puts the_answer
puts puts puts