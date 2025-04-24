# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Plans
        sig do
          params(
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::PlanListResponse])
        end
        def list(limit: nil, next_page: nil, request_options: {})
        end

        sig do
          params(
            plan_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::PlanGetDetailsResponse)
        end
        def get_details(plan_id:, request_options: {})
        end

        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::PlanListChargesResponse])
        end
        def list_charges(plan_id:, limit: nil, next_page: nil, request_options: {})
        end

        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            status: Symbol,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::PlanListCustomersResponse])
        end
        def list_customers(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
