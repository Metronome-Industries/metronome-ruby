# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#update_config
      class CustomerUpdateConfigParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute leave_stripe_invoices_in_draft
        #   Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
        #   the client-level config if unset, which defaults to true if unset.
        #
        #   @return [Boolean, nil]
        optional :leave_stripe_invoices_in_draft, MetronomeSDK::Internal::Type::Boolean, nil?: true

        # @!attribute salesforce_account_id
        #   The Salesforce account ID for the customer
        #
        #   @return [String, nil]
        optional :salesforce_account_id, String, nil?: true

        # @!method initialize(customer_id:, leave_stripe_invoices_in_draft: nil, salesforce_account_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerUpdateConfigParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param leave_stripe_invoices_in_draft [Boolean, nil] Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
        #
        #   @param salesforce_account_id [String, nil] The Salesforce account ID for the customer
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
