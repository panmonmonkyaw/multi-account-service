class CreateNoapplications < ActiveRecord::Migration
  def change
    create_table :noapplications do |t|
      t.string :no_of_application
      t.string :path

      t.timestamps
    end
  end
end
