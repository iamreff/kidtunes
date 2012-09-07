class KidsController < ApplicationController
  def new 
  end

  def show
    @kid = Kid.find(params[:id])
  end

end
