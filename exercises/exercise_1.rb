require_relative "../setup"

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.create(name: "Burnaby", annual_revenue: 30000, womens_apparel: true, mens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, womens_apparel: false, mens_apparel: true)
gastown = Store.create(name: "Coquitlam", annual_revenue: 190000, womens_apparel: false, mens_apparel: false)
