# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class NamedSchedules
          # Get a named schedule for the given customer. This endpoint's availability is
          # dependent on your client's configuration.
          sig do
            params(
              customer_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse
            )
          end
          def retrieve(
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

          # Update a named schedule for the given customer. This endpoint's availability is
          # dependent on your client's configuration.
          sig do
            params(
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def update(
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
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
