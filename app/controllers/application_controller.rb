# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def bodyid
    @bodyid = params[:controller].parameterize
  end
  def bodyclass
    @bodyclass = params[:action].parameterize

    if params[:controller] == 'videos'
      @front = 'front'
    else
      @front = 'not-front'
    end

    if current_user
      @admin = 'logged-in'
    else
      @admin = 'not-logged-in'
    end

    @bodyclass = @bodyclass + ' ' + @front + ' ' + @admin
  end

  helper_method :bodyid
  helper_method :bodyclass
end
