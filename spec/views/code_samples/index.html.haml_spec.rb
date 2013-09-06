require 'spec_helper'

describe "code_samples/index" do
  before(:each) do
    assign(:code_samples, [
      stub_model(CodeSample,
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :code => "MyText"
      ),
      stub_model(CodeSample,
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :code => "MyText"
      )
    ])
  end

  it "renders a list of code_samples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
