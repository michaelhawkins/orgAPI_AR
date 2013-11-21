class AddIndexesToEmpOrgMemberships < ActiveRecord::Migration
  def change
  	add_index :employee_organization_memberships, :employee_id
    add_index :employee_organization_memberships, :organization_id
    add_index :employee_organization_memberships, [:employee_id, :organization_id], unique: true,
     :name => 'index_emp_org_memberships_on_empid_orgid'	
  end
end
