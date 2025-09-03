# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerRetrieveBillingConfigurationsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_id:, include_archived: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              customer_id: String,
              include_archived: T::Boolean,
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
