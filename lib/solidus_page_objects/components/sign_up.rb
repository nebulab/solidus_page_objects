module SolidusPageObjects
  module Components
    module SignUp
      def self.included(base)
        base.element :email_input, "input[name='spree_user[email]']"
        base.element :password_input, "input[name='spree_user[password]']"
        base.element :password_confirmation_input, "input[name='spree_user[password_confirmation]']"
        base.element :sign_up_button, 'form#new_spree_user input[type="submit"]'
      end

      def sign_up_with(email, password, password_confirmation = password)
        email_input.set(email)
        password_input.set(password)
        password_confirmation_input.set(password_confirmation)
        sign_up_button.click
      end
    end
  end
end
