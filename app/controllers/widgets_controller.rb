class WidgetsController < ApplicationController
  # GET /widgets
  # GET /widgets.json
  def index
    @widgets = Widget.all

    render json: @widgets
  end

  # GET /widgets/1
  # GET /widgets/1.json
  def show
    @widget = Widget.find(params[:id])

    render json: @widget
  end

  # POST /widgets
  # POST /widgets.json
  def create
    @widget = Widget.new(params[:widget])

    if @widget.save
      render json: @widget, status: :created, location: @widget
    else
      render json: @widget.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /widgets/1
  # PATCH/PUT /widgets/1.json
  def update
    @widget = Widget.find(params[:id])

    if @widget.update(params[:widget])
      head :no_content
    else
      render json: @widget.errors, status: :unprocessable_entity
    end
  end

  # DELETE /widgets/1
  # DELETE /widgets/1.json
  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy

    head :no_content
  end
end
