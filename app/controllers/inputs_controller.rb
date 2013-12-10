class InputsController < ApplicationController
  # GET /inputs
  # GET /inputs.json
  def index
    @widget = Widget.where(name: params[:widget_id]).first
    @site = @widget.sites.where(title: params[:site_id]).first
    @sites = @site.inputs
    
	if :widget_id == 'last-inputs'
	  @sites.map {|site| site.description = ('a'..'z').to_a.shuffle[0,8].join}
	end

    render json: @sites.shuffle
  end
end
