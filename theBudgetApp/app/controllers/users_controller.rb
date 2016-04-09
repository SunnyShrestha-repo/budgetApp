class UsersController < ApplicationController
    def user_params
        params.require(:user).permit(:fname, :lname, :email, :username, :password)
    end
    
    def new
    end
    
    def create
        @user = User.create!(user_params)
        flash[:notice] = "#{@user.username} was successfully created."
        redirect_to users_path
    end
end
