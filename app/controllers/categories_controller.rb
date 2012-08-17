class CategoriesController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :html, :xml

  def index
    @categories = Category.paginate(:page => params[:page], :per_page => 5 )
  end
  def create
    create!(:notice => "Categoría guardada correctamente")
  end

  def update
    update!(:notice => "Categoría actualizada correctamente")
  end

  def destroy
    destroy!(:notice => "Categoría eliminada correctamente")
  end
end
