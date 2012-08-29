class Video < ActiveRecord::Base
  belongs_to :category
  belongs_to :character
  has_attached_file :movie,
                    :storage => :s3,
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :path => "movies/:id/:filename"
end
