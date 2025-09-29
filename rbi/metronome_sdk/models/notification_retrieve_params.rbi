# typed: strong

module MetronomeSDK
  module Models
    class NotificationRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::NotificationRetrieveParams,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # The ID of the notification configuration to retrieve
      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the notification configuration to retrieve
        id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, request_options: MetronomeSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
