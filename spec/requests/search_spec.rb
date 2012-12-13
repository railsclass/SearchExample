require 'spec_helper'

describe "Search on Survey Index" do
	subject {page}

	describe "index page" do
        before { visit surveys_path }
        let(:survey_birnen) {FactoryGirl.create(:survey_birnen)}
        let(:survey_orangen) {FactoryGirl.create(:survey_orangen)}
        it { should have_button('Search')}
        it "should find existent surveys" do
        	fill_in 'search', with: 'Birne'
            click_button "Search" 
            page.should have_text "Aepfel oder Birnen"
            page.should_not have_text "Orange" 
        end
    end
end