require_relative "../setup"

burnaby = Store.create(name: "Burnaby", annual_revenue: 30000, womens_apparel: true, mens_apparel: true)

burnaby.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)

# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
if @store1.destroy
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: "Test Empty Store", annual_revenue: 0, mens_apparel: true, annual_revenue: 0)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end
