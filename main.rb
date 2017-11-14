puts "Please enter the kind of calculator you would like to use. b for basic, a for advanced, m for BMI, t for Travel"
type_of_calculator = gets.chomp

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def multiply(num1,num2)
  num1*num2
end

def divide(num1,num2)
  num1/num2
end

def root(num1)
  sqrt(num1)
end

def power(num1,num2)
  num1**num2
end

if type_of_calculator == 'b'
  puts "please enter the first number you want to computer"
  first_number = gets.chomp.to_i
  puts "please enter what operation you want to perform, + - / *"
  operator = gets.chomp
  puts "Now please enter the second number you want to compute"
  second_number = gets.chomp.to_i
  if operator == '+'
    puts(add(first_number, second_number))
  elsif operator == '-'
    puts(subtract(first_number,second_number))
  elsif operator == '/'
    puts(divide(first_number,second_number))
  elsif operator == '*'
    puts(multiply(first_number,second_number))
  end
end

if type_of_calculator == 'a'
  puts "please enter the first number you want to compute. If you want to square root, this will be the number that is rooted"
  first_number = get.chomp.to_i
  puts "Now please decide if you want to square root (rt) or power (p)"
  operator = gets.chomp
  puts "please enter the second number you want to operate on"
  second_number = gets.chomp.to_i
  if operator == "rt"
    root(first_number)
  elsif operator == "power"
    power(first_number, second_number)
  end
end
