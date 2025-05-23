# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class NamedScheduleUpdateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::NamedScheduleUpdateParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of the rate card whose named schedule is to be updated
          sig { returns(String) }
          attr_accessor :rate_card_id

          # The identifier for the schedule to be updated
          sig { returns(String) }
          attr_accessor :schedule_name

          sig { returns(Time) }
          attr_accessor :starting_at

          # The value to set for the named schedule. The structure of this object is
          # specific to the named schedule.
          sig { returns(T.anything) }
          attr_accessor :value

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig do
            params(
              rate_card_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the rate card whose named schedule is to be updated
            rate_card_id:,
            # The identifier for the schedule to be updated
            schedule_name:,
            starting_at:,
            # The value to set for the named schedule. The structure of this object is
            # specific to the named schedule.
            value:,
            ending_before: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                rate_card_id: String,
                schedule_name: String,
                starting_at: Time,
                value: T.anything,
                ending_before: Time,
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
