require 'spec_helper'

describe "code_samples/show" do
  before(:each) do
    @code_sample = assign(:code_sample, stub_model(CodeSample,
      :title => "Title",
      :description => "MyText",
      :link => "Link",
      :code => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Link/)
    rendered.should match(/MyText/)
  end
end
