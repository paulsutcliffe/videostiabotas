class CategoriesController < InheritedResources::Base
  before_filter :authenticate_user!

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
