# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, presence: true, length: { maximum: 100 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  	uniqueness: { case_sensitive: false }

  has_many :employee_organization_memberships, foreign_key: "employee_id", dependent: :destroy

  has_many :employees, through: :employee_organization_memberships

end
