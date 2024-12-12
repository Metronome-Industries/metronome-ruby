# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanEndParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] customer_plan_id
        #   @return [String]
        required :customer_plan_id, String

        # @!attribute [rw] ending_before
        #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] void_invoices
        #   If true, plan end date can be before the last finalized invoice date. Any invoices generated after the plan end date will be voided.
        #   @return [Boolean]
        optional :void_invoices, Metronome::BooleanModel

        # @!attribute [rw] void_stripe_invoices
        #   Only applicable when void_invoices is set to true. If true, for every invoice that is voided we will also attempt to void/delete the stripe invoice (if any). Stripe invoices will be voided if finalized or deleted if still in draft state.
        #   @return [Boolean]
        optional :void_stripe_invoices, Metronome::BooleanModel
      end
    end
  end
end
