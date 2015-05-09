class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
