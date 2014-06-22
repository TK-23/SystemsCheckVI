class Restaurant < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :state, :zipcode

  has_many :categories
end
