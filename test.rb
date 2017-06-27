require 'date'

x = "Luciano :)"

puts x.class # discovering the class
puts x
puts "#{x} is very cool"

p

y = "1984"
z = 1984
puts y
puts y.class

puts y.to_i # ~> to_integer
puts y.to_i.class

puts z.to_s # to_string
puts z.to_s.class

20.even? # par ~> true
20.odd? # ímpar ~> false

p 2.9999.truncate # arredonda para baixo

puts "Arrays: "

# Array
luciano = ["Ruby", "Rails", "React", "Angular"]
p luciano.size # igual ao length?
p luciano.length # igual ao size
p luciano.sort # igual ao shuffle
p luciano.shuffle # igual ao sort

# shortcuts for arrays with strings

x = %w[luciano krebs amaral arruda]
x = %w{luciano krebs}
x = %w(luciano krebs)
puts x

# range
my_array = (1..10).to_a # 10 está incluso
my_longer_array = (1...10).to_a # 10 não está incluso

p my_array
p my_longer_array

# special values ~> nil, false, true
# logic && || !
# if, elsif, else

age = 17
puts "You are #{age} years old"

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end

def yesterday
  yesterday_date = Date.today - 1
  return yesterday_date.strftime("%B %d")
end
# uninitialized constant Date...
puts tomorrow
puts yesterday

def full_name(first_name, last_name)
  name = first_name.capitalize + " " + last_name.capitalize
  return name
end


puts full_name("boris", "paillard")
puts full_name("sebastien", "saunier")

luciano_name = full_name("luciano", "krebs")
puts luciano_name

# PARAMETERS VS. ARGUMENTS
# when I'm defining a function ~> parameters
# when I'm calling a function ~> arguments

# A method returns the last statement executed.
def add(x, y)
  return x + y
end

# is the same as

def add(x, y)
  x + y
end

# Ruby ~> snake_case
# good_method_or_variable_name

# a method ending with a ? returns true or false
p 42.even?
p 42.odd?

puts "I love Ruby on Rails and Angular and React :)"

"a".methods.grep /to/ # ~> methdos with this regex

a = [1,2,3,4,5]
a.first
a.last
