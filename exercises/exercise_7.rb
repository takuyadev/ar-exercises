require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please enter store name"
name = $stdin.gets.chomp

@store3 = Store.create(name: name, annual_revenue: 100000, mens_apparel: true, womens_apparel: false)

if @store3.errors.any?
  puts @store3.errors.full_messages.join(", ")
end
