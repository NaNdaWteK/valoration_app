require_relative '../../domain/component'
require_relative '../common/tokens_factory'
require_relative 'repository'
require_relative 'component'

module Components
  class Service
    class << self
      def add(components_data)

        components = to_components(components_data)
        response = Repository.store(components)

        response = serialized(response)

        return response
      end

      def to_components(data)
        element_id = data['element_id']
        items = data['components']

        components = to_array(items, element_id)

        return components
      end

      def to_array(items, element_id)
        components = Array.new

        items.each do |item|
          id = Identifiers::Token.generate_md5_id(item)
          component = Components::Component.new(id, item, element_id)
          components.push(component)
        end

        return components
      end

      def serialized(components)
        response = Array.new

        components.each { |component| response.push(component.serialize) }

        return response
      end

      def empty
        Repository.empty
      end
    end
  end
end
