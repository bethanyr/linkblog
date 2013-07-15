require 'spec_helper'
feature 'create links' do
	scenario "can create link" do
		visit '/'
		click_link 'New link'
		fill_in 'Name', :with => 'text'
		fill_in 'Url', :with => 'http://www.msn.com'
		click_button 'Create Link'
		page.should have_content('Link added')
	end
end