# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of this configuration; can be provided as the
          # billing_provider_configuration_id when creating a contract.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(Time)) }
          attr_accessor :archived_at

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
            )
          end
          attr_accessor :billing_provider

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :configuration

          sig { returns(String) }
          attr_accessor :customer_id

          # The method to use for delivering invoices to this customer.
          sig do
            returns(
              MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
            )
          end
          attr_accessor :delivery_method

          # Configuration for the delivery method. The structure of this object is specific
          # to the delivery method.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :delivery_method_configuration

          # ID of the delivery method to use for this customer.
          sig { returns(String) }
          attr_accessor :delivery_method_id

          # Rules that stop matching invoices from being sent to the billing provider. Only
          # supported for Stripe billing provider configurations. When omitted, every
          # invoice is sent to the billing provider.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration
                ]
              )
            )
          end
          attr_reader :unbillable_invoices_configuration

          sig do
            params(
              unbillable_invoices_configuration:
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::OrHash
                ]
            ).void
          end
          attr_writer :unbillable_invoices_configuration

          sig do
            params(
              id: String,
              archived_at: T.nilable(Time),
              billing_provider:
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              customer_id: String,
              delivery_method:
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::OrSymbol,
              delivery_method_configuration: T::Hash[Symbol, T.anything],
              delivery_method_id: String,
              unbillable_invoices_configuration:
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of this configuration; can be provided as the
            # billing_provider_configuration_id when creating a contract.
            id:,
            archived_at:,
            # The billing provider set for this configuration.
            billing_provider:,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider.
            configuration:,
            customer_id:,
            # The method to use for delivering invoices to this customer.
            delivery_method:,
            # Configuration for the delivery method. The structure of this object is specific
            # to the delivery method.
            delivery_method_configuration:,
            # ID of the delivery method to use for this customer.
            delivery_method_id:,
            # Rules that stop matching invoices from being sent to the billing provider. Only
            # supported for Stripe billing provider configurations. When omitted, every
            # invoice is sent to the billing provider.
            unbillable_invoices_configuration: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                archived_at: T.nilable(Time),
                billing_provider:
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol,
                configuration: T::Hash[Symbol, T.anything],
                customer_id: String,
                delivery_method:
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol,
                delivery_method_configuration: T::Hash[Symbol, T.anything],
                delivery_method_id: String,
                unbillable_invoices_configuration:
                  T::Array[
                    MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration
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
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            METRONOME =
              T.let(
                :metronome,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices to this customer.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
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
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The type of invoice this rule applies to.
            sig do
              returns(
                MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
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
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::OrSymbol,
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
                    MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol,
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
                    MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USAGE =
                T.let(
                  :usage,
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
                )
              SCHEDULED =
                T.let(
                  :scheduled,
                  MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::UnbillableInvoicesConfiguration::InvoiceType::TaggedSymbol
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
