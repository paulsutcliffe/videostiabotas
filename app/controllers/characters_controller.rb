class CharactersController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    create!(:notice => "Personaje guardado correctamente")
  end
end
