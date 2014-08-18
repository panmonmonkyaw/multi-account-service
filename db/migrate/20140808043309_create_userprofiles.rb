class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.integer :userid
      t.string :first_name
      t.string :last_name
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.integer :phone_number
      t.string :email
      t.string :no_of_application
      t.string :status

      t.timestamps
    end
  end
end
