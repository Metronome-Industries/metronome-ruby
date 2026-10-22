# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleListParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCards::NamedScheduleListParams,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # ID of the customer to list contract named schedules for
            sig { returns(String) }
            attr_accessor :customer_id

            # Optional ID of a contract to scope the results to a single contract
            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            # If provided, result contains at most one segment covering this date for each
            # schedule.
            sig { returns(T.nilable(Time)) }
            attr_reader :covering_date

            sig { params(covering_date: Time).void }
            attr_writer :covering_date

            # Maximum number of named schedules to return.
            sig { returns(T.nilable(Integer)) }
            attr_reader :limit

            sig { params(limit: Integer).void }
            attr_writer :limit

            # Cursor for pagination. Use the value from a previous response's next_page.
            sig { returns(T.nilable(String)) }
            attr_reader :next_page

            sig { params(next_page: String).void }
            attr_writer :next_page

            # Optional key-value filters. A schedule matches when it contains at least this
            # subset of properties.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, String]).void }
            attr_writer :properties

            # Optional filter to scope the results to a single schedule name
            sig { returns(T.nilable(String)) }
            attr_reader :schedule_name

            sig { params(schedule_name: String).void }
            attr_writer :schedule_name

            sig do
              params(
                customer_id: String,
                contract_id: String,
                covering_date: Time,
                limit: Integer,
                next_page: String,
                properties: T::Hash[Symbol, String],
                schedule_name: String,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the customer to list contract named schedules for
              customer_id:,
              # Optional ID of a contract to scope the results to a single contract
              contract_id: nil,
              # If provided, result contains at most one segment covering this date for each
              # schedule.
              covering_date: nil,
              # Maximum number of named schedules to return.
              limit: nil,
              # Cursor for pagination. Use the value from a previous response's next_page.
              next_page: nil,
              # Optional key-value filters. A schedule matches when it contains at least this
              # subset of properties.
              properties: nil,
              # Optional filter to scope the results to a single schedule name
              schedule_name: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  customer_id: String,
                  contract_id: String,
                  covering_date: Time,
                  limit: Integer,
                  next_page: String,
                  properties: T::Hash[Symbol, String],
                  schedule_name: String,
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
