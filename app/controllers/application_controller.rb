class ApplicationController < ActionController::Base
    devise_group :admin, contains: [:user, :provider]
end
