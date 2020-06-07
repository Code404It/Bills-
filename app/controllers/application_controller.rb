class ApplicationController < ActionController::Base

    def home
        if current_user
            @unpaid = current_user.bills.unpaid
        end
    end
end

