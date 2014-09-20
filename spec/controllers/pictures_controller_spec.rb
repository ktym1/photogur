require "spec_helper"

describe PicturesController do
	
	describe "GET #index" do
		# context "with params[:artist]" do
		# 	it "populates an array of pictures"
		# 	get :index, artist: "john"
		# 	expect(assigns(:pictures)).to
			
		it "renders the :index template" do
			get :index
			expect(response).to render_template :index
		end
	end


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

describe "GET #new" do
	it "assigns a new Picture to @picture"
	it "renders the :new template"
	end

describe "POST #create" do
	context "with valid attributes"do
		it "saves the new picture in the database"
		it "redirects to the home page"
	end

	context "with invalid attributes" do
		it "does not save the new picture in the database"
		it "re-renders the :new template"
		end
	end

end
