# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Plans
        # List all available plans.
        #
        # @param params [MetronomeSDK::Models::V1::PlanListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :limit Max number of results that should be returned
        #
        #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::PlanListResponse>]
        #
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::PlanListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/plans",
            query: parsed,
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListResponse,
            options: options
          )
        end

        # Fetch high level details of a specific plan.
        #
        # @param params [MetronomeSDK::Models::V1::PlanGetDetailsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :plan_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::PlanGetDetailsResponse]
        #
        def get_details(params)
          parsed, options = MetronomeSDK::Models::V1::PlanGetDetailsParams.dump_request(params)
          plan_id = parsed.fetch(:plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%0s", plan_id],
            model: MetronomeSDK::Models::V1::PlanGetDetailsResponse,
            options: options
          )
        end

        # Fetches a list of charges of a specific plan.
        #
        # @param params [MetronomeSDK::Models::V1::PlanListChargesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :plan_id Path param:
        #
        #   @option params [Integer] :limit Query param: Max number of results that should be returned
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::PlanListChargesResponse>]
        #
        def list_charges(params)
          parsed, options = MetronomeSDK::Models::V1::PlanListChargesParams.dump_request(params)
          plan_id = parsed.fetch(:plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%0s/charges", plan_id],
            query: parsed.except(:plan_id),
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListChargesResponse,
            options: options
          )
        end

        # Fetches a list of customers on a specific plan (by default, only currently
        #   active plans are included)
        #
        # @param params [MetronomeSDK::Models::V1::PlanListCustomersParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :plan_id Path param:
        #
        #   @option params [Integer] :limit Query param: Max number of results that should be returned
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status] :status Query param: Status of customers on a given plan. Defaults to `active`.
        #
        #     - `all` - Return current, past, and upcoming customers of the plan.
        #     - `active` - Return current customers of the plan.
        #     - `ended` - Return past customers of the plan.
        #     - `upcoming` - Return upcoming customers of the plan.
        #
        #     Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        #     **Note:** `ended,upcoming` combination is not yet supported.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::PlanListCustomersResponse>]
        #
        def list_customers(params)
          parsed, options = MetronomeSDK::Models::V1::PlanListCustomersParams.dump_request(params)
          plan_id = parsed.fetch(:plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%0s/customers", plan_id],
            query: parsed.except(:plan_id),
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListCustomersResponse,
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
