class WelcomeController < ApplicationController
  skip_before_action :check_auth

  def start
    if params.has_key?('login')
      u = User.where(login: params['login']).first
      if u.check_password(params['plain_password'])
        session['user'] = u.login
      end            
    end
  end
end
