# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          # Named schedules are used for storing custom data that can change over time.
          # Named schedules are often used in custom pricing logic.
          class NamedSchedules
            # Get a named schedule for the given contract. This endpoint's availability is
            # dependent on your client's configuration.
            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                covering_date: Time,
                properties: T::Hash[Symbol, String],
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse
              )
            end
            def retrieve(
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

            # Update a named schedule for the given contract. This endpoint's availability is
            # dependent on your client's configuration.
            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                starting_at: Time,
                value: T.anything,
                ending_before: Time,
                properties: T::Hash[Symbol, String],
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).void
            end
            def update(
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
              # A set of key-value pairs that qualifies which schedule should be applied when
              # looking up a schedule by name.
              properties: nil,
              request_options: {}
            )
            end

            # List contract-level named schedules for a customer, optionally scoped to a
            # single contract.
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
              ).returns(
                MetronomeSDK::Internal::BodyCursorPage[
                  MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse
                ]
              )
            end
            def list(
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

            # @api private
            sig do
              params(client: MetronomeSDK::Client).returns(T.attached_class)
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
