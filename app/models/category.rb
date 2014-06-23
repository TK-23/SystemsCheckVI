class Category < ActiveRecord::Base
  validates_presence_of :description

  belongs_to :restaurant
end
