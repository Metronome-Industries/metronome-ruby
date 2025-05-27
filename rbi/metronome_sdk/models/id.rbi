# typed: strong

module MetronomeSDK
  module Models
    class ID < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::ID, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(id:)
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
