class UsersController < ApplicationController
	#before_action :authenticate_user!
	
	def index
		#@users = User.all
		@users = User.where.not(id: current_user).order("RANDOM()").limit(3)
	end

	def show
    	@user = User.find_by_fullname(params[:id])
  end
  def interests
    	@user = User.find_by_fullname(params[:user_id])
  end
  def resume
    	@user = User.find_by_fullname(params[:user_id])
  end
  def search
    if params[:search].present?
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end
end
