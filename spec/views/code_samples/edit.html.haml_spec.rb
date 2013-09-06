require 'spec_helper'

describe "code_samples/edit" do
  before(:each) do
    @code_sample = assign(:code_sample, stub_model(CodeSample,
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :code => "MyText"
    ))
  end

  it "renders the edit code_sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", code_sample_path(@code_sample), "post" do
      assert_select "input#code_sample_title[name=?]", "code_sample[title]"
      assert_select "textarea#code_sample_description[name=?]", "code_sample[description]"
      assert_select "input#code_sample_link[name=?]", "code_sample[link]"
      assert_select "textarea#code_sample_code[name=?]", "code_sample[code]"
    end
  end
end
