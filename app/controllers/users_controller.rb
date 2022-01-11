class UsersController < ApplicationController
    before_action :authorize
    def show
        user = User.find_by(id: session[:user_id])
        render json: user
      end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      end
end
