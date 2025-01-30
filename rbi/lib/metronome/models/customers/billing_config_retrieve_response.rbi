# typed: strong

module Metronome
  module Models
    module Customers
      class BillingConfigRetrieveResponse < Metronome::BaseModel
        Shape = T.type_alias { {data: Metronome::Models::Customers::BillingConfigRetrieveResponse::Data} }

        sig { returns(Metronome::Models::Customers::BillingConfigRetrieveResponse::Data) }
        attr_accessor :data

        sig { params(data: Metronome::Models::Customers::BillingConfigRetrieveResponse::Data).void }
        def initialize(data:); end

        sig { returns(Metronome::Models::Customers::BillingConfigRetrieveResponse::Shape) }
        def to_h; end

        class Data < Metronome::BaseModel
          Shape = T.type_alias do
            {
              aws_expiration_date: Time,
              aws_product_code: String,
              aws_region: Symbol,
              azure_expiration_date: Time,
              azure_plan_id: String,
              azure_start_date: Time,
              azure_subscription_status: Symbol,
              billing_provider_customer_id: String,
              stripe_collection_method: Symbol
            }
          end

          sig { returns(T.nilable(Time)) }
          attr_reader :aws_expiration_date

          sig { params(aws_expiration_date: Time).void }
          attr_writer :aws_expiration_date

          sig { returns(T.nilable(String)) }
          attr_reader :aws_product_code

          sig { params(aws_product_code: String).void }
          attr_writer :aws_product_code

          sig { returns(T.nilable(Symbol)) }
          attr_reader :aws_region

          sig { params(aws_region: Symbol).void }
          attr_writer :aws_region

          sig { returns(T.nilable(Time)) }
          attr_reader :azure_expiration_date

          sig { params(azure_expiration_date: Time).void }
          attr_writer :azure_expiration_date

          sig { returns(T.nilable(String)) }
          attr_reader :azure_plan_id

          sig { params(azure_plan_id: String).void }
          attr_writer :azure_plan_id

          sig { returns(T.nilable(Time)) }
          attr_reader :azure_start_date

          sig { params(azure_start_date: Time).void }
          attr_writer :azure_start_date

          sig { returns(T.nilable(Symbol)) }
          attr_reader :azure_subscription_status

          sig { params(azure_subscription_status: Symbol).void }
          attr_writer :azure_subscription_status

          sig { returns(T.nilable(String)) }
          attr_reader :billing_provider_customer_id

          sig { params(billing_provider_customer_id: String).void }
          attr_writer :billing_provider_customer_id

          sig { returns(T.nilable(Symbol)) }
          attr_reader :stripe_collection_method

          sig { params(stripe_collection_method: Symbol).void }
          attr_writer :stripe_collection_method

          sig do
            params(
              aws_expiration_date: Time,
              aws_product_code: String,
              aws_region: Symbol,
              azure_expiration_date: Time,
              azure_plan_id: String,
              azure_start_date: Time,
              azure_subscription_status: Symbol,
              billing_provider_customer_id: String,
              stripe_collection_method: Symbol
            ).void
          end
          def initialize(
            aws_expiration_date: nil,
            aws_product_code: nil,
            aws_region: nil,
            azure_expiration_date: nil,
            azure_plan_id: nil,
            azure_start_date: nil,
            azure_subscription_status: nil,
            billing_provider_customer_id: nil,
            stripe_collection_method: nil
          ); end

          sig { returns(Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::Shape) }
          def to_h; end

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
            def self.values; end
          end

          class AzureSubscriptionStatus < Metronome::Enum
            abstract!

            SUBSCRIBED = :Subscribed
            UNSUBSCRIBED = :Unsubscribed
            SUSPENDED = :Suspended
            PENDING_FULFILLMENT_START = :PendingFulfillmentStart

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end

          class StripeCollectionMethod < Metronome::Enum
            abstract!

            CHARGE_AUTOMATICALLY = :charge_automatically
            SEND_INVOICE = :send_invoice

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
