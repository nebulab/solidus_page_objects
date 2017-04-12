module SolidusPageObjects
  module Components
    module ProductImages
      def self.included(base)
        base.element :main_image,  '#main-image'
        base.element :gallery,     'ul#product-thumbnails'
        base.elements :thumbnails, '#thumbnails .tmb-all'
      end
    end
  end
end
