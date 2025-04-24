# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Get the customer alert status and alert information for the specified customer
          #   and alert
          #
          # @param params [MetronomeSDK::Models::V1::Customers::AlertRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :alert_id The Metronome ID of the alert
          #
          #   @option params [String] :customer_id The Metronome ID of the customer
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse]
          #
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

          # Fetch all customer alert statuses and alert information for a customer
          #
          # @param params [MetronomeSDK::Models::V1::Customers::AlertListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Body param: The Metronome ID of the customer
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>] :alert_statuses Body param: Optionally filter by alert status. If absent, only enabled alerts
          #     will be returned.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::AlertListResponse]
          #
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
          # @param params [MetronomeSDK::Models::V1::Customers::AlertResetParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :alert_id The Metronome ID of the alert
          #
          #   @option params [String] :customer_id The Metronome ID of the customer
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
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

          # @param client [MetronomeSDK::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
