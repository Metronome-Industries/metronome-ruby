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
            sig { returns(MetronomeSDK::ID) }
            attr_reader :data

            sig { params(data: MetronomeSDK::ID::OrHash).void }
            attr_writer :data

            sig do
              params(data: MetronomeSDK::ID::OrHash).returns(T.attached_class)
            end
            def self.new(
              # The ID of the rate card to which the rates were added.
              data:
            )
            end

            sig { override.returns({ data: MetronomeSDK::ID }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
