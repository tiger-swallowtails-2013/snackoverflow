require 'spec_helper'

describe QuestionsController do 
	render_views 
	context "questions index page" do 
		before(:all) do 
			Question.create({body: "question number 1?"})
			Question.create({body: "am I at the top of the page?"})
		end	

		it "should list questions" do 
			get :index
			expect(response.body).to match("number")
		end
	end
end