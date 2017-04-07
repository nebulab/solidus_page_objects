module SolidusPageObjects
  module Components
    module Header
      def self.included(base)
        base.section :search, Sections::Search, '#search-bar'
        base.section :main_navigation, Sections::MainNavigation, '#main-nav-bar'
      end
    end
  end
end
