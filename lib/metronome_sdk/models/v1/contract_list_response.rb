# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amendments
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          required :amendments,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment] }

          # @!attribute current
          #
          #   @return [MetronomeSDK::ContractWithoutAmendments]
          required :current, -> { MetronomeSDK::ContractWithoutAmendments }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute initial
          #
          #   @return [MetronomeSDK::ContractWithoutAmendments]
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
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration }

          # @!attribute prepaid_balance_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration, nil]
          optional :prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration }

          # @!attribute scheduled_charges_on_usage_invoices
          #   Determines which scheduled and commit charges to consolidate onto the Contract's
          #   usage invoice. The charge's `timestamp` must match the usage invoice's
          #   `ending_before` date for consolidation to occur. This field cannot be modified
          #   after a Contract has been created. If this field is omitted, charges will appear
          #   on a separate invoice from usage charges.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!attribute spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration, nil]
          optional :spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration }

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #   with a previously used uniqueness key, a new record will not be created and the
          #   request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(id:, amendments:, current:, customer_id:, initial:, archived_at: nil, custom_fields: nil, customer_billing_provider_configuration: nil, prepaid_balance_threshold_configuration: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, uniqueness_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractListResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param amendments [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          #
          #   @param current [MetronomeSDK::ContractWithoutAmendments]
          #
          #   @param customer_id [String]
          #
          #   @param initial [MetronomeSDK::ContractWithoutAmendments]
          #
          #   @param archived_at [Time] RFC 3339 timestamp indicating when the contract was archived. If not returned, t
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_billing_provider_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration] The billing provider configuration associated with a contract.
          #
          #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration]
          #
          #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
          #
          #   @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration]
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

          class Amendment < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute commits
            #
            #   @return [Array<MetronomeSDK::Commit>]
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
            #   @return [Array<MetronomeSDK::Override>]
            required :overrides, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Override] }

            # @!attribute scheduled_charges
            #
            #   @return [Array<MetronomeSDK::ScheduledCharge>]
            required :scheduled_charges,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduledCharge]
                     }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute credits
            #
            #   @return [Array<MetronomeSDK::Credit>, nil]
            optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Credit] }

            # @!attribute discounts
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Discount>, nil]
            optional :discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

            # @!attribute netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute professional_services
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::ProService>, nil]
            optional :professional_services,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService]
                     }

            # @!attribute reseller_royalties
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>, nil]
            optional :reseller_royalties,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty] }

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!method initialize(id:, commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, credits: nil, discounts: nil, netsuite_sales_order_id: nil, professional_services: nil, reseller_royalties: nil, salesforce_opportunity_id: nil)
            #   @param id [String]
            #
            #   @param commits [Array<MetronomeSDK::Commit>]
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param overrides [Array<MetronomeSDK::Override>]
            #
            #   @param scheduled_charges [Array<MetronomeSDK::ScheduledCharge>]
            #
            #   @param starting_at [Time]
            #
            #   @param credits [Array<MetronomeSDK::Credit>]
            #
            #   @param discounts [Array<MetronomeSDK::Discount>] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param professional_services [Array<MetronomeSDK::ProService>] This field's availability is dependent on your client's configuration.
            #
            #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType }

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
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
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

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty#reseller_type
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

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#customer_billing_provider_configuration
          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_provider
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            required :billing_provider,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider }

            # @!attribute delivery_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            required :delivery_method,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod }

            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute configuration
            #   Configuration for the billing provider. The structure of this object is specific
            #   to the billing provider.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :configuration,
                     MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

            # @!method initialize(billing_provider:, delivery_method:, id: nil, configuration: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration}
            #   for more details.
            #
            #   The billing provider configuration associated with a contract.
            #
            #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #
            #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            #
            #   @param id [String]
            #
            #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration#billing_provider
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

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration#delivery_method
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

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#prepaid_balance_threshold_configuration
          class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

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

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            #
            #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute applicable_product_ids
              #   Which products the threshold commit applies to. If both applicable_product_ids
              #   and applicable_product_tags are not provided, the commit applies to all
              #   products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Which tags the threshold commit applies to. If both applicable_product_ids and
              #   applicable_product_tags are not provided, the commit applies to all products.
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

              # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
              #
              #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

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
          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#scheduled_charges_on_usage_invoices
          module ScheduledChargesOnUsageInvoices
            extend MetronomeSDK::Internal::Type::Enum

            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#spend_threshold_configuration
          class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #   hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration#commit
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
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
