require 'spec_helper'

describe SessionsController do

  context "logging in" do
    it "is a real page" do
      get :new
    end

    context "assuming we put a form on that page" do

      it 'we can then post to create and log in' do
        post :create, legit_params
      end
    end
  end

end