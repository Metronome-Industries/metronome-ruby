# frozen_string_literal: true

module Metronome
  module Resources
    class Plans
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # List all available plans.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Integer, nil] :limit Max number of results that should be returned
      #   @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListResponse>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/plans",
          query: params,
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListResponse
        }
        @client.request(req, opts)
      end

      # Fetch high level details of a specific plan.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :plan_id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::PlanGetDetailsResponse]
      def get_details(params = {}, opts = {})
        req = {
          method: :get,
          path: "/planDetails/#{params.fetch(:plan_id)}",
          model: Metronome::Models::PlanGetDetailsResponse
        }
        @client.request(req, opts)
      end

      # Fetches a list of charges of a specific plan.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :plan_id Path param:
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListChargesResponse>]
      def list_charges(params = {}, opts = {})
        req = {
          method: :get,
          path: "/planDetails/#{params.fetch(:plan_id)}/charges",
          query: params,
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListChargesResponse
        }
        @client.request(req, opts)
      end

      # Fetches a list of customers on a specific plan (by default, only currently
      #   active plans are included)
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :plan_id Path param:
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #   @option params [Symbol, Status, nil] :status Query param: Status of customers on a given plan. Defaults to `active`.
      #
      #     - `all` - Return current, past, and upcoming customers of the plan.
      #     - `active` - Return current customers of the plan.
      #     - `ended` - Return past customers of the plan.
      #     - `upcoming` - Return upcoming customers of the plan.
      #
      #     Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      #     **Note:** `ended,upcoming` combination is not yet supported.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListCustomersResponse>]
      def list_customers(params = {}, opts = {})
        req = {
          method: :get,
          path: "/planDetails/#{params.fetch(:plan_id)}/customers",
          query: params,
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListCustomersResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
