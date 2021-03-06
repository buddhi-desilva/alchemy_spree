module Spree
  module AuthenticationHelpers
    def self.included(receiver)
      receiver.send :helper_method, :spree_login_path
      receiver.send :helper_method, :spree_signup_path
      receiver.send :helper_method, :spree_logout_path
      receiver.send :helper_method, :spree_current_user
    end

    def spree_current_user
      current_alchemy_user
    end

    def spree_login_path
      alchemy.login_path
    end

    def spree_signup_path
      alchemy.signup_path
    end

    def spree_logout_path
      alchemy.logout_path
    end
  end
end

ApplicationController.send :include, Spree::AuthenticationHelpers
