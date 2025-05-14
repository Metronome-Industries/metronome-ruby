# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCards::NamedScheduleRetrieveParams,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # ID of the contract whose named schedule is to be retrieved
            sig { returns(String) }
            attr_accessor :contract_id

            # ID of the customer whose named schedule is to be retrieved
            sig { returns(String) }
            attr_accessor :customer_id

            # The identifier for the schedule to be retrieved
            sig { returns(String) }
            attr_accessor :schedule_name

            # If provided, at most one schedule segment will be returned (the one that covers
            # this date). If not provided, all segments will be returned.
            sig { returns(T.nilable(Time)) }
            attr_reader :covering_date

            sig { params(covering_date: Time).void }
            attr_writer :covering_date

            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                covering_date: Time,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the contract whose named schedule is to be retrieved
              contract_id:,
              # ID of the customer whose named schedule is to be retrieved
              customer_id:,
              # The identifier for the schedule to be retrieved
              schedule_name:,
              # If provided, at most one schedule segment will be returned (the one that covers
              # this date). If not provided, all segments will be returned.
              covering_date: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  contract_id: String,
                  customer_id: String,
                  schedule_name: String,
                  covering_date: Time,
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
