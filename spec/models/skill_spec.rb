require 'spec_helper'

describe Skill do
  before { @skill = Skill.new }
  
  it { should respond_to :id }
  it { should respond_to :title }
  it { should respond_to :rating }
  it { should respond_to :code_samples }
end
