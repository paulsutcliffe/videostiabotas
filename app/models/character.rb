class Character < ActiveRecord::Base
  has_many :videos

  has_attached_file :image, :styles => { :medium => "500x500#" }
end
