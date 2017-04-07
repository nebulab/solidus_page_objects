module SolidusPageObjects
  module Pages
    class Home < SitePrism::Page
      set_url '/'

      section :header, Sections::Header, '#header'
    end
  end
end
