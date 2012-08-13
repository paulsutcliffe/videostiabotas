class Video < ActiveRecord::Base
  belongs_to :category
  belongs_to :character
  has_attached_file :movie
end
