class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.integer :points

      t.timestamps null: false
    end
  end
end
