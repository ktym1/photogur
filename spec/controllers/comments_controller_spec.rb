require "spec_helper"

describe CommentsController do

	describe 'GET #show' do

		it "renders the :show template for the comment" do
			picture = create(:picture)
			comment = create(:comment, picture: picture)
				get :show, id: comment, picture_id: picture.id
				expect(response).to render_template :show
		end
	end
end