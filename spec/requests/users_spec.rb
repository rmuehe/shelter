# require 'rails_helper'

# RSpec.describe "Users", type: :request do
#   describe "GET /users" do
#     it "works! (now write some real specs)" do
#       get users_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

require 'rails_helper'
RSpec.describe "UsersControllers", type: :request do
  describe "get users_path" do
    it "renders the user login page" do
      FactoryBot.create_list(:user, 10)
      get new_user_session_path
      expect(response.status).to eq(200)
    end
  end
  describe "get user_path" do
    it "renders the user login page" do
      user = FactoryBot.create(:user)
      get user_path(user.id)
      expect(response).to redirect_to new_user_session_path
    end
    it "redirects to the new user session path if the user id is invalid" do
      get user_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to new_user_session_path
    end
  end
  describe "get new_user_path" do
    it "renders the new user session path" do
      get new_user_path
      expect(response).to redirect_to new_user_session_path 
    end  
  end
  describe "get edit_user_path" do
    it "renders a new user session" do
      user = FactoryBot.create(:user)
      get edit_user_path(:user)
      expect(response).to redirect_to new_user_session_path 
    end
  end
  describe "post users_path with valid data" do
    it "saves a new entry and redirects to the root path" do
      user_attributes = FactoryBot.attributes_for(:user)
      expect { post users_path, params: {user: user_attributes}
    }.to change(User, :count)
      expect(response).to redirect_to root_path
    end
  end
  describe "post users_path with invalid data" do
    it "does not save a new entry or redirect" do
      user_attributes = FactoryBot.attributes_for(:user)
      user_attributes.delete(:username)
      expect { post users_path, params: {user: user_attributes}
    }.to_not change(User, :count)
      expect(response).to render_template(:new)
    end
  end
  describe "put user_path with valid data" do
    it "updates an entry and redirects to the root path" # do
    #   user = FactoryBot.create(:user)
    #   put user_path(user.id), params: {user: {email: "this@mail.com"}}
    #   user.reload
    #   expect(user.email).to eq("this@mail.com")
    #   expect(response).to redirect_to root_path
    # end
  end
  describe "put user_path with invalid data" do
    it "does not update the user record" do
      user = FactoryBot.create(:user)
      put user_path(user.id), params: {user: {email: "123"}}
      user.reload
      expect(user.email).not_to eq("123")
      expect(response).to redirect_to new_user_session_path
    end  
  end
  describe "delete a user record" do
    it "deletes a user record" do
      FactoryBot.create(:user)
      x = User.count
      User.last.destroy
      expect(User.count).to eq(x-1)
    end  
  end
end
