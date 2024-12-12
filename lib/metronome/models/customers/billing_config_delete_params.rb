# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class BillingConfigDeleteParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] billing_provider_type
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigDeleteParams::BillingProviderType]
        required :billing_provider_type,
                 enum: -> { Metronome::Models::Customers::BillingConfigDeleteParams::BillingProviderType }

        class BillingProviderType < Metronome::Enum
          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace
        end
      end
    end
  end
end
