# frozen_string_literal: true

module Metronome
  module Models
    class CustomerUpdateConfigParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute leave_stripe_invoices_in_draft
      #   Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to the client-level config if unset, which defaults to true if unset.
      #
      #   @return [Boolean]
      optional :leave_stripe_invoices_in_draft, Metronome::BooleanModel

      # @!attribute salesforce_account_id
      #   The Salesforce account ID for the customer
      #
      #   @return [String]
      optional :salesforce_account_id, String
    end
  end
end
