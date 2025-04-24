# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V1::CustomerDetail) }
        def customer_details
        end

        sig { params(_: MetronomeSDK::Models::V1::CustomerDetail).returns(MetronomeSDK::Models::V1::CustomerDetail) }
        def customer_details=(_)
        end

        sig { returns(MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails) }
        def plan_details
        end

        sig do
          params(_: MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails)
            .returns(MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails)
        end
        def plan_details=(_)
        end

        sig do
          params(
            customer_details: MetronomeSDK::Models::V1::CustomerDetail,
            plan_details: MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
          )
            .void
        end
        def initialize(customer_details:, plan_details:)
        end

        sig do
          override
            .returns(
              {
                customer_details: MetronomeSDK::Models::V1::CustomerDetail,
                plan_details: MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
              }
            )
        end
        def to_hash
        end

        class PlanDetails < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T::Hash[Symbol, String]) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(String) }
          def customer_plan_id
          end

          sig { params(_: String).returns(String) }
          def customer_plan_id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Time) }
          def starting_on
          end

          sig { params(_: Time).returns(Time) }
          def starting_on=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def ending_before=(_)
          end

          sig do
            params(
              id: String,
              custom_fields: T::Hash[Symbol, String],
              customer_plan_id: String,
              name: String,
              starting_on: Time,
              ending_before: T.nilable(Time)
            )
              .void
          end
          def initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  customer_plan_id: String,
                  name: String,
                  starting_on: Time,
                  ending_before: T.nilable(Time)
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
