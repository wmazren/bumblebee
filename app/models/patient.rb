class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, :through => :appointments
  belongs_to :organization
  
  attr_accessible :first_name, :last_name, :middle_name, :ic_no, :dob,
                  :address1, :address2, :postcode, :city, :state, :blood_type,
                  :notes,
                  :organization_id

  def self.search(search)
    if search
      where('first_name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
