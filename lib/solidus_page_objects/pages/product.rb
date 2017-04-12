module SolidusPageObjects
  module Pages
    class Product < SitePrism::Page
      set_url "/products{/slug}"

      section :header, Sections::Header, '#header'
      section :info, Sections::Product::Info, '#product-description'
      section :images, Sections::Product::Images, '#product-images'
      section :cart, Sections::Product::Cart, '#cart-form'

      sections :similar_items, Sections::Product::SimilarItem, '#similar_items_by_taxon li'
      sections :properties, Sections::Product::Property, 'table#product-properties tr'
    end
  end
end
