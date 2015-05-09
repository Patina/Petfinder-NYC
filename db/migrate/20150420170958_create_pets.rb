class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :cat
      t.string :dog

      t.timestamps null: false
    end
  end
end
