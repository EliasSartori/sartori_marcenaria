class RenameAdresssToAddress < ActiveRecord::Migration
  def change
    rename_table :adressses, :addresses
  end 
end
