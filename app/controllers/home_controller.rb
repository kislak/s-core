class HomeController < ApplicationController
  helper_method :plans

  before_filter :authenticate_user!, :except => [:index]

  def index
  end

  private

  def plans
    @plans ||= Plan.all
  end
end
