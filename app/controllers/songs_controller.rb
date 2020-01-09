class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
    binding.pry
    @song = Song.new(post_params(:name, :artist, :genre))
    @artist.save
    redirect_to song_path(@song)
  end
  
  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:name, :artist, :genre))
    redirect_to song_path(@song)
  end
  
def edit
	  @song = Song.find(params[:id])
	end
  
  private
 

def post_params(*args)
  params.require(:song).permit(*args)
end
end