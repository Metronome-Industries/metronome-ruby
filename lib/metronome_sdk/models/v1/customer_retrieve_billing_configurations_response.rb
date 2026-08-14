# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#retrieve_billing_configurations
      class CustomerRetrieveBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of this configuration; can be provided as the
          #   billing_provider_configuration_id when creating a contract.
          #
          #   @return [String]
          required :id, String

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          required :archived_at, Time, nil?: true

          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider]
          required :billing_provider,
                   enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider }

          # @!attribute configuration
          #   Configuration for the billing provider. The structure of this object is specific
          #   to the billing provider.
          #
          #   @return [Hash{Symbol=>Object}]
          required :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute delivery_method
          #   The method to use for delivering invoices to this customer.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod]
          required :delivery_method,
                   enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod }

          # @!attribute delivery_method_configuration
          #   Configuration for the delivery method. The structure of this object is specific
          #   to the delivery method.
          #
          #   @return [Hash{Symbol=>Object}]
          required :delivery_method_configuration,
                   MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute delivery_method_id
          #   ID of the delivery method to use for this customer.
          #
          #   @return [String]
          required :delivery_method_id, String

          # @!attribute unbillable_invoices_configuration
          #   Rules that stop matching invoices from being sent to the billing provider. Only
          #   supported for Stripe billing provider configurations. When omitted, every
          #   invoice is sent to the billing provider.
          #
          #   @return [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration>, nil]
          optional :unbillable_invoices_configuration,
                   -> do
                     MetronomeSDK::Internal::Type::ArrayOf[
                       MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration
                     ]
                   end

          # @!method initialize(id:, archived_at:, billing_provider:, configuration:, customer_id:, delivery_method:, delivery_method_configuration:, delivery_method_id:, unbillable_invoices_configuration: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data}
          #   for more details.
          #
          #   @param id [String] ID of this configuration; can be provided as the billing*provider_configuration*
          #
          #   @param archived_at [Time, nil]
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider] The billing provider set for this configuration.
          #
          #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
          #
          #   @param customer_id [String]
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod] The method to use for delivering invoices to this customer.
          #
          #   @param delivery_method_configuration [Hash{Symbol=>Object}] Configuration for the delivery method. The structure of this object is specific
          #
          #   @param delivery_method_id [String] ID of the delivery method to use for this customer.
          #
          #   @param unbillable_invoices_configuration [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration>] Rules that stop matching invoices from being sent to the billing provider. Only

          # The billing provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data#billing_provider
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

          # The method to use for delivering invoices to this customer.
          #
          # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data#delivery_method
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class UnbillableInvoicesConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute invoice_type
            #   The type of invoice this rule applies to.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType]
            required :invoice_type,
                     enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType }

            # @!attribute fiat_credit_type_id
            #   Restricts the rule to invoices in this fiat currency. Omit for a catch-all rule
            #   that applies to every currency of the `invoice_type`. Required when `max_amount`
            #   is set.
            #
            #   @return [String, nil]
            optional :fiat_credit_type_id, String

            # @!attribute max_amount
            #   A positive decimal, in the units of `fiat_credit_type_id`. Only invoices whose
            #   total is at or below this amount are suppressed; a higher total is still sent to
            #   the billing provider. When omitted, every matching invoice is suppressed
            #   regardless of amount.
            #
            #   @return [Float, nil]
            optional :max_amount, Float

            # @!method initialize(invoice_type:, fiat_credit_type_id: nil, max_amount: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration}
            #   for more details.
            #
            #   An individual rule that, when evaluated to true, indicates that any invoices for
            #   this billing provider will not be sent to its associated destination for the
            #   associated contract. Rules only apply to the specified `invoice_type` (or all
            #   invoices if omitted) and `fiat_credit_type_id` (or all invoices if omitted).
            #   Rule precedence is evaluated from more specific to less specific. This method
            #   will fail with a 400 if multiple rules with the same specificity are included.
            #
            #   @param invoice_type [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType] The type of invoice this rule applies to.
            #
            #   @param fiat_credit_type_id [String] Restricts the rule to invoices in this fiat currency. Omit for a catch-all rule
            #
            #   @param max_amount [Float] A positive decimal, in the units of `fiat_credit_type_id`. Only invoices whose t

            # The type of invoice this rule applies to.
            #
            # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration#invoice_type
            module InvoiceType
              extend MetronomeSDK::Internal::Type::Enum

              USAGE = :usage
              SCHEDULED = :scheduled

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
