class Restaurant < ActiveRecord::Base
  validates_presence_of :description

  belongs_to :restaurant
end
