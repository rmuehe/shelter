class UsersController < ApplicationController
  # def _form
  # end
  # def request
  #   # @user = User.find(params[:user_id])
  #   @user = User.find(params[:id])
  #   # @request = @user.requests.create(request_params)
  #   @request = @user.requests.create
  #   redirect_to user_path(@user)
  # end

  # def request1
  #    @request1 = User.find(params[:id])  
  #   Request.create(user_id: @request1.id)
  #    redirect_to user_path(@user)
  # end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def user_params
      params.require(:user).permit(:username, :role)
    end

end
