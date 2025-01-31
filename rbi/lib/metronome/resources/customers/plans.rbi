# typed: strong

module Metronome
  module Resources
    class Customers
      class Plans
        sig do
          params(
            customer_id: String,
            limit: Integer,
            next_page: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::PlanListResponse])
        end
        def list(customer_id:, limit:, next_page:, request_options: {}); end

        sig do
          params(
            customer_id: String,
            plan_id: String,
            starting_on: Time,
            ending_before: Time,
            net_payment_terms_days: Float,
            overage_rate_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment],
            price_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::PriceAdjustment],
            trial_spec: Metronome::Models::Customers::PlanAddParams::TrialSpec,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::PlanAddResponse)
        end
        def add(
          customer_id:,
          plan_id:,
          starting_on:,
          ending_before:,
          net_payment_terms_days:,
          overage_rate_adjustments:,
          price_adjustments:,
          trial_spec:,
          request_options: {}
        ); end

        sig do
          params(
            customer_id: String,
            customer_plan_id: String,
            ending_before: Time,
            void_invoices: T::Boolean,
            void_stripe_invoices: T::Boolean,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::PlanEndResponse)
        end
        def end_(
          customer_id:,
          customer_plan_id:,
          ending_before:,
          void_invoices:,
          void_stripe_invoices:,
          request_options: {}
        ); end

        sig do
          params(
            customer_id: String,
            customer_plan_id: String,
            limit: Integer,
            next_page: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse])
        end
        def list_price_adjustments(customer_id:, customer_plan_id:, limit:, next_page:, request_options: {})
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
