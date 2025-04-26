# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleUpdateParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # ID of the contract whose named schedule is to be updated
            sig { returns(String) }
            attr_accessor :contract_id

            # ID of the customer whose named schedule is to be updated
            sig { returns(String) }
            attr_accessor :customer_id

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
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                starting_at: Time,
                value: T.anything,
                ending_before: Time,
                request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
              )
                .returns(T.attached_class)
            end
            def self.new(
              # ID of the contract whose named schedule is to be updated
              contract_id:,
              # ID of the customer whose named schedule is to be updated
              customer_id:,
              # The identifier for the schedule to be updated
              schedule_name:,
              starting_at:,
              # The value to set for the named schedule. The structure of this object is
              # specific to the named schedule.
              value:,
              ending_before: nil,
              request_options: {}
            ); end
            sig do
              override
                .returns(
                  {
                    contract_id: String,
                    customer_id: String,
                    schedule_name: String,
                    starting_at: Time,
                    value: T.anything,
                    ending_before: Time,
                    request_options: MetronomeSDK::RequestOptions
                  }
                )
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
