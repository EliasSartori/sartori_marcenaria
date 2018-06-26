module Site::HomeHelper
    def quantity_for_collection
        @product.quantity.to_i.times.collect do |i|
            i += 1
            [i, i]
        end
    end
end
