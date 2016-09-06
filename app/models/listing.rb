class Listing < ActiveRecord::Base
  belongs_to :category

  validates :name, :address, :phone, presence: true
end
