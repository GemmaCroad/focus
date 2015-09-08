class AddHometownToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hometown, :text
  end
end
