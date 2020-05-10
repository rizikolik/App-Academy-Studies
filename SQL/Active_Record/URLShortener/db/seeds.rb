# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  u1 = User.create!(email: 'cwhite@gmail.com')
  u2 = User.create!(email: 'bwarford@gmail.com')
 
  ShortenedUrl.destroy_all
    su1 = ShortenedUrl.create_shortened_url!(
      u1, 'www.google.com'
    )
  
    su2 = ShortenedUrl.create_shortened_url!(
      u2, 'www.google2.com'
    )
  
    su3 = ShortenedUrl.create_shortened_url!(
      u2, 'www.imdb.com'
    )
  Visit.destroy_all
    Visit.record_visit!(u1, su1)
    Visit.record_visit!(u1, su1)
    Visit.record_visit!(u1, su2)
  
    Visit.record_visit!(u2, su2)
    Visit.record_visit!(u2, su2)
    Visit.record_visit!(u2, su1)
    Visit.record_visit!(u2, su3)
 
  end