require 'spec_helper'

describe PagesController do
  render_views


  before(:each) do
     @general_title = "SecondApp"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'features'" do
    it "should be successful" do
      get 'features'
      response.should be_success
    end
  end

  describe "GET 'advantages'" do
    it "should be successful" do
      get 'advantages'
      response.should be_success
    end
  end

  describe "GET 'news'" do
    it "should be successful" do
      get 'news'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'try'" do
    it "should be successful" do
      get 'try'
      response.should be_success
    end
  end


  


  it "should have the right title" do
     get 'try'
     response.should have_selector("title",
                     :content => @general_title + " | Try")
  end

end
