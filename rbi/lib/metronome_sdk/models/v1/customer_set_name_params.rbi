# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetNameParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        # The new name for the customer. This will be truncated to 160 characters if the
        # provided name is longer.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            customer_id: String,
            name: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # The new name for the customer. This will be truncated to 160 characters if the
          # provided name is longer.
          name:,
          request_options: {}
        ); end
        sig do
          override.returns({customer_id: String, name: String, request_options: MetronomeSDK::RequestOptions})
        end
        def to_hash; end
      end
    end
  end
end
