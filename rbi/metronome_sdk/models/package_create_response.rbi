# typed: strong

module MetronomeSDK
  module Models
    class PackageCreateResponse < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::Models::PackageCreateResponse,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(MetronomeSDK::ID) }
      attr_reader :data

      sig { params(data: MetronomeSDK::ID::OrHash).void }
      attr_writer :data

      sig { params(data: MetronomeSDK::ID::OrHash).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({ data: MetronomeSDK::ID }) }
      def to_hash
      end
    end
  end
end
