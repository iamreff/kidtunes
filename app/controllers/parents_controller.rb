class ParentsController < ApplicationController
  def new
  end

  def show
    @parent = Parent.find(params[:id])
  end
end
