class ApplicationController < ActionController::Base

    def authorize_admin
        unless current_user.admin?
            redirect_to wines_path, notice: "You must be an admin to access this section"
        end
    end
end
