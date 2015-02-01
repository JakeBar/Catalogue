# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

date = Date.today + 5.days
 
products = Product.create([
  { name: "Milk", volume: "2L", quantity: 10, price: 3.95, sell_by: date + 5.days },
  { name: "Juice", volume: "2L", quantity: 25, price: 6.5, sell_by: date + 2.weeks },
  { name: "Water", volume: "750mL", quantity: 50, price: 3.99, sell_by: date + 6.months },
  { name: "Yoghurt", volume: "200mL", quantity: 12, price: 2.5, sell_by: date + 5.days },
  { name: "Cola", volume: "375mL", quantity: 100, price: 2.95, sell_by: date + 3.months },
  { name: "Soda Water", volume: "750mL", quantity: 75, price: 1.99, sell_by: date + 6.months }
])
 
# The manufacturer is in a rush and has determined that all products should expire 5 days after the date they must be sold.
 
products.each do | product |
   
  product.best_before = product.sell_by + 5.days
  product.save!
 
end
