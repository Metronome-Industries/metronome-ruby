# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Get the customer alert status and alert information for the specified customer
          # and alert
          #
          # @overload retrieve(alert_id:, customer_id:, request_options: {})
          #
          # @param alert_id [String] The Metronome ID of the alert
          #
          # @param customer_id [String] The Metronome ID of the customer
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::AlertRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customer-alerts/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::AlertListParams} for more details.
          #
          # Fetch all customer alert statuses and alert information for a customer
          #
          # @overload list(customer_id:, next_page: nil, alert_statuses: nil, request_options: {})
          #
          # @param customer_id [String] Body param: The Metronome ID of the customer
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param alert_statuses [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>] Body param: Optionally filter by alert status. If absent, only enabled alerts wi
          # ...
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::AlertListResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertListParams
          def list(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::AlertListParams.dump_request(params)
            query_params = [:next_page]
            @client.request(
              method: :post,
              path: "v1/customer-alerts/list",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: MetronomeSDK::Models::V1::Customers::AlertListResponse,
              options: options
            )
          end

          # Reset state for an alert by customer id and force re-evaluation
          #
          # @overload reset(alert_id:, customer_id:, request_options: {})
          #
          # @param alert_id [String] The Metronome ID of the alert
          #
          # @param customer_id [String] The Metronome ID of the customer
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertResetParams
          def reset(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::AlertResetParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customer-alerts/reset",
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
