class CreateCodeSamples < ActiveRecord::Migration
  def change
    create_table :code_samples do |t|
      t.string :title
      t.text :description
      t.string :link
      t.text :code

      t.timestamps
    end
  end
end
