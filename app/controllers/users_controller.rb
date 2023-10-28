class UsersController < ApplicationController
  def index
    @users=User.all
  end
  
  def new
    @user=User.new
  end
  
  def create
    signup_password = BCrypt::Password.create(params[:pass])
    User.create(uid: params[:uid], pass: signup_password)
    redirect_to users_index_path
  end
  
  def destroy
    
  end
end