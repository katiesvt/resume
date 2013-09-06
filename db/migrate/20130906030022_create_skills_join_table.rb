class CreateSkillsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :skills, :code_samples do |t|
      # t.index [:skill_id, :code_sample_id]
      t.index [:code_sample_id, :skill_id], unique: true
    end
  end
end
