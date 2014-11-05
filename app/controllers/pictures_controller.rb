class PicturesController < ApplicationController

  # this index method inside the controller generates an index page for the website.  The index.html.erb file is how
  # this method will be shown.
  def index
    # this instruction tells the the index will now get the pictures from the picture.rb program that has a Object
    # Pictures class inside it.
    @pictures = Pictures.all
  end

  # this show method stores the instructions of how the show.html.erb file will be displayed to the browser.
  def show
    # this instruction will find the picture based on the params :id (http://website/pictures/;id <--
    # (the /pictures/:id/ is the params[:id])
    @pictures = Pictures.find(params[:id])
    # this next line allows you to take the pull the picture :id from the address bar
    # example: http://website/pictures/:id and makes sure that the :id is an integer so really it's the following
    # when the line has been parsed:.  @pictures = @pictures[:id = 1]
    @picture = @pictures[params[:id].to_i]
  end

  # new 'new' and 'create' methods that are invoked from the routes.rb file.  They will invoke new.html.erb or
  # create.html.rb from the /app/views/pictures/ folder respectively.
  def new

  end

  def create
    # When we click on Submit we want the new page to have the Title, Artist, and URL we put in the form
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end
end
