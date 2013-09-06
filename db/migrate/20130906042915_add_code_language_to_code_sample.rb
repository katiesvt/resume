class AddCodeLanguageToCodeSample < ActiveRecord::Migration
  def change
    add_reference :code_samples, :code_language, index: true
  end
end
