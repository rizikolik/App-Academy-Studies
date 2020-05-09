require 'faker'
p "creating houses"
Home.destroy_all
#ActiveRecord::Base.connection.reset_pk_sequence!("houses")
house1=Home.create({name:"Home1"})
house2=Home.create({name:"Home2"})

p "creating dogs"
Dog.destroy_all
#ActiveRecord::Base.connection.reset_pk_sequence!('dogs')
dog1=Dog.create({name:"clifford",home_id:house1.id})
dog2=Dog.create({name:"Snoopy", home_id:house2.id})
10.times do
    Dog.create!(name: Faker::Name.first_name,home_id:house1.id)
end


Toy.destroy_all
#ActiveRecord::Base.connection.reset_pk_sequence!('toys')
toy1=Toy.create({name:"big bone" ,color:"red",dog_id:dog1.id})
toy2=Toy.create({name:"towel",color:"blue",dog_id:dog1.id})
toy3=Toy.create({name:"dog house",color:"yellow",dog_id:dog2.id})
toy4=Toy.create({name:"blanket",color:"brown",dog_id:dog2.id})
