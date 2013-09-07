class AddSummaryToCodeSample < ActiveRecord::Migration
  def change
    add_column :code_samples, :tagline, :string
  end
end
