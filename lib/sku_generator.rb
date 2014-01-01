require "sku_generator/version"

module SkuGenerator
  extend ActiveSupport::Concern

  module ClassMethods

    # column_name : Name of the sku column
    # options :
    #   parents : array of parent relation, if you want to include
    #   sku_initial : specify, any SKU intials if you want, otherwise, it will take first 4 letters from the class name.
    #   padding : 0 padding on the model id; default is 6
    #   parent_padding : 0 padding on the parent model's ids; default is 3
    def sku_generator column_name, options

      self.after_save :generate_sku

      define_method 'generate_sku' do
        sku_initial = (options.delete(:sku_initial) or self.class.to_s[0..3].upcase)
        relational_parents = (options.delete(:parents) or [])
        padding = (options.delete(:padding) or 6)
        parent_padding = (options.delete(:parent_padding) or 3)
        sku_parent_component = relational_parents.map { |parent| self.send(parent).id.to_s.rjust(parent_padding, '0') }.join('')
        sku_sef_component = self.id.to_s.rjust(padding, '0')
        sku = sku_initial + sku_parent_component + sku_sef_component
        self.update_column column_name, sku
      end

    end

  end

  module InstanceMethods
  end

end

ActiveRecord::Base.send(:include, SkuGenerator)