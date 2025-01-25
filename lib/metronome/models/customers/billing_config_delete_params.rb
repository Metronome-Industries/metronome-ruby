# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class BillingConfigDeleteParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute billing_provider_type
        #
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigDeleteParams::BillingProviderType]
        required :billing_provider_type,
                 enum: -> { Metronome::Models::Customers::BillingConfigDeleteParams::BillingProviderType }

        # @!parse
        #   # @param customer_id [String]
        #   # @param billing_provider_type [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, billing_provider_type:, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # case billing_provider_type
        # in :aws_marketplace
        #   # ...
        # in :stripe
        #   # ...
        # in :netsuite
        #   # ...
        # in :custom
        #   # ...
        # in :azure_marketplace
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class BillingProviderType < Metronome::Enum
          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace

          finalize!
        end
      end
    end
  end
end
