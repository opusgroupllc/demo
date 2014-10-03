class Employee < ActiveRecord::Base
  belongs_to :department

  EMPLOYEE_TYPE = ["direct", "vendor", "contractor", "intern", "temp", "corp-to-corp"]

  validates :firstname, :lastname, presence: true

end
