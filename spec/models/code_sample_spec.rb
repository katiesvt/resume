require 'spec_helper'

describe CodeSample do
  before { code_sample = CodeSample.new }
  
  it { should respond_to :id }
  it { should respond_to :title }
  it { should respond_to :tagline }
  it { should respond_to :description }
  it { should respond_to :link }
  it { should respond_to :code }
  
  describe "associations" do
    it { should respond_to :skills }
    it { should respond_to :code_language }
  end
  
end
