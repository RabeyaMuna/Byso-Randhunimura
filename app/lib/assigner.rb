module Assigner
    def assign_attributes(attributes)
        Hash(attributes).each do |key, value|
            write_method = "#{key} = "
            send(write_method, value) if respond_to?(write_method)
        end
    end
end 
