# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class BillingConfigRetrieveParams < Metronome::BaseModel
        # @!attribute customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute billing_provider_type
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigRetrieveParams::BillingProviderType]
        required :billing_provider_type,
                 enum: -> { Metronome::Models::Customers::BillingConfigRetrieveParams::BillingProviderType }

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
