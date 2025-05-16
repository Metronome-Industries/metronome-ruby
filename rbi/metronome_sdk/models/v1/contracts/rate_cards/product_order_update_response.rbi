# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderUpdateResponse < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse::Data,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { params(id: String).returns(T.attached_class) }
              def self.new(id:)
              end

              sig { override.returns({ id: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
