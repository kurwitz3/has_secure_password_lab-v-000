class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(params[:user][:id])
        if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        end
    end
end
