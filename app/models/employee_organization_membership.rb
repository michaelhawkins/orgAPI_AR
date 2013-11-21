class EmployeeOrganizationMembership < ActiveRecord::Base
  attr_accessible :employee_id, :organization_id

  belongs_to :employee
  belongs_to :organization

  validates :employee_id, presence :true
  validates :organization_id, presence :true

end
