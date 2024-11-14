# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::ContractRetrieveResponse::Data]
      required :data, -> { Metronome::Models::ContractRetrieveResponse::Data }

      class Data < Metronome::BaseModel
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
        #   The billing provider configuration associated with a contract.
        #   @return [Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration]
        optional :customer_billing_provider_configuration,
                 -> { Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration }

        # @!attribute [rw] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
        #   @return [String]
        optional :uniqueness_key, String

        class Amendment < Metronome::BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] commits
          #   @return [Array<Metronome::Models::Commit>]
          required :commits, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

          # @!attribute [rw] created_at
          #   @return [Time]
          required :created_at, Time

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
          #   @return [Time]
          required :starting_at, Time

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
                     -> {
                       Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty
                     }
                   )

          # @!attribute [rw] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :salesforce_opportunity_id, String

          class ResellerRoyalty < Metronome::BaseModel
            # @!attribute [rw] reseller_type
            #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> {
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
            #   @return [Time]
            optional :ending_before, Time

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
            #   @return [Time]
            optional :starting_at, Time

            class ResellerType < Metronome::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE
            end

            # @!parse
            #   # Create a new instance of ResellerRoyalty from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :reseller_type
            #   #   @option data [String, nil] :aws_account_number
            #   #   @option data [String, nil] :aws_offer_id
            #   #   @option data [String, nil] :aws_payer_reference_id
            #   #   @option data [String, nil] :ending_before
            #   #   @option data [Float, nil] :fraction
            #   #   @option data [String, nil] :gcp_account_id
            #   #   @option data [String, nil] :gcp_offer_id
            #   #   @option data [String, nil] :netsuite_reseller_id
            #   #   @option data [Float, nil] :reseller_contract_value
            #   #   @option data [String, nil] :starting_at
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Amendment from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id
          #   #   @option data [Array<Object>] :commits
          #   #   @option data [String] :created_at
          #   #   @option data [String] :created_by
          #   #   @option data [Array<Object>] :overrides
          #   #   @option data [Array<Object>] :scheduled_charges
          #   #   @option data [String] :starting_at
          #   #   @option data [Array<Object>, nil] :credits
          #   #   @option data [Array<Object>, nil] :discounts This field's availability is dependent on your client's configuration.
          #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
          #   #   @option data [Array<Object>, nil] :professional_services This field's availability is dependent on your client's configuration.
          #   #   @option data [Array<Object>, nil] :reseller_royalties This field's availability is dependent on your client's configuration.
          #   #   @option data [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
          #   def initialize(data = {}) = super
        end

        class CustomerBillingProviderConfiguration < Metronome::BaseModel
          # @!attribute [rw] billing_provider
          #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
          required :billing_provider,
                   enum: -> {
                     Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                   }

          # @!attribute [rw] delivery_method
          #   @return [Symbol, Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
          required :delivery_method,
                   enum: -> {
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

          # @!parse
          #   # Create a new instance of CustomerBillingProviderConfiguration from a Hash of raw
          #   #   data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :billing_provider
          #   #   @option data [String] :delivery_method
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Array<Object>] :amendments
        #   #   @option data [Object] :current
        #   #   @option data [String] :customer_id
        #   #   @option data [Object] :initial
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [Object, nil] :customer_billing_provider_configuration The billing provider configuration associated with a contract.
        #   #   @option data [String, nil] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
        #   #     with a previously used uniqueness key, a new record will not be created and the
        #   #     request will fail with a 409 error.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ContractRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
