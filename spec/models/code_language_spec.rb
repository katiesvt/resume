require 'spec_helper'

describe CodeLanguage do
  before { @code_language = CodeLanguage.new }
  
  it { should respond_to :id }
  it { should respond_to :name }
end
