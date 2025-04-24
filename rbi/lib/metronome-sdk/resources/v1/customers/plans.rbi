# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Plans
          sig do
            params(
              customer_id: String,
              limit: Integer,
              next_page: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::Customers::PlanListResponse])
          end
          def list(customer_id:, limit: nil, next_page: nil, request_options: {})
          end

          sig do
            params(
              customer_id: String,
              plan_id: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              overage_rate_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment],
              price_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment],
              trial_spec: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::PlanAddResponse)
          end
          def add(
            customer_id:,
            plan_id:,
            starting_on:,
            ending_before: nil,
            net_payment_terms_days: nil,
            overage_rate_adjustments: nil,
            price_adjustments: nil,
            trial_spec: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              ending_before: Time,
              void_invoices: T::Boolean,
              void_stripe_invoices: T::Boolean,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::PlanEndResponse)
          end
          def end_(
            customer_id:,
            customer_plan_id:,
            ending_before: nil,
            void_invoices: nil,
            void_stripe_invoices: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              limit: Integer,
              next_page: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse])
          end
          def list_price_adjustments(
            customer_id:,
            customer_plan_id:,
            limit: nil,
            next_page: nil,
            request_options: {}
          )
          end

          sig { params(client: MetronomeSDK::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
