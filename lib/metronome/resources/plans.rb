# frozen_string_literal: true

module Metronome
  module Resources
    class Plans
      # List all available plans.
      #
      # @param params [Metronome::Models::PlanListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :limit Max number of results that should be returned
      #
      #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListResponse>]
      #
      def list(params = {})
        parsed, options = Metronome::Models::PlanListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "plans",
          query: parsed,
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListResponse,
          options: options
        )
      end

      # Fetch high level details of a specific plan.
      #
      # @param params [Metronome::Models::PlanGetDetailsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :plan_id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::PlanGetDetailsResponse]
      #
      def get_details(params)
        parsed, options = Metronome::Models::PlanGetDetailsParams.dump_request(params)
        plan_id = parsed.fetch(:plan_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["planDetails/%0s", plan_id],
          model: Metronome::Models::PlanGetDetailsResponse,
          options: options
        )
      end

      # Fetches a list of charges of a specific plan.
      #
      # @param params [Metronome::Models::PlanListChargesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :plan_id Path param:
      #
      #   @option params [Integer] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListChargesResponse>]
      #
      def list_charges(params)
        parsed, options = Metronome::Models::PlanListChargesParams.dump_request(params)
        plan_id = parsed.fetch(:plan_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["planDetails/%0s/charges", plan_id],
          query: parsed.except(:plan_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListChargesResponse,
          options: options
        )
      end

      # Fetches a list of customers on a specific plan (by default, only currently
      #   active plans are included)
      #
      # @param params [Metronome::Models::PlanListCustomersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :plan_id Path param:
      #
      #   @option params [Integer] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Symbol, Metronome::Models::PlanListCustomersParams::Status] :status Query param: Status of customers on a given plan. Defaults to `active`.
      #
      #     - `all` - Return current, past, and upcoming customers of the plan.
      #     - `active` - Return current customers of the plan.
      #     - `ended` - Return past customers of the plan.
      #     - `upcoming` - Return upcoming customers of the plan.
      #
      #     Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      #     **Note:** `ended,upcoming` combination is not yet supported.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::PlanListCustomersResponse>]
      #
      def list_customers(params)
        parsed, options = Metronome::Models::PlanListCustomersParams.dump_request(params)
        plan_id = parsed.fetch(:plan_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["planDetails/%0s/customers", plan_id],
          query: parsed.except(:plan_id),
          page: Metronome::CursorPage,
          model: Metronome::Models::PlanListCustomersResponse,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
