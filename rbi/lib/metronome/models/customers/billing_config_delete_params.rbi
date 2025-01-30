# typed: strong

module Metronome
  module Models
    module Customers
      class BillingConfigDeleteParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all({customer_id: String, billing_provider_type: Symbol}, Metronome::RequestParameters::Shape)
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Symbol) }
        attr_accessor :billing_provider_type

        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(customer_id:, billing_provider_type:, request_options: {}); end

        sig { returns(Metronome::Models::Customers::BillingConfigDeleteParams::Shape) }
        def to_h; end

        class BillingProviderType < Metronome::Enum
          abstract!

          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
