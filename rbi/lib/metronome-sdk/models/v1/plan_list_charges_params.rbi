# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListChargesParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def plan_id
        end

        sig { params(_: String).returns(String) }
        def plan_id=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(plan_id:, limit: nil, next_page: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                plan_id: String,
                limit: Integer,
                next_page: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
