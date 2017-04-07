module SitePrism
  module ElementChecker
    alias_method :original_all_there?, :all_there?

    def all_there?(options = {})
      return true if self.class.mapped_items.blank?
      options[:recursive] ||= false
      original_all_there? && (!options[:recursive] || sections.all?(&:recursive_all_there?))
    end

    def sections
      elements.keep_if { |item| item.is_a?(SitePrism::Section) }
    end

    def elements
      self.class.mapped_items.map{ |item| send(item) }
    end

    def recursive_all_there?
      all_there?(recursive: true)
    end
  end
end
