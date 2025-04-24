# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerUpdateConfigParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute leave_stripe_invoices_in_draft
        #   Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
        #     the client-level config if unset, which defaults to true if unset.
        #
        #   @return [Boolean, nil]
        optional :leave_stripe_invoices_in_draft, MetronomeSDK::BooleanModel, nil?: true

        # @!attribute salesforce_account_id
        #   The Salesforce account ID for the customer
        #
        #   @return [String, nil]
        optional :salesforce_account_id, String, nil?: true

        # @!parse
        #   # @param customer_id [String]
        #   # @param leave_stripe_invoices_in_draft [Boolean, nil]
        #   # @param salesforce_account_id [String, nil]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, leave_stripe_invoices_in_draft: nil, salesforce_account_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
