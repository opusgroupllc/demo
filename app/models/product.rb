class Product < ActiveRecord::Base
  belongs_to :productcategories

  validates :name, presence: true
end
