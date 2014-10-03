class Department < ActiveRecord::Base
  has_many :employees, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
