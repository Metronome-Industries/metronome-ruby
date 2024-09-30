# frozen_string_literal: true

module Metronome
  module Resources
    class Plans
      def initialize(client:)
        @client = client
      end

      # List all available plans.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :limit Max number of results that should be returned
      # @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListResponse>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/plans"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::PlanListResponse
        @client.request(req, opts)
      end

      # Fetch high level details of a specific plan.
      #
      # @param plan_id [String]
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::PlanGetDetailsResponse]
      def get_details(plan_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/planDetails/#{plan_id}"
        req[:model] = Metronome::Models::PlanGetDetailsResponse
        @client.request(req, opts)
      end

      # Fetches a list of charges of a specific plan.
      #
      # @param plan_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :limit Max number of results that should be returned
      # @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListChargesResponse>]
      def list_charges(plan_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/planDetails/#{plan_id}/charges"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::PlanListChargesResponse
        @client.request(req, opts)
      end

      # Fetches a list of customers on a specific plan (by default, only currently
      #   active plans are included)
      #
      # @param plan_id [String]
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :limit Max number of results that should be returned
      # @option params [String] :next_page Cursor that indicates where the next page of results should start.
      # @option params [Symbol] :status Status of customers on a given plan. Defaults to `active`.
      #
      #   - `all` - Return current, past, and upcoming customers of the plan.
      #   - `active` - Return current customers of the plan.
      #   - `ended` - Return past customers of the plan.
      #   - `upcoming` - Return upcoming customers of the plan.
      #
      #   Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      #   **Note:** `ended,upcoming` combination is not yet supported.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListCustomersResponse>]
      def list_customers(plan_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/planDetails/#{plan_id}/customers"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::PlanListCustomersResponse
        @client.request(req, opts)
      end
    end
  end
end
