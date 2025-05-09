# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class NamedScheduleRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse::Data
              ]
            )
          end
          attr_accessor :data

          sig do
            params(
              data:
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.anything) }
            attr_accessor :value

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              params(
                starting_at: Time,
                value: T.anything,
                ending_before: Time
              ).returns(T.attached_class)
            end
            def self.new(starting_at:, value:, ending_before: nil)
            end

            sig do
              override.returns(
                { starting_at: Time, value: T.anything, ending_before: Time }
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
