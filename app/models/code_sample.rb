class CodeSample < ActiveRecord::Base
  belongs_to :code_language
  has_and_belongs_to_many :skills
end
