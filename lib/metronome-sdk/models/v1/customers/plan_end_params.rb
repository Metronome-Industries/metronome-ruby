# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanEndParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute customer_plan_id
          #
          #   @return [String]
          required :customer_plan_id, String

          # @!attribute [r] ending_before
          #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #     at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] void_invoices
          #   If true, plan end date can be before the last finalized invoice date. Any
          #     invoices generated after the plan end date will be voided.
          #
          #   @return [Boolean, nil]
          optional :void_invoices, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :void_invoices

          # @!attribute [r] void_stripe_invoices
          #   Only applicable when void_invoices is set to true. If true, for every invoice
          #     that is voided we will also attempt to void/delete the stripe invoice (if any).
          #     Stripe invoices will be voided if finalized or deleted if still in draft state.
          #
          #   @return [Boolean, nil]
          optional :void_stripe_invoices, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :void_stripe_invoices

          # @!parse
          #   # @param customer_id [String]
          #   # @param customer_plan_id [String]
          #   # @param ending_before [Time]
          #   # @param void_invoices [Boolean]
          #   # @param void_stripe_invoices [Boolean]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     customer_id:,
          #     customer_plan_id:,
          #     ending_before: nil,
          #     void_invoices: nil,
          #     void_stripe_invoices: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
