require 'spec_helper'

describe "Search on Survey Index" do
	subject {page}

	describe "index page" do
        before { visit surveys_path }
        it { should have_button('Search')}
	end

end