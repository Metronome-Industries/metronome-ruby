# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleListResponse < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # ID of the contract this named schedule belongs to.
            sig { returns(String) }
            attr_accessor :contract_id

            # Name of the schedule.
            sig { returns(String) }
            attr_accessor :schedule_name

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment
                ]
              )
            end
            attr_accessor :segments

            # Properties on this named schedule.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, String]).void }
            attr_writer :properties

            sig do
              params(
                contract_id: String,
                schedule_name: String,
                segments:
                  T::Array[
                    MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment::OrHash
                  ],
                properties: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the contract this named schedule belongs to.
              contract_id:,
              # Name of the schedule.
              schedule_name:,
              segments:,
              # Properties on this named schedule.
              properties: nil
            )
            end

            sig do
              override.returns(
                {
                  contract_id: String,
                  schedule_name: String,
                  segments:
                    T::Array[
                      MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment
                    ],
                  properties: T::Hash[Symbol, String]
                }
              )
            end
            def to_hash
            end

            class Segment < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment,
                    MetronomeSDK::Internal::AnyHash
                  )
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
end
