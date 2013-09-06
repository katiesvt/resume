class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :title
      t.integer :rating

      t.timestamps
    end
  end
end
