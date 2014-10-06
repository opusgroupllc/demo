class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from User::NotAuthorized, with: :user_not_authorized
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def record_not_found
      render plain: "404 Not Found", status: 404
    end

    def user_not_authorized
      flash[:error] = "You dont' have access to this section."
      redirect_to :back
    end
end
