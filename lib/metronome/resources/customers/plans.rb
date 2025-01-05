# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Plans
        # @param client [Metronome::Client]
        #
        def initialize(client:)
          @client = client
        end

        # List the given customer's plans in reverse-chronological order.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::PlanListParams] Attributes to send in this request.
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [Integer] :limit Query param: Max number of results that should be returned
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::Customers::PlanListResponse>]
        #
        def list(params = {}, opts = {})
          parsed = Metronome::Models::Customers::PlanListParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :get,
            path: ["customers/%0s/plans", customer_id],
            query: parsed.except(:customer_id),
            page: Metronome::CursorPage,
            model: Metronome::Models::Customers::PlanListResponse
          }
          @client.request(req, opts)
        end

        # Associate an existing customer with a plan for a specified date range. See the
        #   [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   for details on the price adjustments.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::PlanAddParams] Attributes to send in this request.
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [String] :plan_id Body param:
        #
        #   @option params [Time] :starting_on Body param: RFC 3339 timestamp for when the plan becomes active for this
        #     customer. Must be at 0:00 UTC (midnight).
        #
        #   @option params [Time] :ending_before Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this
        #     customer. Must be at 0:00 UTC (midnight).
        #
        #   @option params [Float] :net_payment_terms_days Body param: Number of days after issuance of invoice after which the invoice is
        #     due (e.g. Net 30).
        #
        #   @option params [Array<Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment>] :overage_rate_adjustments Body param: An optional list of overage rates that override the rates of the
        #     original plan configuration. These new rates will apply to all pricing ramps.
        #
        #   @option params [Array<Metronome::Models::Customers::PlanAddParams::PriceAdjustment>] :price_adjustments Body param: A list of price adjustments can be applied on top of the pricing in
        #     the plans. See the
        #     [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #     for details.
        #
        #   @option params [Metronome::Models::Customers::PlanAddParams::TrialSpec] :trial_spec Body param: A custom trial can be set for the customer's plan. See the
        #     [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
        #     for details.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::PlanAddResponse]
        #
        def add(params = {}, opts = {})
          parsed = Metronome::Models::Customers::PlanAddParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :post,
            path: ["customers/%0s/plans/add", customer_id],
            body: parsed.except(:customer_id),
            model: Metronome::Models::Customers::PlanAddResponse
          }
          @client.request(req, opts)
        end

        # Change the end date of a customer's plan.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::PlanEndParams] Attributes to send in this request.
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [String] :customer_plan_id Path param: the ID of a customer-plan relationship
        #
        #   @option params [Time] :ending_before Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this
        #     customer. Must be at 0:00 UTC (midnight). If not provided, the plan end date
        #     will be cleared.
        #
        #   @option params [Boolean] :void_invoices Body param: If true, plan end date can be before the last finalized invoice
        #     date. Any invoices generated after the plan end date will be voided.
        #
        #   @option params [Boolean] :void_stripe_invoices Body param: Only applicable when void_invoices is set to true. If true, for
        #     every invoice that is voided we will also attempt to void/delete the stripe
        #     invoice (if any). Stripe invoices will be voided if finalized or deleted if
        #     still in draft state.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::PlanEndResponse]
        #
        def end_(params = {}, opts = {})
          parsed = Metronome::Models::Customers::PlanEndParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          customer_plan_id = parsed.fetch(:customer_plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :post,
            path: ["customers/%0s/plans/%1s/end", customer_id, customer_plan_id],
            body: parsed.except(:customer_id, :customer_plan_id),
            model: Metronome::Models::Customers::PlanEndResponse
          }
          @client.request(req, opts)
        end

        # Lists a customer plans adjustments. See the
        #   [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   for details.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::PlanListPriceAdjustmentsParams] Attributes to send in this request.
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [String] :customer_plan_id Path param: the ID of a customer-plan relationship
        #
        #   @option params [Integer] :limit Query param: Max number of results that should be returned
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::Customers::PlanListPriceAdjustmentsResponse>]
        #
        def list_price_adjustments(params = {}, opts = {})
          parsed = Metronome::Models::Customers::PlanListPriceAdjustmentsParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          customer_plan_id = parsed.fetch(:customer_plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :get,
            path: ["customers/%0s/plans/%1s/priceAdjustments", customer_id, customer_plan_id],
            query: parsed.except(:customer_id, :customer_plan_id),
            page: Metronome::CursorPage,
            model: Metronome::Models::Customers::PlanListPriceAdjustmentsResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
