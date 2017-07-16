def square_root(value)
display Math.sqrt(value)
end

def sphere_area(diameter)
  # pi * D ^ 2
  display(Math::PI * diameter ** 2)
end

def hyp(a, b)
  display(Math.sqrt(a ** 2 + b ** 2))
end

def add(a,b)
  display(a + b)
end

def substract(a,b)
  display(a - b)
end

def multiply(a,b)
  display(a * b)
end

def divide(a,b)
  display(a / b)
end

def power(a,b)
  display(a ** b)
end

def display(result)
  puts sprintf("%.2f", result)
end

puts "Welcome to calculator"
puts "What operator would you like to use?"
operator =  gets.chomp

puts "What is the first operand?"
op_a = gets.chomp.to_f

if operator != 'sqrt' && operator != 'sphere_area'
    puts "What is the second operand?"
    op_b = gets.chomp.to_f
end

add(op_a, op_b) if operator == '+'
substract(op_a, op_b) if operator == '-'
multiply(op_a, op_b) if operator == '*'
divide(op_a, op_b) if operator == '/'
power(op_a, op_b) if operator == '**'
square_root(op_a) if operator == 'sqrt'
sphere_area(op_a) if operator == 'sphere'
hyp(op_a, op_b) if operator == 'hyp'
