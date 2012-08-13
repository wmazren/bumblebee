class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, :null => false, :default => ""
      t.string :phone
      t.string :fax
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end

    add_index :organizations, :name,      :unique => true
  end
end
