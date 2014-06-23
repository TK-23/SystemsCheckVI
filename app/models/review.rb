class Review < ActiveRecord::Base
  validates_presence_of :body, :rating

  belongs_to :restaurant

end
