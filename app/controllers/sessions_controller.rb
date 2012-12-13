class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    provider = auth["provider"]
    uid = auth["uid"]

    unless account = Account.find_by_uid_and_provider(uid, provider)
      # transaction
      user = User.new
      user.name = auth["info"]["nickname"]
      user.profile_image_url = auth["info"]["iamge"]
      user.save!

      account = Account.new
      account.user_id = user.id
      account.provider = provider
      account.uid = uid
      account.access_token = auth["credentials"]["token"]
      account.access_secret = auth["credentials"]["secret"]
      account.save!
    end
    self.current_user = account.user
    redirect_to root_path
  end

  def destroy
    self.sign_out!
    redirect_to root_path
  end
end
