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
  Math.sqrt(num1)
end

def power(num1,num2)
  num1**num2
end

if type_of_calculator == 'b'
  puts "please enter the first number you want to computer"
  first_number = gets.chomp.to_f
  puts "please enter what operation you want to perform, + - / *"
  operator = gets.chomp
  puts "Now please enter the second number you want to compute"
  second_number = gets.chomp.to_f
  if operator == '+'
    puts "#{first_number} + #{second_number} is #{add(first_number, second_number)}
  elsif operator == '-'
    puts "#{first_number} - #{second_number} is #{subtract(first_number,second_number)}"
  elsif operator == '/'
    puts "#{first_number} / #{second_number} is #{divide(first_number,second_number)}"
  elsif operator == '*'
    puts "first_number * second_number is #{multiply(first_number,second_number)}"
  end
end

if type_of_calculator == 'a'
  puts "please enter the first number you want to compute. If you want to square root, this will be the number that is rooted"
  first_number = gets.chomp.to_f
  puts "Now please decide if you want to square root (rt) or power (p)"
  operator = gets.chomp
  puts "please enter the second number you want to operate on"
  second_number = gets.chomp.to_f
  if operator == "rt"
    puts "The root of #{first_number} is #{root(first_number)}"
  elsif operator == "p"
    puts "#{first_number} to the power of #{second_number} is #{power(first_number, second_number)}"
  end
end

if type_of_calculator == 'm'
  puts "Would you prefer imperial or metric"
  type_of_system = gets.chomp
  if type_of_system == 'imperial'
    puts "Please enter your weight in pounds"
    weight = gets.chomp.to_f
    puts "Please enter how many feet tall you are"
    feet = gets.chomp.to_f
    puts "Now please enter how many inches extra you are"
    inches = gets.chomp.to_f
    result = (weight*703)/(((feet*12)+inches)**2)
    puts "your bmi is #{result}"
  elsif type_of_system == 'metric'
    puts "Please enter your weight in kg"
    weight = gets.chomp.to_f
    puts "Please enter your height in cm"
    height = gets.chomp.to_f
    result = weight/((height/100)**2)
    puts "Your bmi is #{result}"
  end
end

if type_of_calculator == 't'
  puts "Please enter how far you are travelling"
  distance = gets.chomp.to_f
  puts "Please enter your fuel effiiency in mpg"
  mpg = gets.chomp.to_f
  puts "How much is a gallon of fuel in pounds?"
  cpg = gets.chomp.to_f
  puts "How fast on average will you be travelling in mph?"
  speed = gets.chomp.to_f
  if speed > 60
    mpg -= ((speed-60)*2)
    if mpg <= 0
      mpg = 1
    end
  end
  travel_time = distance/speed
  travel_cost = (distance/mpg) *cpg
  puts "Your trip will take #{travel_time} hours and cost £#{travel_cost}"
end
