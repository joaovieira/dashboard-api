class SnapshotsController < ApplicationController
  
  def send_mail
    email = params[:email]
    image = Base64.decode64(params[:image])
    name = params[:name]
    
    Emailer.send_snapshot(image, name, email).deliver

    render json: {status: "ok"}
  end
end
