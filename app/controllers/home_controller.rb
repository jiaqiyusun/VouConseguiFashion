class HomeController < ApplicationController
  layout "site"
  def index
  end

  def about
    respond_to do |format|
      format.html { render :about }
    end
  end

  def conatct
    respond_to do |format|
      format.html { render :contact }
    end
  end

  def size
    respond_to do |format|
      format.html { render :size }
    end
  end
end
