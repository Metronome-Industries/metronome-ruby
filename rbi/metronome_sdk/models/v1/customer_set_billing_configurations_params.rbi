# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, request_options: {})
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data
                ],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol
            )
          end
          attr_accessor :billing_provider

          sig { returns(String) }
          attr_accessor :customer_id

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider and delivery method combination. Defaults to an empty
          # object, however, for most billing provider + delivery method combinations, it
          # will not be a valid configuration. For AWS marketplace configurations, the
          # aws_is_subscription_product flag can be used to indicate a product with
          # usage-based pricing. More information can be found
          # [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome).
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :configuration

          sig { params(configuration: T::Hash[Symbol, T.anything]).void }
          attr_writer :configuration

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          # ID of the delivery method to use for this customer. If not provided, the
          # `delivery_method` must be provided.
          sig { returns(T.nilable(String)) }
          attr_reader :delivery_method_id

          sig { params(delivery_method_id: String).void }
          attr_writer :delivery_method_id

          # Specifies which tax provider Metronome should use for tax calculation when
          # billing through Stripe. This is only supported for Stripe billing provider
          # configurations with auto_charge_payment_intent or manual_charge_payment_intent
          # collection methods.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::OrSymbol
              )
            )
          end
          attr_reader :tax_provider

          sig do
            params(
              tax_provider:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::OrSymbol
            ).void
          end
          attr_writer :tax_provider

          # Rules that stop matching invoices from being sent to the billing provider. Only
          # supported for Stripe billing provider configurations. When omitted, every
          # invoice is sent to the billing provider.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration
                ]
              )
            )
          end
          attr_reader :unbillable_invoices_configuration

          sig do
            params(
              unbillable_invoices_configuration:
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::OrHash
                ]
            ).void
          end
          attr_writer :unbillable_invoices_configuration

          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol,
              customer_id: String,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol,
              delivery_method_id: String,
              tax_provider:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::OrSymbol,
              unbillable_invoices_configuration:
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing provider set for this configuration.
            billing_provider:,
            customer_id:,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider and delivery method combination. Defaults to an empty
            # object, however, for most billing provider + delivery method combinations, it
            # will not be a valid configuration. For AWS marketplace configurations, the
            # aws_is_subscription_product flag can be used to indicate a product with
            # usage-based pricing. More information can be found
            # [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome).
            configuration: nil,
            # The method to use for delivering invoices to this customer. If not provided, the
            # `delivery_method_id` must be provided.
            delivery_method: nil,
            # ID of the delivery method to use for this customer. If not provided, the
            # `delivery_method` must be provided.
            delivery_method_id: nil,
            # Specifies which tax provider Metronome should use for tax calculation when
            # billing through Stripe. This is only supported for Stripe billing provider
            # configurations with auto_charge_payment_intent or manual_charge_payment_intent
            # collection methods.
            tax_provider: nil,
            # Rules that stop matching invoices from being sent to the billing provider. Only
            # supported for Stripe billing provider configurations. When omitted, every
            # invoice is sent to the billing provider.
            unbillable_invoices_configuration: nil
          )
          end

          sig do
            override.returns(
              {
                billing_provider:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol,
                customer_id: String,
                configuration: T::Hash[Symbol, T.anything],
                delivery_method:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol,
                delivery_method_id: String,
                tax_provider:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::OrSymbol,
                unbillable_invoices_configuration:
                  T::Array[
                    MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration
                  ]
              }
            )
          end
          def to_hash
          end

          # The billing provider set for this configuration.
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            METRONOME =
              T.let(
                :metronome,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Specifies which tax provider Metronome should use for tax calculation when
          # billing through Stripe. This is only supported for Stripe billing provider
          # configurations with auto_charge_payment_intent or manual_charge_payment_intent
          # collection methods.
          module TaxProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANROK =
              T.let(
                :anrok,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::TaggedSymbol
              )
            AVALARA =
              T.let(
                :avalara,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::TaxProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class UnbillableInvoicesConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The type of invoice this rule applies to.
            sig do
              returns(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::OrSymbol
              )
            end
            attr_accessor :invoice_type

            # Restricts the rule to invoices in this fiat currency. Omit for a catch-all rule
            # that applies to every currency of the `invoice_type`. Required when `max_amount`
            # is set.
            sig { returns(T.nilable(String)) }
            attr_reader :fiat_credit_type_id

            sig { params(fiat_credit_type_id: String).void }
            attr_writer :fiat_credit_type_id

            # A positive decimal, in the units of `fiat_credit_type_id`. Only invoices whose
            # total is at or below this amount are suppressed; a higher total is still sent to
            # the billing provider. When omitted, every matching invoice is suppressed
            # regardless of amount.
            sig { returns(T.nilable(Float)) }
            attr_reader :max_amount

            sig { params(max_amount: Float).void }
            attr_writer :max_amount

            # An individual rule that, when evaluated to true, indicates that any invoices for
            # this billing provider will not be sent to its associated destination for the
            # associated contract. Rules only apply to the specified `invoice_type` (or all
            # invoices if omitted) and `fiat_credit_type_id` (or all invoices if omitted).
            # Rule precedence is evaluated from more specific to less specific. This method
            # will fail with a 400 if multiple rules with the same specificity are included.
            sig do
              params(
                invoice_type:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::OrSymbol,
                fiat_credit_type_id: String,
                max_amount: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # The type of invoice this rule applies to.
              invoice_type:,
              # Restricts the rule to invoices in this fiat currency. Omit for a catch-all rule
              # that applies to every currency of the `invoice_type`. Required when `max_amount`
              # is set.
              fiat_credit_type_id: nil,
              # A positive decimal, in the units of `fiat_credit_type_id`. Only invoices whose
              # total is at or below this amount are suppressed; a higher total is still sent to
              # the billing provider. When omitted, every matching invoice is suppressed
              # regardless of amount.
              max_amount: nil
            )
            end

            sig do
              override.returns(
                {
                  invoice_type:
                    MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::OrSymbol,
                  fiat_credit_type_id: String,
                  max_amount: Float
                }
              )
            end
            def to_hash
            end

            # The type of invoice this rule applies to.
            module InvoiceType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USAGE =
                T.let(
                  :usage,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
                )
              SCHEDULED =
                T.let(
                  :scheduled,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
