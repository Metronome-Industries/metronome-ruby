# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::PlanListCustomersResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::V1::CustomerDetail) }
        attr_reader :customer_details

        sig do
          params(
            customer_details: MetronomeSDK::V1::CustomerDetail::OrHash
          ).void
        end
        attr_writer :customer_details

        sig do
          returns(
            MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
          )
        end
        attr_reader :plan_details

        sig do
          params(
            plan_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails::OrHash
          ).void
        end
        attr_writer :plan_details

        sig do
          params(
            customer_details: MetronomeSDK::V1::CustomerDetail::OrHash,
            plan_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_details:, plan_details:)
        end

        sig do
          override.returns(
            {
              customer_details: MetronomeSDK::V1::CustomerDetail,
              plan_details:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
            }
          )
        end
        def to_hash
        end

        class PlanDetails < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :custom_fields

          sig { returns(String) }
          attr_accessor :customer_plan_id

          sig { returns(String) }
          attr_accessor :name

          # The start date of the plan
          sig { returns(Time) }
          attr_accessor :starting_on

          # The end date of the plan
          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          sig do
            params(
              id: String,
              custom_fields: T::Hash[Symbol, String],
              customer_plan_id: String,
              name: String,
              starting_on: Time,
              ending_before: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields:,
            customer_plan_id:,
            name:,
            # The start date of the plan
            starting_on:,
            # The end date of the plan
            ending_before: nil
          )
          end

          sig do
            override.returns(
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
