# typed: strong

module MetronomeSDK
  module Models
    class CreditTypeData < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::CreditTypeData, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { params(id: String, name: String).returns(T.attached_class) }
      def self.new(id:, name:)
      end

      sig { override.returns({ id: String, name: String }) }
      def to_hash
      end
    end
  end
end
