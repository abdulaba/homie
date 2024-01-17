class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @state = current_user.state if user_signed_in?
  end

  def user_index
    @users = User.where.not(id: current_user.id)
  end

  def user_show
    @user = User.find(params[:id])

  def user_report
    @user = User.find(params[:id])
  end

    @markers = [
      {
        lat: @user.latitude,
        lng: @user.longitude,
        infoWindow: {}
      }
    ]
  end

  def users
    @index = 0
    @users = User.paginate
  end

  def mensaje
   redirect_to users_path, notice: "Report successfully submited"
  end


end
