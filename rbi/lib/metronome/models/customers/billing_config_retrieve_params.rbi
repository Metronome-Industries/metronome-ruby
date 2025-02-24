# typed: strong

module Metronome
  module Models
    module Customers
      class BillingConfigRetrieveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Symbol) }
        def billing_provider_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def billing_provider_type=(_)
        end

        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(customer_id:, billing_provider_type:, request_options: {})
        end

        sig do
          override
            .returns({
                       customer_id: String,
                       billing_provider_type: Symbol,
                       request_options: Metronome::RequestOptions
                     })
        end
        def to_hash
        end

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
          def self.values
          end
        end
      end
    end
  end
end
