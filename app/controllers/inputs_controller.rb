class InputsController < ApplicationController
  # GET /inputs
  # GET /inputs.json
  def index
    @widget = Widget.where(name: params[:widget_id]).first
    @site = @widget.sites.where(title: params[:site_id]).first
    @inputs = @site.inputs
    
    if params[:widget_id] == 'last-inputs'
    	@inputs.map {|site| site.description = ('a'..'z').to_a.shuffle[0,8].join}
    	@inputs.shuffle
    end

    render json: @inputs
  end
end
