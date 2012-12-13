require 'spec_helper'

describe "Search on Survey Index" do
	subject {page}

	describe "index page" do
        before { visit surveys_path }
        it { should have_button('Search')}
        describe "search" do
        	before do
        		FactoryGirl.create(:survey_birnen)
        		FactoryGirl.create(:survey_orangen)
        	end
            it "should find existent surveys" do
            	fill_in 'search', with: 'Birne'
                click_button "Search" 
                #save_and_open_page
                page.should have_text "Aepfel oder Birnen"
                page.should_not have_text "Orange" 
            end
        end
    end
end