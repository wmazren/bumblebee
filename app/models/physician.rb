class Physician < User
  has_many :appointments
  has_many :patients, :through => :appointments
  belongs_to :organization
end

