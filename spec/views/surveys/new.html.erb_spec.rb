require 'spec_helper'

describe "surveys/new" do
  before(:each) do
    assign(:survey, stub_model(Survey,
      :title => "MyString",
      :course_id => 1,
      :open => false,
      :result => "MyString"
    ).as_new_record)
  end

  it "renders new survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surveys_path, :method => "post" do
      assert_select "input#survey_title", :name => "survey[title]"
      assert_select "input#survey_course_id", :name => "survey[course_id]"
      assert_select "input#survey_open", :name => "survey[open]"
      assert_select "input#survey_result", :name => "survey[result]"
    end
  end
end
