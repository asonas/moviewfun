class UsersController < ApplicationController
  # GET /user/neo6120
  # GET /user/neo6120.json
  def show
    @user = User.where(:name => params[:id]).first()
    @movies = Movie.where(:user_id => @user.id)

    respond_to do |format|
      format.html #show.html.erb
      format.json {render :json => {
        user: @user,
        movies: @movies
      }}
    end
  end
end