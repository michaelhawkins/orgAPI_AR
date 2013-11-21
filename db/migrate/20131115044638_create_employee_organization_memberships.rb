class CreateEmployeeOrganizationMemberships < ActiveRecord::Migration
  def change
    create_table :employee_organization_memberships do |t|
      t.integer :employee_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
