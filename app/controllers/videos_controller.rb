class VideosController < InheritedResources::Base
  before_filter :authenticate_user!
  #before_filter :find_character
  #before_filter :find_category

  def new
    @video = Video.new
    @characters = Character.all
    @categories = Category.all
  end

  def edit
    @video = Video.find_by_id(params[:id])
    @characters = Character.all
    @categories = Category.all
  end

  def show
    @video = Video.find_by_id(params[:id])
    @category = Category.find_by_id(@video.category_id).name
    @character = Character.find_by_id(@video.character_id).name
  end

  def create
    create!(:notice => "Video guardado correctamente" )
  end

  def update
    update!(:notice => "Video actualizado correctamente")
  end

  def destroy
    destroy!(:notice => "Video eliminado correctamente")
  end
end
