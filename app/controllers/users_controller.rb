class UsersController < ApplicationController
	
	def index
    	@users = User.all

    	respond_to do |format|
      	format.html # index.html.erb
      	format.json { render json: @user }
    	end
  	end

	def show
		@user = User.find(params[:id])
    @user_history = UserHistory.where(:user_id => @user.id)
  

		respond_to do |format|
           format.html # show.html.erb
           format.json { render json: @user }
    	end
	end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    successfully_updated = if @user.email != params[:user][:email] ||
      !params[:user][:password].blank? 
      @user.update_with_password(params[:user])
    else
      # remove the virtual current_password attribute update_without_password
      # doesn't know how to ignore it
      params[:user].delete(:current_password)
      @user.update_without_password(params[:user])
    end

    if successfully_updated
      
      # Sign in the user bypassing validation in case his password changed
     
      redirect_to users_url
    else
      render "edit"
    end
    
  end
end
