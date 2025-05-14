# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderUpdateParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove
                ]
              )
            end
            attr_accessor :product_moves

            # ID of the rate card to update
            sig { returns(String) }
            attr_accessor :rate_card_id

            sig do
              params(
                product_moves:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove::OrHash
                  ],
                rate_card_id: String,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              product_moves:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  product_moves:
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove
                    ],
                  rate_card_id: String,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
            end
            def to_hash
            end

            class ProductMove < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # 0-based index of the new position of the product
              sig { returns(Float) }
              attr_accessor :position

              # ID of the product to move
              sig { returns(String) }
              attr_accessor :product_id

              sig do
                params(position: Float, product_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # 0-based index of the new position of the product
                position:,
                # ID of the product to move
                product_id:
              )
              end

              sig { override.returns({ position: Float, product_id: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
