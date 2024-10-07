# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Alerts
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Get the customer alert status and alert information for the specified customer
        #   and alert
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :alert_id The Metronome ID of the alert
        # @option params [String] :customer_id The Metronome ID of the customer
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::AlertRetrieveResponse]
        def retrieve(params = {}, opts = {})
          req = {
            method: :post,
            path: "/customer-alerts/get",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::AlertRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Fetch all customer alert statuses and alert information for a customer
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :customer_id Body param: The Metronome ID of the customer
        # @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        # @option params [Array<Symbol, AlertStatus>, nil] :alert_statuses Body param: Optionally filter by alert status. If absent, only enabled alerts
        #   will be returned.
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::AlertListResponse]
        def list(params = {}, opts = {})
          query_params = [:next_page]
          req = {
            method: :post,
            path: "/customer-alerts/list",
            query: params.slice(*query_params),
            body: params.except(*query_params),
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::AlertListResponse
          }
          @client.request(req, opts)
        end

        # Reset state for an alert by customer id and force re-evaluation
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :alert_id The Metronome ID of the alert
        # @option params [String] :customer_id The Metronome ID of the customer
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def reset(params = {}, opts = {})
          req = {
            method: :post,
            path: "/customer-alerts/reset",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
