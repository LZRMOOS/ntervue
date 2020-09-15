# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'root', password: 'root', admin: true, email: 'root@root.com')

make = CarMake.create(name: 'Ford')
CarCoolness.create(score: 3, car_make: make)
CarModel.create(name: 'F150', year: 2000, color: 'Purple', car_make: make)
CarModel.create(name: 'Focus', year: 2019, color: 'Green', car_make: make)

make = CarMake.create(name: 'Honda')
CarCoolness.create(score: 2, car_make: make)
CarModel.create(name: 'Civic', year: 1999, color: 'Metallic Orange', car_make: make)

make = CarMake.create(name: 'Tesla')
CarCoolness.create(score: 4, car_make: make)
CarModel.create(name: 'S', year: 2020, color: 'Black', car_make: make)
CarModel.create(name: '3', year: 2020, color: 'Red', car_make: make)
CarModel.create(name: 'X', year: 2020, color: 'White', car_make: make)
CarModel.create(name: 'Y', year: 2020, color: 'Blue', car_make: make)

make = CarMake.create(name: 'Volvo')
CarCoolness.create(score: 4, car_make: make)
CarModel.create(name: 'C30', year: 2012, color: 'Cosmic White', car_make: make)

make = CarMake.create(name: 'Ferrari')
CarCoolness.create(score: 5, car_make: make)
CarModel.create(name: 'Enzo', year: 2005, color: 'Red', car_make: make)
