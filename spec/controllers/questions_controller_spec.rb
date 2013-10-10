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

		it "should have links to view each question"
		it "should include a link to create a new user" do 
			get :index
			save_and_open_page
			expect(page).to have_link("Ask a question")
		end #would be more appropriate as a feature test, not a controller test. intended to move
	end
end