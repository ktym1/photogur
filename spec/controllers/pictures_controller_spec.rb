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


	describe "POST #create", :focus => true do
		before :each do
			@pictures = [
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
					post :create, picture: attributes_for(:invalid_picture)
					}.to_not change(Picture, :count)
			end

			it "re-renders the :new template" do
				post :create, picture: attributes_for(:invalid_picture)
					expect(response).to render_template :new	
			end
		end
	end

	describe 'PATCH #update' do
		before :each do
			@picture = create(:picture, artist: "John", title: "Display Pic", user_id: 1)
		end

		context "valid attributes" do
			it "locates the requested @picture" do
				patch :update, id: @picture, picture: attributes_for(:picture)
				expect(assigns(:picture)).to eq(@picture)
			end
		

			it "changes @picture's attributes" do
				patch :update, id: @picture,
					picture: attributes_for(:picture, artist: "kerry", title: "mui", user_id: 1)
				@picture.reload 
					expect(@picture.artist).to eq("kerry") 
					expect(@picture.title).to eq("mui")
					expect(@picture.user_id).to eq(1)
			end
		
			it "redirects to the updated picture" do
				patch :update, id: @picture, picture: attributes_for(:picture)
				expect(response).to redirect_to @picture
			end
		end

		context "with invalid attributes" do
			it "does not change the picture's attributes" do
				patch :update, id: @picture, picture: attributes_for(:picture, artist: "kerry", title: "mui", user_id: nil)
				@picture.reload
					expect(@picture.artist).to_not eq("kerry")
					expect(@picture.title).to_not eq("mui")
					expect(@picture.user_id).to eq(1)
			end

			it "re-renders the edit template" do
				patch :update, id: @picture, picture: attributes_for(:invalid_picture)
					expect(response).to render_template :edit
			end
		end	
	end

	describe 'DELETE #destroy' do
		before :each do
			@picture = create(:picture)
		end
	
		it "deletes the picture" do
			expect{ delete :destroy, id: @picture
				}.to change(Picture, :count).by(-1)
		end
	
		it "redirects to picturess#index" do
			delete :destroy, id: @picture
			expect(response).to redirect_to pictures_url
		end
	end
end
