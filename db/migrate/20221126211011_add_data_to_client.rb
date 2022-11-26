class AddDataToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :adress, :string
    add_column :clients, :phone, :string
    add_column :clients, :city, :string
    add_column :clients, :description, :string
    add_column :clients, :bank, :string
    add_column :clients, :bank_acount, :integer
  end
end
