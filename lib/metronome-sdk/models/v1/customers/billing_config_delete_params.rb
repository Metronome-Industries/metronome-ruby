# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class BillingConfigDeleteParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute billing_provider_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams::BillingProviderType }

          # @!parse
          #   # @param customer_id [String]
          #   # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams::BillingProviderType]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(customer_id:, billing_provider_type:, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
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
          class BillingProviderType < MetronomeSDK::Enum
            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
