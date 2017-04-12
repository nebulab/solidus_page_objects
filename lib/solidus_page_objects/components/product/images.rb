module SolidusPageObjects
  module Components
    module Product
      module Images
        def self.included(base)
          base.element :main_image,  '#main-image'
          base.element :gallery,     'ul#product-thumbnails'
          base.elements :thumbnails, '#thumbnails .tmb-all'
        end

        def select_image(index = 0)
          thumbnails[index].click
        end
      end
    end
  end
end
