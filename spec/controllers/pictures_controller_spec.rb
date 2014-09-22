require "spec_helper"

describe PicturesController do
	
	describe "GET #index" do

		it "assigns @pictures" do
			picture = create(:picture)
			get :index
			expect(assigns(:pictures)).to eq([picture])
		end
		
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
		it "assigns a new Picture to @picture" do
			get :new
			expect(assigns(:picture)).to be_a_new(Picture)
		end

		it "renders the :new template" do
			get :new
			expect(response).to render_template :new
		end
	end

	describe 'GET #edit' do
		it "assigns the requested picture to @picture" do
			picture = create(:picture)
			get :edit, id: picture
			expect(assigns(:picture)).to eq picture
	end

		it "renders the :edit template" do
			picture = create(:picture)
			get :edit, id: picture
			expect(response).to render_template :edit
		end
	end	


	describe "POST #create" do
		before :each do
			@pictures = [
				attributes_for(:picture),
				attributes_for(:picture),
				attributes_for(:picture)
			]
	end

		context "with valid attributes" do
			it "saves the new picture in the database" do
				expect{
					post :create, picture: attributes_for(:picture, 
						pictures_attributes: @pictures)
					}.to change(Picture, :count).by(1)
				
			end

			it "redirects to pictures#show" do
				post :create, picture: attributes_for(:picture,
					pictures_attributes: @pictures)
				expect(response).to redirect_to picture_path(assigns[:picture])
			end
		
		end

		context "with invalid attributes" do
			it "does not save the new picture in the database" do
				expect{
					post :create, picture: attributes_for(:invalid_picture)}.to_not change(Picture, :count)
			end

			it "re-renders the :new template" do
				post :create, picture: attributes_for(:invalid_picture)
					expect(response).to render_template :new	
			end
		end
	end
end
