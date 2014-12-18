class DrawingsController < ApplicationController
  before_filter :get_drawing

  def show
  end

  def update
    @drawing.update!(drawing_params)
    redirect_to :back
  end

  def sketchily
  end

  def sketchily_tag
  end

  protected

  def drawing_params
    params.require(:drawing).permit(:svg)
  end

  def get_drawing
    @drawing = Drawing.find(params[:id])
  end
end
