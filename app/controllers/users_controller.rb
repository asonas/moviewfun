class UsersController < ApplicationController
  # GET /user/neo6120
  # GET /user/neo6120.json
  def show
    @user = User.where(:id => params[:name])
    @movies = Movie.where(:user_id => params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.json {render json: => {
        user: @user,
        movies: @movies
      }}
    end
  end
end