# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            customer_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
