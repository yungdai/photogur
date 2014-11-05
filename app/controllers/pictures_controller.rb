class PicturesController < ApplicationController

  # this index method inside the controller generates an index page for the website.  The index.html.erb file is how
  # this method will be shown.
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

  # this show method stores the instructions of how the show.html.erb file will be displayed to the browser.
  def show
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
    # this next line allows you to take the pull the picture :id from the address bar
    # example: http://website/pictures/:id and makes sure that the :id is an integer so really it's the following
    # when the line has been parsed:.  @pictures = @pictures[:id = 1]
    @picture = @pictures[params[:id].to_i]
  end
end
