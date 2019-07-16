class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in"
            redirect_to user
        else
            flash.now[:danger] = "There was a problem with your login information."
            render "new"
        end
    end

    def destroy
        session[:user_id]
        session[:user_id] = nil
        flash[:success] = "You have logged out"
        redirect_to root_path
    end
end
