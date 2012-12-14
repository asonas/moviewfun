class UsersController < ApplicationController
	# GET /user/1
	# GET /user/1.json
	def show
		@user = User.find(params[:id])

		respond_to do |format|
			format.html #show.html.erb
			format.json {render json: @user}
		end
	end
end