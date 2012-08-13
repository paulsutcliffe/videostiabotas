class CategoriesController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    create!(:notice => "Categoría guardada correctamente")
  end
end
