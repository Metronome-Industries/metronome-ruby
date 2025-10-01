# typed: strong

module MetronomeSDK
  module Models
    class PaymentAttemptPaymentParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::PaymentAttemptPaymentParams,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :invoice_id

      sig do
        params(
          customer_id: String,
          invoice_id: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(customer_id:, invoice_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            customer_id: String,
            invoice_id: String,
            request_options: MetronomeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
