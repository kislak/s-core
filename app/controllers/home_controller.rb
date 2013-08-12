class HomeController < ApplicationController
  helper_method :plans

  def index
  end

  private

  def plans
    @plans ||= Plan.all
  end
end
