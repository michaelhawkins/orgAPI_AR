class Employee < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :middle_name
end
