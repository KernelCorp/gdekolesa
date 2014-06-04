class PagesController < ApplicationController
  def show
    render params[:page] || 'root'
  end
end
