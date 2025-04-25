# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class NamedSchedules
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveParams} for more
          # details.
          #
          # Get a named schedule for the given customer. This endpoint's availability is
          # dependent on your client's configuration.
          #
          # @overload retrieve(customer_id:, schedule_name:, covering_date: nil, request_options: {})
          #
          # @param customer_id [String] ID of the customer whose named schedule is to be retrieved
          #
          # @param schedule_name [String] The identifier for the schedule to be retrieved
          #
          # @param covering_date [Time] If provided, at most one schedule segment will be returned (the one that covers
          # ...
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customers/getNamedSchedule",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::NamedScheduleUpdateParams} for more
          # details.
          #
          # Update a named schedule for the given customer. This endpoint's availability is
          # dependent on your client's configuration.
          #
          # @overload update(customer_id:, schedule_name:, starting_at:, value:, ending_before: nil, request_options: {})
          #
          # @param customer_id [String] ID of the customer whose named schedule is to be updated
          #
          # @param schedule_name [String] The identifier for the schedule to be updated
          #
          # @param starting_at [Time]
          #
          # @param value [Object] The value to set for the named schedule. The structure of this object is specifi
          # ...
          #
          # @param ending_before [Time]
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see MetronomeSDK::Models::V1::Customers::NamedScheduleUpdateParams
          def update(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::NamedScheduleUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customers/updateNamedSchedule",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
