class CreateCodeLanguages < ActiveRecord::Migration
  def change
    create_table :code_languages do |t|
      t.string :name

      t.timestamps
    end
    add_index :code_languages, :name, unique: true
  end
end
