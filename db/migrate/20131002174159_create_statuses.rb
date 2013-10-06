class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :email
      t.string :user_status

      t.timestamps
    end
  end
end
