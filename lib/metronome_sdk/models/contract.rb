# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Contract < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amendments
      #
      #   @return [Array<MetronomeSDK::Models::Contract::Amendment>]
      required :amendments, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract::Amendment] }

      # @!attribute current
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments]
      required :current, -> { MetronomeSDK::ContractWithoutAmendments }

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute initial
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments]
      required :initial, -> { MetronomeSDK::ContractWithoutAmendments }

      # @!attribute archived_at
      #   RFC 3339 timestamp indicating when the contract was archived. If not returned,
      #   the contract is not archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!attribute custom_fields
      #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute customer_billing_provider_configuration
      #   The billing provider configuration associated with a contract.
      #
      #   @return [MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration, nil]
      optional :customer_billing_provider_configuration,
               -> { MetronomeSDK::Contract::CustomerBillingProviderConfiguration }

      # @!attribute prepaid_balance_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration, nil]
      optional :prepaid_balance_threshold_configuration,
               -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration }

      # @!attribute priority
      #   Priority of the contract.
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!attribute scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #   usage invoice. The charge's `timestamp` must match the usage invoice's
      #   `ending_before` date for consolidation to occur. This field cannot be modified
      #   after a Contract has been created. If this field is omitted, charges will appear
      #   on a separate invoice from usage charges.
      #
      #   @return [Symbol, MetronomeSDK::Models::Contract::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices }

      # @!attribute spend_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::SpendThresholdConfiguration, nil]
      optional :spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfiguration }

      # @!attribute subscriptions
      #   List of subscriptions on the contract.
      #
      #   @return [Array<MetronomeSDK::Models::Subscription>, nil]
      optional :subscriptions, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Subscription] }

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!method initialize(id:, amendments:, current:, customer_id:, initial:, archived_at: nil, custom_fields: nil, customer_billing_provider_configuration: nil, prepaid_balance_threshold_configuration: nil, priority: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::Contract} for more details.
      #
      #   @param id [String]
      #
      #   @param amendments [Array<MetronomeSDK::Models::Contract::Amendment>]
      #
      #   @param current [MetronomeSDK::Models::ContractWithoutAmendments]
      #
      #   @param customer_id [String]
      #
      #   @param initial [MetronomeSDK::Models::ContractWithoutAmendments]
      #
      #   @param archived_at [Time] RFC 3339 timestamp indicating when the contract was archived. If not returned, t
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @param customer_billing_provider_configuration [MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration] The billing provider configuration associated with a contract.
      #
      #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
      #
      #   @param priority [Float] Priority of the contract.
      #
      #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::Contract::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
      #
      #   @param subscriptions [Array<MetronomeSDK::Models::Subscription>] List of subscriptions on the contract.
      #
      #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

      class Amendment < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute commits
        #
        #   @return [Array<MetronomeSDK::Models::Commit>]
        required :commits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Commit] }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute created_by
        #
        #   @return [String]
        required :created_by, String

        # @!attribute overrides
        #
        #   @return [Array<MetronomeSDK::Models::Override>]
        required :overrides, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Override] }

        # @!attribute scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::ScheduledCharge>]
        required :scheduled_charges, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduledCharge] }

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute credits
        #
        #   @return [Array<MetronomeSDK::Models::Credit>, nil]
        optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Credit] }

        # @!attribute discounts
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::Discount>, nil]
        optional :discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::ProService>, nil]
        optional :professional_services, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService] }

        # @!attribute reseller_royalties
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::Contract::Amendment::ResellerRoyalty>, nil]
        optional :reseller_royalties,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract::Amendment::ResellerRoyalty] }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!method initialize(id:, commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, credits: nil, discounts: nil, netsuite_sales_order_id: nil, professional_services: nil, reseller_royalties: nil, salesforce_opportunity_id: nil)
        #   @param id [String]
        #
        #   @param commits [Array<MetronomeSDK::Models::Commit>]
        #
        #   @param created_at [Time]
        #
        #   @param created_by [String]
        #
        #   @param overrides [Array<MetronomeSDK::Models::Override>]
        #
        #   @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
        #
        #   @param starting_at [Time]
        #
        #   @param credits [Array<MetronomeSDK::Models::Credit>]
        #
        #   @param discounts [Array<MetronomeSDK::Models::Discount>] This field's availability is dependent on your client's configuration.
        #
        #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param professional_services [Array<MetronomeSDK::Models::ProService>] This field's availability is dependent on your client's configuration.
        #
        #   @param reseller_royalties [Array<MetronomeSDK::Models::Contract::Amendment::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
        #
        #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.

        class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::Amendment::ResellerRoyalty::ResellerType]
          required :reseller_type, enum: -> { MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType }

          # @!attribute aws_account_number
          #
          #   @return [String, nil]
          optional :aws_account_number, String

          # @!attribute aws_offer_id
          #
          #   @return [String, nil]
          optional :aws_offer_id, String

          # @!attribute aws_payer_reference_id
          #
          #   @return [String, nil]
          optional :aws_payer_reference_id, String

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute fraction
          #
          #   @return [Float, nil]
          optional :fraction, Float

          # @!attribute gcp_account_id
          #
          #   @return [String, nil]
          optional :gcp_account_id, String

          # @!attribute gcp_offer_id
          #
          #   @return [String, nil]
          optional :gcp_offer_id, String

          # @!attribute netsuite_reseller_id
          #
          #   @return [String, nil]
          optional :netsuite_reseller_id, String

          # @!attribute reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!attribute starting_at
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!method initialize(reseller_type:, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, fraction: nil, gcp_account_id: nil, gcp_offer_id: nil, netsuite_reseller_id: nil, reseller_contract_value: nil, starting_at: nil)
          #   @param reseller_type [Symbol, MetronomeSDK::Models::Contract::Amendment::ResellerRoyalty::ResellerType]
          #   @param aws_account_number [String]
          #   @param aws_offer_id [String]
          #   @param aws_payer_reference_id [String]
          #   @param ending_before [Time, nil]
          #   @param fraction [Float]
          #   @param gcp_account_id [String]
          #   @param gcp_offer_id [String]
          #   @param netsuite_reseller_id [String]
          #   @param reseller_contract_value [Float]
          #   @param starting_at [Time]

          # @see MetronomeSDK::Models::Contract::Amendment::ResellerRoyalty#reseller_type
          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see MetronomeSDK::Models::Contract#customer_billing_provider_configuration
      class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute archived_at
        #
        #   @return [Time, nil]
        required :archived_at, Time, nil?: true

        # @!attribute billing_provider
        #
        #   @return [Symbol, MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration::BillingProvider]
        required :billing_provider,
                 enum: -> { MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider }

        # @!attribute delivery_method
        #
        #   @return [Symbol, MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration::DeliveryMethod]
        required :delivery_method,
                 enum: -> { MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod }

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute configuration
        #   Configuration for the billing provider. The structure of this object is specific
        #   to the billing provider.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

        # @!method initialize(archived_at:, billing_provider:, delivery_method:, id: nil, configuration: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration} for more
        #   details.
        #
        #   The billing provider configuration associated with a contract.
        #
        #   @param archived_at [Time, nil]
        #
        #   @param billing_provider [Symbol, MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration::BillingProvider]
        #
        #   @param delivery_method [Symbol, MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration::DeliveryMethod]
        #
        #   @param id [String]
        #
        #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific

        # @see MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration#billing_provider
        module BillingProvider
          extend MetronomeSDK::Internal::Type::Enum

          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace
          METRONOME = :metronome

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration#delivery_method
        module DeliveryMethod
          extend MetronomeSDK::Internal::Type::Enum

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      #
      # @see MetronomeSDK::Models::Contract#scheduled_charges_on_usage_invoices
      module ScheduledChargesOnUsageInvoices
        extend MetronomeSDK::Internal::Type::Enum

        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
