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
      #   @return [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration, nil]
      optional :prepaid_balance_threshold_configuration,
               -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration }

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
      #   @return [MetronomeSDK::Models::Contract::SpendThresholdConfiguration, nil]
      optional :spend_threshold_configuration, -> { MetronomeSDK::Contract::SpendThresholdConfiguration }

      # @!attribute subscriptions
      #   List of subscriptions on the contract.
      #
      #   @return [Array<MetronomeSDK::Models::Contract::Subscription>, nil]
      optional :subscriptions,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract::Subscription] }

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
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param customer_billing_provider_configuration [MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration] The billing provider configuration associated with a contract.
      #
      #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration]
      #
      #   @param priority [Float] Priority of the contract.
      #
      #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::Contract::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      #   @param spend_threshold_configuration [MetronomeSDK::Models::Contract::SpendThresholdConfiguration]
      #
      #   @param subscriptions [Array<MetronomeSDK::Models::Contract::Subscription>] List of subscriptions on the contract.
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

        # @!method initialize(billing_provider:, delivery_method:, id: nil, configuration: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Contract::CustomerBillingProviderConfiguration} for more
        #   details.
        #
        #   The billing provider configuration associated with a contract.
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

      # @see MetronomeSDK::Models::Contract#prepaid_balance_threshold_configuration
      class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit
        #
        #   @return [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit]
        required :commit, -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #   threshold_amount. Toggling to true will result an immediate evaluation,
        #   regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

        # @!attribute recharge_to_amount
        #   Specify the amount the balance should be recharged to.
        #
        #   @return [Float]
        required :recharge_to_amount, Float

        # @!attribute threshold_amount
        #   Specify the threshold amount for the contract. Each time the contract's prepaid
        #   balance lowers to this amount, a threshold charge will be initiated.
        #
        #   @return [Float]
        required :threshold_amount, Float

        # @!attribute custom_credit_type_id
        #   If provided, the threshold, recharge-to amount, and the resulting threshold
        #   commit amount will be in terms of this credit type instead of the fiat currency.
        #
        #   @return [String, nil]
        optional :custom_credit_type_id, String

        # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:, custom_credit_type_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration} for more
        #   details.
        #
        #   @param commit [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit]
        #
        #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
        #
        #   @param payment_gate_config [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
        #
        #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
        #
        #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid
        #
        #   @param custom_credit_type_id [String] If provided, the threshold, recharge-to amount, and the resulting threshold comm

        # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration#commit
        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #   The commit product that will be used to generate the line item for commit
          #   payment.
          #
          #   @return [String]
          required :product_id, String

          # @!attribute applicable_product_ids
          #   Which products the threshold commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the threshold commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   Specify the name of the line item for the threshold charge. If left blank, it
          #   will default to the commit product name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil]
          optional :specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::Commit::Specifier] }

          # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit}
          #   for more details.
          #
          #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
          #
          #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If applicable_product_ids, appli
          #
          #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If applicable_product_ids, applicabl
          #
          #   @param description [String]
          #
          #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute presentation_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   If provided, the specifier will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #   If provided, the specifier will only apply to products with all the specified
            #   tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::Commit::Specifier}
            #   for more details.
            #
            #   @param presentation_group_values [Hash{Symbol=>String}]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]
            #
            #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
            #
            #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
          end
        end

        # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration#payment_gate_config
        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #   facilitate payment using your own payment integration. Select NONE if you do not
          #   wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

          # @!attribute precalculated_tax_config
          #   Only applicable if using PRECALCULATED as your tax type.
          #
          #   @return [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig, nil]
          optional :precalculated_tax_config,
                   -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig }

          # @!attribute stripe_config
          #   Only applicable if using STRIPE as your payment gate type.
          #
          #   @return [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

          # @!attribute tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #   will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

          # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
          #   for more details.
          #
          #   @param payment_gate_type [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
          #
          #   @param precalculated_tax_config [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
          #
          #   @param stripe_config [MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gate type.
          #
          #   @param tax_type [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          #
          # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#precalculated_tax_config
          class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute tax_amount
            #   Amount of tax to be applied. This should be in the same currency and
            #   denomination as the commit's invoice schedule
            #
            #   @return [Float]
            required :tax_amount, Float

            # @!attribute tax_name
            #   Name of the tax to be applied. This may be used in an invoice line item
            #   description.
            #
            #   @return [String, nil]
            optional :tax_name, String

            # @!method initialize(tax_amount:, tax_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig}
            #   for more details.
            #
            #   Only applicable if using PRECALCULATED as your tax type.
            #
            #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
            #
            #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
          end

          # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_type
            #   If left blank, will default to INVOICE
            #
            #   @return [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> { MetronomeSDK::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

            # @!attribute invoice_metadata
            #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            #   your payment type.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

            # @!method initialize(payment_type:, invoice_metadata: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig}
            #   for more details.
            #
            #   Only applicable if using STRIPE as your payment gate type.
            #
            #   @param payment_type [Symbol, MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
            #
            #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as

            # If left blank, will default to INVOICE
            #
            # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
            module PaymentType
              extend MetronomeSDK::Internal::Type::Enum

              INVOICE = :INVOICE
              PAYMENT_INTENT = :PAYMENT_INTENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          #
          # @see MetronomeSDK::Models::Contract::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
          module TaxType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            ANROK = :ANROK
            PRECALCULATED = :PRECALCULATED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
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

      # @see MetronomeSDK::Models::Contract#spend_threshold_configuration
      class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit
        #
        #   @return [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::Commit]
        required :commit, -> { MetronomeSDK::Contract::SpendThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #   threshold_amount. Toggling to true will result an immediate evaluation,
        #   regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig }

        # @!attribute threshold_amount
        #   Specify the threshold amount for the contract. Each time the contract's usage
        #   hits this amount, a threshold charge will be initiated.
        #
        #   @return [Float]
        required :threshold_amount, Float

        # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Contract::SpendThresholdConfiguration} for more details.
        #
        #   @param commit [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::Commit]
        #
        #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
        #
        #   @param payment_gate_config [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig]
        #
        #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

        # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration#commit
        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #   The commit product that will be used to generate the line item for commit
          #   payment.
          #
          #   @return [String]
          required :product_id, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   Specify the name of the line item for the threshold charge. If left blank, it
          #   will default to the commit product name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(product_id:, description: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::Contract::SpendThresholdConfiguration::Commit} for more
          #   details.
          #
          #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
          #
          #   @param description [String]
          #
          #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
        end

        # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration#payment_gate_config
        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #   facilitate payment using your own payment integration. Select NONE if you do not
          #   wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

          # @!attribute precalculated_tax_config
          #   Only applicable if using PRECALCULATED as your tax type.
          #
          #   @return [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig, nil]
          optional :precalculated_tax_config,
                   -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig }

          # @!attribute stripe_config
          #   Only applicable if using STRIPE as your payment gate type.
          #
          #   @return [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

          # @!attribute tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #   will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

          # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig}
          #   for more details.
          #
          #   @param payment_gate_type [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
          #
          #   @param precalculated_tax_config [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
          #
          #   @param stripe_config [MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gate type.
          #
          #   @param tax_type [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          #
          # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig#precalculated_tax_config
          class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute tax_amount
            #   Amount of tax to be applied. This should be in the same currency and
            #   denomination as the commit's invoice schedule
            #
            #   @return [Float]
            required :tax_amount, Float

            # @!attribute tax_name
            #   Name of the tax to be applied. This may be used in an invoice line item
            #   description.
            #
            #   @return [String, nil]
            optional :tax_name, String

            # @!method initialize(tax_amount:, tax_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig}
            #   for more details.
            #
            #   Only applicable if using PRECALCULATED as your tax type.
            #
            #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
            #
            #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
          end

          # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_type
            #   If left blank, will default to INVOICE
            #
            #   @return [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> { MetronomeSDK::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

            # @!attribute invoice_metadata
            #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            #   your payment type.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

            # @!method initialize(payment_type:, invoice_metadata: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig}
            #   for more details.
            #
            #   Only applicable if using STRIPE as your payment gate type.
            #
            #   @param payment_type [Symbol, MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
            #
            #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as

            # If left blank, will default to INVOICE
            #
            # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
            module PaymentType
              extend MetronomeSDK::Internal::Type::Enum

              INVOICE = :INVOICE
              PAYMENT_INTENT = :PAYMENT_INTENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          #
          # @see MetronomeSDK::Models::Contract::SpendThresholdConfiguration::PaymentGateConfig#tax_type
          module TaxType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            ANROK = :ANROK
            PRECALCULATED = :PRECALCULATED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class Subscription < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute collection_schedule
        #
        #   @return [Symbol, MetronomeSDK::Models::Contract::Subscription::CollectionSchedule]
        required :collection_schedule, enum: -> { MetronomeSDK::Contract::Subscription::CollectionSchedule }

        # @!attribute proration
        #
        #   @return [MetronomeSDK::Models::Contract::Subscription::Proration]
        required :proration, -> { MetronomeSDK::Contract::Subscription::Proration }

        # @!attribute quantity_schedule
        #   List of quantity schedule items for the subscription. Only includes the current
        #   quantity and future quantity changes.
        #
        #   @return [Array<MetronomeSDK::Models::Contract::Subscription::QuantitySchedule>]
        required :quantity_schedule,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract::Subscription::QuantitySchedule] }

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute subscription_rate
        #
        #   @return [MetronomeSDK::Models::Contract::Subscription::SubscriptionRate]
        required :subscription_rate, -> { MetronomeSDK::Contract::Subscription::SubscriptionRate }

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute fiat_credit_type_id
        #
        #   @return [String, nil]
        optional :fiat_credit_type_id, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(collection_schedule:, proration:, quantity_schedule:, starting_at:, subscription_rate:, id: nil, custom_fields: nil, description: nil, ending_before: nil, fiat_credit_type_id: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Contract::Subscription} for more details.
        #
        #   @param collection_schedule [Symbol, MetronomeSDK::Models::Contract::Subscription::CollectionSchedule]
        #
        #   @param proration [MetronomeSDK::Models::Contract::Subscription::Proration]
        #
        #   @param quantity_schedule [Array<MetronomeSDK::Models::Contract::Subscription::QuantitySchedule>] List of quantity schedule items for the subscription. Only includes the current
        #
        #   @param starting_at [Time]
        #
        #   @param subscription_rate [MetronomeSDK::Models::Contract::Subscription::SubscriptionRate]
        #
        #   @param id [String]
        #
        #   @param custom_fields [Hash{Symbol=>String}]
        #
        #   @param description [String]
        #
        #   @param ending_before [Time]
        #
        #   @param fiat_credit_type_id [String]
        #
        #   @param name [String]

        # @see MetronomeSDK::Models::Contract::Subscription#collection_schedule
        module CollectionSchedule
          extend MetronomeSDK::Internal::Type::Enum

          ADVANCE = :ADVANCE
          ARREARS = :ARREARS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::Contract::Subscription#proration
        class Proration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute invoice_behavior
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::Subscription::Proration::InvoiceBehavior]
          required :invoice_behavior, enum: -> { MetronomeSDK::Contract::Subscription::Proration::InvoiceBehavior }

          # @!attribute is_prorated
          #
          #   @return [Boolean]
          required :is_prorated, MetronomeSDK::Internal::Type::Boolean

          # @!method initialize(invoice_behavior:, is_prorated:)
          #   @param invoice_behavior [Symbol, MetronomeSDK::Models::Contract::Subscription::Proration::InvoiceBehavior]
          #   @param is_prorated [Boolean]

          # @see MetronomeSDK::Models::Contract::Subscription::Proration#invoice_behavior
          module InvoiceBehavior
            extend MetronomeSDK::Internal::Type::Enum

            BILL_IMMEDIATELY = :BILL_IMMEDIATELY
            BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!method initialize(quantity:, starting_at:, ending_before: nil)
          #   @param quantity [Float]
          #   @param starting_at [Time]
          #   @param ending_before [Time]
        end

        # @see MetronomeSDK::Models::Contract::Subscription#subscription_rate
        class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::Contract::Subscription::SubscriptionRate::BillingFrequency]
          required :billing_frequency,
                   enum: -> { MetronomeSDK::Contract::Subscription::SubscriptionRate::BillingFrequency }

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::Contract::Subscription::SubscriptionRate::Product]
          required :product, -> { MetronomeSDK::Contract::Subscription::SubscriptionRate::Product }

          # @!method initialize(billing_frequency:, product:)
          #   @param billing_frequency [Symbol, MetronomeSDK::Models::Contract::Subscription::SubscriptionRate::BillingFrequency]
          #   @param product [MetronomeSDK::Models::Contract::Subscription::SubscriptionRate::Product]

          # @see MetronomeSDK::Models::Contract::Subscription::SubscriptionRate#billing_frequency
          module BillingFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::Contract::Subscription::SubscriptionRate#product
          class Product < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   @param id [String]
            #   @param name [String]
          end
        end
      end
    end
  end
end
