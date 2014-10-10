class Productcategory < ActiveRecord::Base
  has_many :products, dependent: :destroy

  validates :category, presence: true
end
