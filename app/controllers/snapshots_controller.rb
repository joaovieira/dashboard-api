class SnapshotsController < ApplicationController
  
  def send_mail
    email = params[:email]
    image = Base64.decode64(params[:image])
    name = params[:name]
    
    File.open(name, 'wb') { |f| f.write(image) }
    
    #file = StringIO.new(image)
    #file.class.class_eval { attr_accessor :original_filename, :content_type }
    #file.original_filename = name
    #file.content_type = "image/png"
    
    Emailer.send_snapshot(image, name, email).deliver

    render json: {status: "ok"}
  end
end
