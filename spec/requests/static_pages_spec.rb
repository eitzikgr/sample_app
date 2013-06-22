require 'spec_helper'

describe "Static pages" do
subject { page }
	let (:base_title){ "Ruby on Rails Tutorial Sample App |"}
  describe "Home page" do
	before {visit root_path}
	 it { should have_selector('h1',    text: 'Sample App itzik') }
    it "should have the content 'Sample App'" do
      page.should have_content('Sample App')
    end
	
	it "should have the right title" do
  page.should have_selector('title',
                    :text => "#{base_title} Home")
end

  end

  describe "Help page" do
	before {visit help_path}
    it { page.should have_content('Help')}
	
	it {
		page.should have_selector('title',
		:text => "#{base_title} help") }
  
  end
  
  describe "About page" do
	before {visit about_path}
    it {page.should have_content('About Us')}
	it {page.should have_selector('title',
			:text => "#{base_title} About Us")}
end


describe "Contact page" do
	before {visit contact_path}
    it "should have the h1 'Contact'}" do
      
      page.should have_selector('h1', text: 'Contact')
    end
	 it "should have the title 'Contact'" do
      
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end
end

end