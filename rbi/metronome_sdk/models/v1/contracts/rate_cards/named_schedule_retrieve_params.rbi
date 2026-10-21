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

            # A set of key-value pairs that qualifies which schedule should be applied when
            # looking up a schedule by name.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, String]).void }
            attr_writer :properties

            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                covering_date: Time,
                properties: T::Hash[Symbol, String],
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
              # A set of key-value pairs that qualifies which schedule should be applied when
              # looking up a schedule by name.
              properties: nil,
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
                  properties: T::Hash[Symbol, String],
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
