class CharactersController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    create!(:notice => "Personaje guardado correctamente")
  end

  def update
    update!(:notice => "Personaje actualizado correctamente")
  end

  def destroy
    destroy!(:notice => "Personaje eliminado correctamente")
  end
end
