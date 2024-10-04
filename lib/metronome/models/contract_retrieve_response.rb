# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::ContractRetrieveResponse::Data]
      required :data, -> { Metronome::Models::ContractRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amendments
        #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment>]
        required :amendments,
                 Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment })

        # @!attribute [rw] current
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :current, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] initial
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :initial, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] customer_billing_provider_configuration
        #   This field's availability is dependent on your client's configuration.
        #   @return [Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration]
        optional :customer_billing_provider_configuration,
                 -> { Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration }

        # @!attribute [rw] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
        #   @return [String]
        optional :uniqueness_key, String

        class Amendment < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] commits
          #   @return [Array<Metronome::Models::Commit>]
          required :commits, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

          # @!attribute [rw] created_at
          #   @return [DateTime]
          required :created_at, DateTime

          # @!attribute [rw] created_by
          #   @return [String]
          required :created_by, String

          # @!attribute [rw] overrides
          #   @return [Array<Metronome::Models::Override>]
          required :overrides, Metronome::ArrayOf.new(-> { Metronome::Models::Override })

          # @!attribute [rw] scheduled_charges
          #   @return [Array<Metronome::Models::ScheduledCharge>]
          required :scheduled_charges, Metronome::ArrayOf.new(-> { Metronome::Models::ScheduledCharge })

          # @!attribute [rw] starting_at
          #   @return [DateTime]
          required :starting_at, DateTime

          # @!attribute [rw] credits
          #   @return [Array<Metronome::Models::Credit>]
          optional :credits, Metronome::ArrayOf.new(-> { Metronome::Models::Credit })

          # @!attribute [rw] discounts
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::Discount>]
          optional :discounts, Metronome::ArrayOf.new(-> { Metronome::Models::Discount })

          # @!attribute [rw] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :netsuite_sales_order_id, String

          # @!attribute [rw] professional_services
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::ProService>]
          optional :professional_services, Metronome::ArrayOf.new(-> { Metronome::Models::ProService })

          # @!attribute [rw] reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty>]
          optional :reseller_royalties,
                   Metronome::ArrayOf.new(
                     lambda {
                       Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty
                     }
                   )

          # @!attribute [rw] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :salesforce_opportunity_id, String

          class ResellerRoyalty < BaseModel
            # @!attribute [rw] reseller_type
            #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: lambda {
                       Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType
                     }

            # @!attribute [rw] aws_account_number
            #   @return [String]
            optional :aws_account_number, String

            # @!attribute [rw] aws_offer_id
            #   @return [String]
            optional :aws_offer_id, String

            # @!attribute [rw] aws_payer_reference_id
            #   @return [String]
            optional :aws_payer_reference_id, String

            # @!attribute [rw] ending_before
            #   @return [DateTime]
            optional :ending_before, DateTime

            # @!attribute [rw] fraction
            #   @return [Float]
            optional :fraction, Float

            # @!attribute [rw] gcp_account_id
            #   @return [String]
            optional :gcp_account_id, String

            # @!attribute [rw] gcp_offer_id
            #   @return [String]
            optional :gcp_offer_id, String

            # @!attribute [rw] netsuite_reseller_id
            #   @return [String]
            optional :netsuite_reseller_id, String

            # @!attribute [rw] reseller_contract_value
            #   @return [Float]
            optional :reseller_contract_value, Float

            # @!attribute [rw] starting_at
            #   @return [DateTime]
            optional :starting_at, DateTime

            class ResellerType < Metronome::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE
            end
          end
        end

        class CustomerBillingProviderConfiguration < BaseModel
          # @!attribute [rw] billing_provider
          #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
          required :billing_provider,
                   enum: lambda {
                     Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                   }

          # @!attribute [rw] delivery_method
          #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
          required :delivery_method,
                   enum: lambda {
                     Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
                   }

          class BillingProvider < Metronome::Enum
            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace
          end

          class DeliveryMethod < Metronome::Enum
            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns
          end
        end
      end
    end
  end
end
