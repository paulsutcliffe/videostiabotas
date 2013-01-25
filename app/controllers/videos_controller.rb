#encoding: utf-8
class VideosController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [ :index ]
  respond_to :html, :xml

  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 5)
    @categories = Category.all
    @characters = Character.all
  end
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
    @category = Category.find_by_id(@video.category_id.to_i).name
    @character = Character.find_by_id(@video.character_id.to_i).name
    @video_link = 'https://s3.amazonaws.com/samsung-pro/movies/' + @video.id.to_s + '/' + @video.movie_file_name
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
