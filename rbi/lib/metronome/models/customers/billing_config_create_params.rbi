# typed: strong

module Metronome
  module Models
    module Customers
      class BillingConfigCreateParams < Metronome::BaseModel
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

        sig { returns(String) }
        def billing_provider_customer_id
        end

        sig { params(_: String).returns(String) }
        def billing_provider_customer_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def aws_product_code
        end

        sig { params(_: String).returns(String) }
        def aws_product_code=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def aws_region
        end

        sig { params(_: Symbol).returns(Symbol) }
        def aws_region=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def stripe_collection_method
        end

        sig { params(_: Symbol).returns(Symbol) }
        def stripe_collection_method=(_)
        end

        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            billing_provider_customer_id: String,
            aws_product_code: String,
            aws_region: Symbol,
            stripe_collection_method: Symbol,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          customer_id:,
          billing_provider_type:,
          billing_provider_customer_id:,
          aws_product_code: nil,
          aws_region: nil,
          stripe_collection_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              billing_provider_type: Symbol,
              billing_provider_customer_id: String,
              aws_product_code: String,
              aws_region: Symbol,
              stripe_collection_method: Symbol,
              request_options: Metronome::RequestOptions
            }
          )
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

        class AwsRegion < Metronome::Enum
          abstract!

          AF_SOUTH_1 = :"af-south-1"
          AP_EAST_1 = :"ap-east-1"
          AP_NORTHEAST_1 = :"ap-northeast-1"
          AP_NORTHEAST_2 = :"ap-northeast-2"
          AP_NORTHEAST_3 = :"ap-northeast-3"
          AP_SOUTH_1 = :"ap-south-1"
          AP_SOUTHEAST_1 = :"ap-southeast-1"
          AP_SOUTHEAST_2 = :"ap-southeast-2"
          CA_CENTRAL_1 = :"ca-central-1"
          CN_NORTH_1 = :"cn-north-1"
          CN_NORTHWEST_1 = :"cn-northwest-1"
          EU_CENTRAL_1 = :"eu-central-1"
          EU_NORTH_1 = :"eu-north-1"
          EU_SOUTH_1 = :"eu-south-1"
          EU_WEST_1 = :"eu-west-1"
          EU_WEST_2 = :"eu-west-2"
          EU_WEST_3 = :"eu-west-3"
          ME_SOUTH_1 = :"me-south-1"
          SA_EAST_1 = :"sa-east-1"
          US_EAST_1 = :"us-east-1"
          US_EAST_2 = :"us-east-2"
          US_GOV_EAST_1 = :"us-gov-east-1"
          US_GOV_WEST_1 = :"us-gov-west-1"
          US_WEST_1 = :"us-west-1"
          US_WEST_2 = :"us-west-2"

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class StripeCollectionMethod < Metronome::Enum
          abstract!

          CHARGE_AUTOMATICALLY = :charge_automatically
          SEND_INVOICE = :send_invoice

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
