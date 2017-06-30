module SolidusPageObjects
  module Pages
    class Order < SitePrism::Page
      set_url '/orders{/number}'

      section :header, Sections::Header, '#header'

      section :details, Sections::Order::Details, '#order_summary .steps-data'
      section :line_items, Sections::Order::LineItems, '#line-items'

      section :control, Sections::Order::Control, 'p[data-hook="links"]'
    end
  end
end
