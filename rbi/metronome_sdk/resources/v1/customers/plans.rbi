# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Plans
          # List the given customer's plans in reverse-chronological order. This is a Plans
          # (deprecated) endpoint. New clients should implement using Contracts.
          sig do
            params(
              customer_id: String,
              limit: Integer,
              next_page: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::Models::V1::Customers::PlanListResponse
              ]
            )
          end
          def list(
            # Path param:
            customer_id:,
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            request_options: {}
          )
          end

          # Associate an existing customer with a plan for a specified date range. See the
          # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          # for details on the price adjustments. This is a Plans (deprecated) endpoint. New
          # clients should implement using Contracts.
          sig do
            params(
              customer_id: String,
              plan_id: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              overage_rate_adjustments:
                T::Array[
                  MetronomeSDK::V1::Customers::PlanAddParams::OverageRateAdjustment::OrHash
                ],
              price_adjustments:
                T::Array[
                  MetronomeSDK::V1::Customers::PlanAddParams::PriceAdjustment::OrHash
                ],
              trial_spec:
                MetronomeSDK::V1::Customers::PlanAddParams::TrialSpec::OrHash,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(MetronomeSDK::Models::V1::Customers::PlanAddResponse)
          end
          def add(
            # Path param:
            customer_id:,
            # Body param:
            plan_id:,
            # Body param: RFC 3339 timestamp for when the plan becomes active for this
            # customer. Must be at 0:00 UTC (midnight).
            starting_on:,
            # Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this
            # customer. Must be at 0:00 UTC (midnight).
            ending_before: nil,
            # Body param: Number of days after issuance of invoice after which the invoice is
            # due (e.g. Net 30).
            net_payment_terms_days: nil,
            # Body param: An optional list of overage rates that override the rates of the
            # original plan configuration. These new rates will apply to all pricing ramps.
            overage_rate_adjustments: nil,
            # Body param: A list of price adjustments can be applied on top of the pricing in
            # the plans. See the
            # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
            # for details.
            price_adjustments: nil,
            # Body param: A custom trial can be set for the customer's plan. See the
            # [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
            # for details.
            trial_spec: nil,
            request_options: {}
          )
          end

          # Change the end date of a customer's plan. This is a Plans (deprecated) endpoint.
          # New clients should implement using Contracts.
          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              ending_before: Time,
              void_invoices: T::Boolean,
              void_stripe_invoices: T::Boolean,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(MetronomeSDK::Models::V1::Customers::PlanEndResponse)
          end
          def end_(
            # Path param:
            customer_id:,
            # Path param: the ID of a customer-plan relationship
            customer_plan_id:,
            # Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this
            # customer. Must be at 0:00 UTC (midnight). If not provided, the plan end date
            # will be cleared.
            ending_before: nil,
            # Body param: If true, plan end date can be before the last finalized invoice
            # date. Any invoices generated after the plan end date will be voided.
            void_invoices: nil,
            # Body param: Only applicable when void_invoices is set to true. If true, for
            # every invoice that is voided we will also attempt to void/delete the stripe
            # invoice (if any). Stripe invoices will be voided if finalized or deleted if
            # still in draft state.
            void_stripe_invoices: nil,
            request_options: {}
          )
          end

          # Lists a customer plans adjustments. See the
          # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          # for details. This is a Plans (deprecated) endpoint. New clients should implement
          # using Contracts.
          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              limit: Integer,
              next_page: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse
              ]
            )
          end
          def list_price_adjustments(
            # Path param:
            customer_id:,
            # Path param: the ID of a customer-plan relationship
            customer_plan_id:,
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
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
end
