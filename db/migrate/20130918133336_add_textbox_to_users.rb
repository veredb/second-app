class AddTextboxToUsers < ActiveRecord::Migration
  def change
    add_column :users, :textbox, :string
  end
end
