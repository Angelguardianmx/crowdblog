module CrowdblogCore
  class ApplicationController < ActionController::Base
    layout 'admin'

    before_filter :authenticate!

    def authenticate!
      redirect_to user_omniauth_authorize_path :google_apps unless current_user
    end
  end
end
