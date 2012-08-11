class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :dob
      t.string :ic_no
      t.string :address1
      t.string :address2
      t.string :postcode
      t.string :city
      t.string :state
      t.string :country
      t.string :phone_mobile
      t.string :phone_home
      t.string :phone_office
      t.string :email
      t.string :blood_type
      t.text :notes
      t.integer :organization_id

      t.timestamps
    end

    add_index :patients, :organization_id
  end
end
