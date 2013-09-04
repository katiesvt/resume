require 'spec_helper'

describe StaticPagesController do

  describe "GET 'background'" do
    it "returns http success" do
      get 'background'
      response.should be_success
    end
  end

  describe "GET 'skills'" do
    it "returns http success" do
      get 'skills'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
