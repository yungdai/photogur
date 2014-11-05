class PicturesController < ApplicationController

  # this index method inside the controller generates an index page for the website
  def index

    # inside the @pictures array are three pictures with the keys :title, :artist, :url
    @pictures = [
        {
            :title  => "The old church on the coast of White sea",
            :artist => "Sergey Ershov",
            :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
        },
        {
            :title  => "Sea Power",
            :artist => "Stephen Scullion",
            :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
        },
        {
            :title  => "Into the Poppies",
            :artist => "John Wilhelm",
            :url    => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
        }
    ]
  end
end
