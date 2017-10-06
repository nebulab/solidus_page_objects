module SolidusPageObjects
  module Pages
    class SignIn < SitePrism::Page
      include SolidusPageObjects::Components::SignIn

      set_url "/login"
    end
  end
end
