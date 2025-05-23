# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyResponse < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The ID of the rate card to which the rates were added.
            sig do
              returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The ID of the rate card to which the rates were added.
              data:
            )
            end

            sig do
              override.returns(
                {
                  data:
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The ID of the rate card to which the rates were added.
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
