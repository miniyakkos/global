class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :rank
      t.integer :points, default: 0

      t.timestamps null: false
    end
  end
end
