require 'spec_helper'

describe "surveys/edit" do
  before(:each) do
    @survey = assign(:survey, stub_model(Survey,
      :title => "MyString",
      :course_id => 1,
      :open => false,
      :result => "MyString"
    ))
  end

  it "renders the edit survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surveys_path(@survey), :method => "post" do
      assert_select "input#survey_title", :name => "survey[title]"
      assert_select "input#survey_course_id", :name => "survey[course_id]"
      assert_select "input#survey_open", :name => "survey[open]"
      assert_select "input#survey_result", :name => "survey[result]"
    end
  end
end
