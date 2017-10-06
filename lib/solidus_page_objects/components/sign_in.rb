module SolidusPageObjects
  module Components
    module SignIn
      def self.included(base)
        base.element :email_input, "input[name='spree_user[email]']"
        base.element :password_input, "input[name='spree_user[password]']"
        base.element :remember_me_checkbox, "input[name='spree_user[remember_me]']"
        base.element :sign_in_button, 'form#new_spree_user input[type="submit"]'

        base.element :create_new_account_link, 'a[href$="/signup"]'
        base.element :password_recover_link, 'a[href$="/password/recover"]'
      end

      def sign_in_with(email, password, remember_me: false)
        email_input.set(email)
        password_input.set(password)
        remember_me_checkbox.set(remember_me)
        sign_in_button.click
      end
    end
  end
end
