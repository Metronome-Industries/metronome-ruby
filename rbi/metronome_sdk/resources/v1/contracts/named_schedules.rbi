# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class NamedSchedules
          # Get a named schedule for the given rate card. This endpoint's availability is
          # dependent on your client's configuration.
          sig do
            params(
              rate_card_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse
            )
          end
          def retrieve(
            # ID of the rate card whose named schedule is to be retrieved
            rate_card_id:,
            # The identifier for the schedule to be retrieved
            schedule_name:,
            # If provided, at most one schedule segment will be returned (the one that covers
            # this date). If not provided, all segments will be returned.
            covering_date: nil,
            request_options: {}
          )
          end

          # Update a named schedule for the given rate card. This endpoint's availability is
          # dependent on your client's configuration.
          sig do
            params(
              rate_card_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def update(
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

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
