# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Alerts
        # @param client [Metronome::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Get the customer alert status and alert information for the specified customer
        #   and alert
        #
        # @param params [Metronome::Models::Customers::AlertRetrieveParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :alert_id The Metronome ID of the alert
        #
        #   @option params [String] :customer_id The Metronome ID of the customer
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::AlertRetrieveResponse]
        #
        def retrieve(params = {}, opts = {})
          parsed = Metronome::Models::Customers::AlertRetrieveParams.dump(params)
          req = {
            method: :post,
            path: "customer-alerts/get",
            body: parsed,
            model: Metronome::Models::Customers::AlertRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Fetch all customer alert statuses and alert information for a customer
        #
        # @param params [Metronome::Models::Customers::AlertListParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :customer_id Body param: The Metronome ID of the customer
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        #   @option params [Array<Symbol, Metronome::Models::Customers::AlertListParams::AlertStatus>] :alert_statuses Body param: Optionally filter by alert status. If absent, only enabled alerts
        #     will be returned.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::AlertListResponse]
        #
        def list(params = {}, opts = {})
          parsed = Metronome::Models::Customers::AlertListParams.dump(params)
          query_params = [:next_page]
          req = {
            method: :post,
            path: "customer-alerts/list",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Metronome::Models::Customers::AlertListResponse
          }
          @client.request(req, opts)
        end

        # Reset state for an alert by customer id and force re-evaluation
        #
        # @param params [Metronome::Models::Customers::AlertResetParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :alert_id The Metronome ID of the alert
        #
        #   @option params [String] :customer_id The Metronome ID of the customer
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        #
        def reset(params = {}, opts = {})
          parsed = Metronome::Models::Customers::AlertResetParams.dump(params)
          req = {
            method: :post,
            path: "customer-alerts/reset",
            body: parsed,
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
