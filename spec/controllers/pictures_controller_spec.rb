require "spec_helper"

describe 'GET #show' do
	it "assigns the requested picture to @picture" do
			picture = create(:picture)
			get :show, id: picture
			expect(assigns(:picture)).to eq picture
		end

	it "renders the :show template" do
		picture = create(:picture)
		get :show, id: picture
		expect(response).to render_template :show
	end
end

# describe 'GET #index' do
# 	context "with params[:artist]" do
# 		it "populates the artist attribute"
# 	end