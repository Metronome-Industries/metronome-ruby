# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductArchiveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::ProductArchiveParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of the product to be archived
          sig { returns(String) }
          attr_accessor :product_id

          sig do
            params(
              product_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the product to be archived
            product_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                product_id: String,
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
end
