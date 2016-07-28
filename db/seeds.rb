# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email

#User.create! name: "Robson", email: "robson.lourenco@gmail.com", admin: true, password: "123456"
User.create({ :name => "Bob", :email => "robson2.lourenco@gmail.com", :admin => true, :password => "123456" })

Portion.delete_all
Portion.create! description: "Unit"
Portion.create! description: "Dozen"
Portion.create! description: "50 Units"
Portion.create! description: "100 Units"
Portion.create! description: "500 Units"

OrderStatus.delete_all
OrderStatus.create! description: "In Progress"
OrderStatus.create! description: "Placed"
OrderStatus.create! description: "Shipped"
OrderStatus.create! description: "Cancelled"

# Product.delete_all
# Product.create! title: "Brigadeiro", unit_price: 50.49, active: true, portion_id: 4
# Product.create! title: "Cajuzinho", unit_price: 45.29, active: true, portion_id: 4
# Product.create! title: "Bolo de Chocolate", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Bolo de Coco", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Bolo de Nutela", unit_price: 80.99, active: true, portion_id: 1
# Product.create! title: "Bolo de Banana", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Bolo de Abacaxi", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta Prestigio", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta Crocante", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta de Morango com Nutela", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta de Coco", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta de Nozes", unit_price: 55.99, active: true, portion_id: 1
# Product.create! title: "Torta de Chocolate", unit_price: 55.99, active: true, portion_id: 1