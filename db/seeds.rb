# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Earlier we made three pictures in the controller. This is absolutely against good practices—the data should always
# be going into the models. Let's fix this right now by editing the a file called seeds.rb:

Picture.create!(
    :title  => "The old church on the coast of White sea",
    :artist => "Sergey Ershov",
    :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
)

Picture.create!(
    :title  => "Sea Power",
    :artist => "Stephen Scullion",
    :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
)

Picture.create!(
    :title  => "Into the Poppies",
    :artist => "John Wilhelm",
    :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
)

