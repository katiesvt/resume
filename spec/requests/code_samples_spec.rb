require 'spec_helper'

describe "CodeSamples" do
  
  subject { page } 
  
  describe "index" do
    before { visit code_samples_path }
    
    it { should have_content 'Code' }
    it { should have_title 'Code' }
  end
  
  describe "GET /code_samples" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get code_samples_path
      response.status.should be(200)
    end
  end
end
