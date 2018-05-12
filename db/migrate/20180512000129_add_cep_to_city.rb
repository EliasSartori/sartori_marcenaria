class AddCepToCity < ActiveRecord::Migration
  def change
    add_column :cities, :cep, :integer
  end
end
