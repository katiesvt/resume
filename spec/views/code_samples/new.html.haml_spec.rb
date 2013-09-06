require 'spec_helper'

describe "code_samples/new" do
  before(:each) do
    assign(:code_sample, stub_model(CodeSample,
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :code => "MyText"
    ).as_new_record)
  end

  it "renders new code_sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", code_samples_path, "post" do
      assert_select "input#code_sample_title[name=?]", "code_sample[title]"
      assert_select "textarea#code_sample_description[name=?]", "code_sample[description]"
      assert_select "input#code_sample_link[name=?]", "code_sample[link]"
      assert_select "textarea#code_sample_code[name=?]", "code_sample[code]"
    end
  end
end
