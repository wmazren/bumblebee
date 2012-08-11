class Organization < ActiveRecord::Base
  has_many :users
  has_many :physicians
  has_many :appointments
  has_many :patients
  
  attr_accessible :name
end
