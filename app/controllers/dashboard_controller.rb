class DashboardController < ApplicationController
  layout "dashboard"
  before_action :authenticate_admin!
  def index
  end
end
