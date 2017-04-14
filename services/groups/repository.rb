require 'digest/md5'
module Groups
  class Repository

    @groups = []

    class << self

      def store(group)
        time = Time.now.getutc.to_s
        id = self.generate_id(time, group.to_s)
        @groups << Group.new(id, group)
        return self.retrieve(id).to_hash
      end

      def retrieve(id)
        @groups.find { |group| group.id == id }
      end

      def empty
        @groups = []
      end

      def generate_id(*identifiers)
        Digest::MD5.hexdigest(identifiers.join)
      end

      class Group
        attr_reader :id, :group

        def initialize(id, group)
          @id = id
          @group = group
        end

        def to_hash
          {id: @id, group: @group}
        end
      end

    end
  end
end