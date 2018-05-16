class CreateAdressses < ActiveRecord::Migration
  def change
    create_table :adressses do |t|
      t.references :user, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.string :street
      t.string :neighborhood
      t.integer :number

      t.timestamps null: false
    end
  end
end
