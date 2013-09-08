require 'spec_helper'

describe "StaticPages" do

  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_content heading }
    it { should have_title page_title }
    it { should have_selector 'nav a', text: nav_title }
    it { should have_selector 'nav li.active a', text: nav_title }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Katelyn Sievert' }
    let(:page_title) { 'Katelyn Sievert' }
    let(:nav_title)  { 'katiesvt' }
    
    it { should have_content heading }
    it { should have_title page_title }
    it { should have_selector 'nav a', text: nav_title }
  end
  
  describe "Background page" do
    before { visit static_pages_background_path }
    let(:heading)    { 'Background' }
    let(:page_title) { 'Background' }
    let(:nav_title)  { 'Background' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "Contact page" do
    before { visit static_pages_contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }
    let(:nav_title)  { 'Contact' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "About this site page" do
    before { visit static_pages_site_path }
    let(:heading)    { 'About This Site' }
    let(:page_title) { 'About This Site' }
    let(:nav_title)  { 'About this site' }
    
    it_should_behave_like "all static pages"
  end
  
end
