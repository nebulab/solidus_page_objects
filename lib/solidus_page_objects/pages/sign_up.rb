module SolidusPageObjects
  module Pages
    class SignUp < SitePrism::Page
      include SolidusPageObjects::Components::SignUp

      set_url "/signup"
    end
  end
end
