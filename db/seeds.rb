# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

date = Date.today + 5.days

products = [
[ "Milk", "2L", 10, 3.95, date + 5.days],
[ "Juice", "2L", 25, 6.5, date + 2.weeks],
[ "Water", "750mL", 50, 3.99, date + 6.months],
[ "Yoghurt", "200mL", 12, 2.5, date + 5.days],
[ "Cola", "375mL", 100, 2.95, date + 3.months],
[ "Soda Water", "750mL", 75, 1.99, date + 6.months]
]


# The manufacturer is in a rush and has determined that all products should expire 5 days after the date they must be sold.


products.each do | product |
    Product.create( :name => product[0], :volume => product[1],
                   :quantity => product[2],  :price  => product[3], :sell_by => product[4] + 5)
end
