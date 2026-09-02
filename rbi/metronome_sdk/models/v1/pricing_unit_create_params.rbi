# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PricingUnitCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::PricingUnitCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The name of the custom pricing unit. This will appear on invoices.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            name: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the custom pricing unit. This will appear on invoices.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { name: String, request_options: MetronomeSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
