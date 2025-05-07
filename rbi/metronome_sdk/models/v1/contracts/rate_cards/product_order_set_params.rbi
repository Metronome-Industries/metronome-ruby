# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderSetParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(T::Array[String]) }
            attr_accessor :product_order

            # ID of the rate card to update
            sig { returns(String) }
            attr_accessor :rate_card_id

            sig do
              params(
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              product_order:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  product_order: T::Array[String],
                  rate_card_id: String,
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
end
