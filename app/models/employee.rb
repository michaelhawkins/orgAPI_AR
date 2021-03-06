# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  email       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Employee < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :middle_name

  validates :first_name, presence: true, length: { maximum: 50 }

  validates :last_name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_many :employee_organization_memberships, foreign_key: "organization_id", dependent: :destroy

  has_many :organizations, through: :employee_organization_memberships

   

end
