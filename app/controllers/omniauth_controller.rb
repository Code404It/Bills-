class OmniauthController < ApplicationController
    def google_oauth2
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if 
            @user.persisted?
            sign_in_and_redirect @user
        else
            flash[:error] = 'There was a problem signing you in through Google. Please register or sign in later'
            redirect_to new_user_registration_url
        end
    end

    def failure
      flash[:error] = 'Maybe we forgot to pay our bills. Please go half with us or try signing in later'
      redirect_to new_user_registration_url
    end
end
