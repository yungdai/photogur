class PicturesController < ApplicationController

  # this index method inside the controller generates an index page for the website.  The index.html.erb file is how
  # this method will be shown.
  def index
    # this instruction tells the the index will now get the pictures from the picture.rb program that has a Object
    # Picture class inside it.
    @pictures = Picture.all
  end

  # this show method stores the instructions of how the show.html.erb file will be displayed to the browser.
  def show
    # this instruction will find the picture based on the params :id (http://website/pictures/;id <--
    # (the /pictures/:id/ is the params[:id])
    @pictures = Picture.find(params[:id])
    # this next line allows you to take the pull the picture :id from the address bar
    # example: http://website/pictures/:id and makes sure that the :id is an integer so really it's the following
    # when the line has been parsed:.  @pictures = @pictures[:id = 1]
    @picture = @pictures[params[:id].to_i]
  end

  # new 'new' and 'create' methods that are invoked from the routes.rb file.  They will invoke new.html.erb or
  # create.html.rb from the /app/views/pictures/ folder respectively.
  def new
    # calls a Pictures.new method from the Object Pictures class
    @picture = Picture.new
  end

  def create
    # make a new picture with what picture_params returns (which is a method we're calling)
    @picture = Picture.new(picture_params)
    if @picture.save
      # if the save for the picture was successful, go to index.html.erb
      redirect_to pictures_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
