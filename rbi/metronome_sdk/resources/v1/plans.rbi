# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Plans
        # List all available plans. This is a Plans (deprecated) endpoint. New clients
        # should implement using Contracts.
        sig do
          params(
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PlanListResponse
            ]
          )
        end
        def list(
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        )
        end

        # Fetch high level details of a specific plan. This is a Plans (deprecated)
        # endpoint. New clients should implement using Contracts.
        sig do
          params(
            plan_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::PlanGetDetailsResponse)
        end
        def get_details(plan_id:, request_options: {})
        end

        # Fetches a list of charges of a specific plan. This is a Plans (deprecated)
        # endpoint. New clients should implement using Contracts.
        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PlanListChargesResponse
            ]
          )
        end
        def list_charges(
          # Path param:
          plan_id:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        )
        end

        # Fetches a list of customers on a specific plan (by default, only currently
        # active plans are included). This is a Plans (deprecated) endpoint. New clients
        # should implement using Contracts.
        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            status: MetronomeSDK::V1::PlanListCustomersParams::Status::OrSymbol,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PlanListCustomersResponse
            ]
          )
        end
        def list_customers(
          # Path param:
          plan_id:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Query param: Status of customers on a given plan. Defaults to `active`.
          #
          # - `all` - Return current, past, and upcoming customers of the plan.
          # - `active` - Return current customers of the plan.
          # - `ended` - Return past customers of the plan.
          # - `upcoming` - Return upcoming customers of the plan.
          #
          # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
          # **Note:** `ended,upcoming` combination is not yet supported.
          status: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
