class AddHometownToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hometown, :string
  end
end