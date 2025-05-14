# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Plans#end_
        class PlanEndParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute customer_plan_id
          #
          #   @return [String]
          required :customer_plan_id, String

          # @!attribute ending_before
          #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #   at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute void_invoices
          #   If true, plan end date can be before the last finalized invoice date. Any
          #   invoices generated after the plan end date will be voided.
          #
          #   @return [Boolean, nil]
          optional :void_invoices, MetronomeSDK::Internal::Type::Boolean

          # @!attribute void_stripe_invoices
          #   Only applicable when void_invoices is set to true. If true, for every invoice
          #   that is voided we will also attempt to void/delete the stripe invoice (if any).
          #   Stripe invoices will be voided if finalized or deleted if still in draft state.
          #
          #   @return [Boolean, nil]
          optional :void_stripe_invoices, MetronomeSDK::Internal::Type::Boolean

          # @!method initialize(customer_id:, customer_plan_id:, ending_before: nil, void_invoices: nil, void_stripe_invoices: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::PlanEndParams} for more details.
          #
          #   @param customer_id [String]
          #
          #   @param customer_plan_id [String]
          #
          #   @param ending_before [Time] RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #
          #   @param void_invoices [Boolean] If true, plan end date can be before the last finalized invoice date. Any invoic
          #
          #   @param void_stripe_invoices [Boolean] Only applicable when void_invoices is set to true. If true, for every invoice th
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
