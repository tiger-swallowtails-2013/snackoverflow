require 'spec_helper'

describe Question do
	it "is invalid without a body"
	it "should belong to a user" do 
		@user = User.create(name: "sunny", email: "s@dbc.com")
		@question = @user.questions.create(body: "what is wheat germ?")
		expect(@question.user).to eq(@user)
	end 
end