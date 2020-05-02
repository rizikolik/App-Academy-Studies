# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("houses")
house1=House.create({name:"Home1"})
house2=House.create({name:"Home2"})


Dog.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('dogs')
dog1=Dog.create({name:"clifford",house_id:house1.id})
dog2=Dog.create({name:"Snoopy", house_id:house2.id})


Toy.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('toys')
toy1=Toy.create({name:"big bone" ,color:"red",dog_id:dog1.id})
toy2=Toy.create({name:"towel",color:"blue",dog_id:dog1.id})
toy3=Toy.create({name:"dog house",color:"yellow",dog_id:dog2.id})
toy4=Toy.create({name:"blanket",color:"brown",dog_id:dog2.id})