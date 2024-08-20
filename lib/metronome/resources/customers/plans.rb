# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Plans
        def initialize(client:)
          @client = client
        end

        # List the given customer's plans in reverse-chronological order.
        # 
        # @param customer_id [String]
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :limit Max number of results that should be returned
        # @option params [String] :next_page Cursor that indicates where the next page of results should start.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::CursorPage<Metronome::Models::PlanListResponse>]
        def list(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/plans"
          req[:query] = params
          req[:page] = Metronome::CursorPage
          req[:model] = Metronome::Models::PlanListResponse
          @client.request(req, opts)
        end

        # Associate an existing customer with a plan for a specified date range. See the
        #   [price adjustments documentation](https://docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   for details on the price adjustments.
        # 
        # @param customer_id [String]
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :plan_id
        # @option params [String] :starting_on RFC 3339 timestamp for when the plan becomes active for this customer. Must be
        #   at 0:00 UTC (midnight).
        # @option params [String] :ending_before RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
        #   at 0:00 UTC (midnight).
        # @option params [Float] :net_payment_terms_days Number of days after issuance of invoice after which the invoice is due (e.g.
        #   Net 30).
        # @option params [Array<OverageRateAdjustment>] :overage_rate_adjustments An optional list of overage rates that override the rates of the original plan
        #   configuration. These new rates will apply to all pricing ramps.
        # @option params [Array<PriceAdjustment>] :price_adjustments A list of price adjustments can be applied on top of the pricing in the plans.
        #   See the
        #   [price adjustments documentation](https://docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   for details.
        # @option params [TrialSpec] :trial_spec A custom trial can be set for the customer's plan. See the
        #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
        #   for details.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::PlanAddResponse]
        def add(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/customers/#{customer_id}/plans/add"
          req[:body] = params
          req[:model] = Metronome::Models::PlanAddResponse
          @client.request(req, opts)
        end

        # Change the end date of a customer's plan.
        # 
        # @param customer_id [String]
        # 
        # @param customer_plan_id [String] the ID of a customer-plan relationship
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :ending_before RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
        #   at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
        # @option params [Boolean] :void_invoices If true, plan end date can be before the last finalized invoice date. Any
        #   invoices generated after the plan end date will be voided.
        # @option params [Boolean] :void_stripe_invoices Only applicable when void_invoices is set to true. If true, for every invoice
        #   that is voided we will also attempt to void/delete the stripe invoice (if any).
        #   Stripe invoices will be voided if finalized or deleted if still in draft state.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::PlanEndResponse]
        def end_(customer_id, customer_plan_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/customers/#{customer_id}/plans/#{customer_plan_id}/end"
          req[:body] = params
          req[:model] = Metronome::Models::PlanEndResponse
          @client.request(req, opts)
        end

        # Lists a customer plans adjustments. See the
        #   [price adjustments documentation](https://docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   for details.
        # 
        # @param customer_id [String]
        # 
        # @param customer_plan_id [String] the ID of a customer-plan relationship
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :limit Max number of results that should be returned
        # @option params [String] :next_page Cursor that indicates where the next page of results should start.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::CursorPage<Metronome::Models::PlanListPriceAdjustmentsResponse>]
        def list_price_adjustments(customer_id, customer_plan_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/plans/#{customer_plan_id}/priceAdjustments"
          req[:query] = params
          req[:page] = Metronome::CursorPage
          req[:model] = Metronome::Models::PlanListPriceAdjustmentsResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
