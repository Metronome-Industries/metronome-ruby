# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Plans
        # List all available plans.
        #
        # @overload list(limit: nil, next_page: nil, request_options: {})
        #
        # @param limit [Integer] Max number of results that should be returned
        #
        # @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PlanListResponse>]
        #
        # @see MetronomeSDK::Models::V1::PlanListParams
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::PlanListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/plans",
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListResponse,
            options: options
          )
        end

        # Fetch high level details of a specific plan.
        #
        # @overload get_details(plan_id:, request_options: {})
        #
        # @param plan_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PlanGetDetailsResponse]
        #
        # @see MetronomeSDK::Models::V1::PlanGetDetailsParams
        def get_details(params)
          parsed, options = MetronomeSDK::Models::V1::PlanGetDetailsParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%1$s", plan_id],
            model: MetronomeSDK::Models::V1::PlanGetDetailsResponse,
            options: options
          )
        end

        # Fetches a list of charges of a specific plan.
        #
        # @overload list_charges(plan_id:, limit: nil, next_page: nil, request_options: {})
        #
        # @param plan_id [String] Path param:
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PlanListChargesResponse>]
        #
        # @see MetronomeSDK::Models::V1::PlanListChargesParams
        def list_charges(params)
          parsed, options = MetronomeSDK::Models::V1::PlanListChargesParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%1$s/charges", plan_id],
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListChargesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::PlanListCustomersParams} for more details.
        #
        # Fetches a list of customers on a specific plan (by default, only currently
        # active plans are included)
        #
        # @overload list_customers(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {})
        #
        # @param plan_id [String] Path param:
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param status [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status] Query param: Status of customers on a given plan. Defaults to `active`. ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PlanListCustomersResponse>]
        #
        # @see MetronomeSDK::Models::V1::PlanListCustomersParams
        def list_customers(params)
          parsed, options = MetronomeSDK::Models::V1::PlanListCustomersParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/planDetails/%1$s/customers", plan_id],
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PlanListCustomersResponse,
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
