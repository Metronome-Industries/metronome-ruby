# typed: strong

module Metronome
  module Models
    class PlanListCustomersResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::CustomerDetail) }
      attr_accessor :customer_details

      sig { returns(Metronome::Models::PlanListCustomersResponse::PlanDetails) }
      attr_accessor :plan_details

      sig do
        params(
          customer_details: Metronome::Models::CustomerDetail,
          plan_details: Metronome::Models::PlanListCustomersResponse::PlanDetails
        ).void
      end
      def initialize(customer_details:, plan_details:); end

      sig do
        override.returns(
          {
            customer_details: Metronome::Models::CustomerDetail,
            plan_details: Metronome::Models::PlanListCustomersResponse::PlanDetails
          }
        )
      end
      def to_hash; end

      class PlanDetails < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        sig { returns(String) }
        attr_accessor :customer_plan_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Time) }
        attr_accessor :starting_on

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
          ).void
        end
        def initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil); end

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
        def to_hash; end
      end
    end
  end
end
