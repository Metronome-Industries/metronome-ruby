# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # inclusive contract start time
        sig { returns(Time) }
        attr_accessor :starting_at

        # The billing provider configuration associated with a contract.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration
            )
          )
        end
        attr_reader :billing_provider_configuration

        sig do
          params(
            billing_provider_configuration:
              MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::OrHash
          ).void
        end
        attr_writer :billing_provider_configuration

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractCreateParams::Commit])
          )
        end
        attr_reader :commits

        sig do
          params(
            commits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Commit::OrHash]
          ).void
        end
        attr_writer :commits

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractCreateParams::Credit])
          )
        end
        attr_reader :credits

        sig do
          params(
            credits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Credit::OrHash]
          ).void
        end
        attr_writer :credits

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::Discount]
            )
          )
        end
        attr_reader :discounts

        sig do
          params(
            discounts:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Discount::OrHash]
          ).void
        end
        attr_writer :discounts

        # exclusive contract end time
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        # prices automatically. EXPLICIT prioritization requires specifying priorities for
        # each multiplier; the one with the lowest priority value will be prioritized
        # first. If tiered overrides are used, prioritization must be explicit.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol
            )
          )
        end
        attr_reader :multiplier_override_prioritization

        sig do
          params(
            multiplier_override_prioritization:
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol
          ).void
        end
        attr_writer :multiplier_override_prioritization

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Float)) }
        attr_reader :net_payment_terms_days

        sig { params(net_payment_terms_days: Float).void }
        attr_writer :net_payment_terms_days

        # This field's availability is dependent on your client's configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::Override]
            )
          )
        end
        attr_reader :overrides

        sig do
          params(
            overrides:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Override::OrHash]
          ).void
        end
        attr_writer :overrides

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration
            )
          )
        end
        attr_reader :prepaid_balance_threshold_configuration

        sig do
          params(
            prepaid_balance_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :prepaid_balance_threshold_configuration

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService
              ]
            )
          )
        end
        attr_reader :professional_services

        sig do
          params(
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService::OrHash
              ]
          ).void
        end
        attr_writer :professional_services

        # Selects the rate card linked to the specified alias as of the contract's start
        # date.
        sig { returns(T.nilable(String)) }
        attr_reader :rate_card_alias

        sig { params(rate_card_alias: String).void }
        attr_writer :rate_card_alias

        sig { returns(T.nilable(String)) }
        attr_reader :rate_card_id

        sig { params(rate_card_id: String).void }
        attr_writer :rate_card_id

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::RecurringCommit]
            )
          )
        end
        attr_reader :recurring_commits

        sig do
          params(
            recurring_commits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::OrHash
              ]
          ).void
        end
        attr_writer :recurring_commits

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::RecurringCredit]
            )
          )
        end
        attr_reader :recurring_credits

        sig do
          params(
            recurring_credits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::OrHash
              ]
          ).void
        end
        attr_writer :recurring_credits

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty]
            )
          )
        end
        attr_reader :reseller_royalties

        sig do
          params(
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::OrHash
              ]
          ).void
        end
        attr_writer :reseller_royalties

        # This field's availability is dependent on your client's configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :salesforce_opportunity_id

        sig { params(salesforce_opportunity_id: String).void }
        attr_writer :salesforce_opportunity_id

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::ScheduledCharge]
            )
          )
        end
        attr_reader :scheduled_charges

        sig do
          params(
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::OrHash
              ]
          ).void
        end
        attr_writer :scheduled_charges

        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol
            )
          )
        end
        attr_reader :scheduled_charges_on_usage_invoices

        sig do
          params(
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol
          ).void
        end
        attr_writer :scheduled_charges_on_usage_invoices

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration
            )
          )
        end
        attr_reader :spend_threshold_configuration

        sig do
          params(
            spend_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :spend_threshold_configuration

        # Optional list of
        # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
        # to add to the contract.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::Subscription]
            )
          )
        end
        attr_reader :subscriptions

        sig do
          params(
            subscriptions:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Subscription::OrHash
              ]
          ).void
        end
        attr_writer :subscriptions

        # This field's availability is dependent on your client's configuration.
        sig { returns(T.nilable(Float)) }
        attr_reader :total_contract_value

        sig { params(total_contract_value: Float).void }
        attr_writer :total_contract_value

        sig do
          returns(T.nilable(MetronomeSDK::V1::ContractCreateParams::Transition))
        end
        attr_reader :transition

        sig do
          params(
            transition:
              MetronomeSDK::V1::ContractCreateParams::Transition::OrHash
          ).void
        end
        attr_writer :transition

        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        sig { returns(T.nilable(String)) }
        attr_reader :uniqueness_key

        sig { params(uniqueness_key: String).void }
        attr_writer :uniqueness_key

        sig { returns(T.nilable(MetronomeSDK::BaseUsageFilter)) }
        attr_reader :usage_filter

        sig { params(usage_filter: MetronomeSDK::BaseUsageFilter::OrHash).void }
        attr_writer :usage_filter

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule
            )
          )
        end
        attr_reader :usage_statement_schedule

        sig do
          params(
            usage_statement_schedule:
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::OrHash
          ).void
        end
        attr_writer :usage_statement_schedule

        sig do
          params(
            customer_id: String,
            starting_at: Time,
            billing_provider_configuration:
              MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::OrHash,
            commits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Discount::OrHash
              ],
            ending_before: Time,
            multiplier_override_prioritization:
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            overrides:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Override::OrHash
              ],
            prepaid_balance_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::OrHash,
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService::OrHash
              ],
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::OrHash
              ],
            recurring_credits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::OrHash
              ],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::OrHash,
            subscriptions:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Subscription::OrHash
              ],
            total_contract_value: Float,
            transition:
              MetronomeSDK::V1::ContractCreateParams::Transition::OrHash,
            uniqueness_key: String,
            usage_filter: MetronomeSDK::BaseUsageFilter::OrHash,
            usage_statement_schedule:
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::OrHash,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # inclusive contract start time
          starting_at:,
          # The billing provider configuration associated with a contract.
          billing_provider_configuration: nil,
          commits: nil,
          credits: nil,
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # exclusive contract end time
          ending_before: nil,
          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first. If tiered overrides are used, prioritization must be explicit.
          multiplier_override_prioritization: nil,
          name: nil,
          net_payment_terms_days: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          prepaid_balance_threshold_configuration: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # Selects the rate card linked to the specified alias as of the contract's start
          # date.
          rate_card_alias: nil,
          rate_card_id: nil,
          recurring_commits: nil,
          recurring_credits: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          scheduled_charges_on_usage_invoices: nil,
          spend_threshold_configuration: nil,
          # Optional list of
          # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
          # to add to the contract.
          subscriptions: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          transition: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          usage_filter: nil,
          usage_statement_schedule: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              starting_at: Time,
              billing_provider_configuration:
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration,
              commits: T::Array[MetronomeSDK::V1::ContractCreateParams::Commit],
              credits: T::Array[MetronomeSDK::V1::ContractCreateParams::Credit],
              custom_fields: T::Hash[Symbol, String],
              discounts:
                T::Array[MetronomeSDK::V1::ContractCreateParams::Discount],
              ending_before: Time,
              multiplier_override_prioritization:
                MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
              name: String,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              overrides:
                T::Array[MetronomeSDK::V1::ContractCreateParams::Override],
              prepaid_balance_threshold_configuration:
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration,
              professional_services:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::ProfessionalService
                ],
              rate_card_alias: String,
              rate_card_id: String,
              recurring_commits:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit
                ],
              recurring_credits:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit
                ],
              reseller_royalties:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty
                ],
              salesforce_opportunity_id: String,
              scheduled_charges:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge
                ],
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration,
              subscriptions:
                T::Array[MetronomeSDK::V1::ContractCreateParams::Subscription],
              total_contract_value: Float,
              transition: MetronomeSDK::V1::ContractCreateParams::Transition,
              uniqueness_key: String,
              usage_filter: MetronomeSDK::BaseUsageFilter,
              usage_statement_schedule:
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class BillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::OrSymbol
              )
            )
          end
          attr_reader :billing_provider

          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::OrSymbol
            ).void
          end
          attr_writer :billing_provider

          # The Metronome ID of the billing provider configuration
          sig { returns(T.nilable(String)) }
          attr_reader :billing_provider_configuration_id

          sig { params(billing_provider_configuration_id: String).void }
          attr_writer :billing_provider_configuration_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::OrSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          # The billing provider configuration associated with a contract.
          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::OrSymbol,
              billing_provider_configuration_id: String,
              delivery_method:
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            billing_provider: nil,
            # The Metronome ID of the billing provider configuration
            billing_provider_configuration_id: nil,
            delivery_method: nil
          )
          end

          sig do
            override.returns(
              {
                billing_provider:
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::OrSymbol,
                billing_provider_configuration_id: String,
                delivery_method:
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::OrSymbol
              }
            )
          end
          def to_hash
          end

          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Commit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Commit::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          # commits only one schedule item is allowed and amount must match invoice_schedule
          # total.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule
              )
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          # (DEPRECATED) Use access_schedule and invoice_schedule instead.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # Which products the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Required for "POSTPAID" commits: the true up invoice will be generated at this
          # time and only one schedule item is allowed; the total must match access_schedule
          # amount. Optional for "PREPAID" commits: if not provided, this will be a
          # "complimentary" commit with no invoice.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::OrHash
            ).void
          end
          attr_writer :invoice_schedule

          # displayed on invoices
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          # optionally payment gate this commit
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig
              )
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # If multiple commits are applicable, the one with the lower priority will apply
          # first.
          sig { returns(T.nilable(Float)) }
          attr_reader :priority

          sig { params(priority: Float).void }
          attr_writer :priority

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          sig { returns(T.nilable(Float)) }
          attr_reader :rollover_fraction

          sig { params(rollover_fraction: Float).void }
          attr_writer :rollover_fraction

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          # A temporary ID for the commit that can be used to reference the commit for
          # commit specific overrides.
          sig { returns(T.nilable(String)) }
          attr_reader :temporary_id

          sig { params(temporary_id: String).void }
          attr_writer :temporary_id

          sig do
            params(
              product_id: String,
              type:
                MetronomeSDK::V1::ContractCreateParams::Commit::Type::OrSymbol,
              access_schedule:
                MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::OrHash,
              amount: Float,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_schedule:
                MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::OrHash,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::Specifier::OrHash
                ],
              temporary_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            product_id:,
            type:,
            # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            # commits only one schedule item is allowed and amount must match invoice_schedule
            # total.
            access_schedule: nil,
            # (DEPRECATED) Use access_schedule and invoice_schedule instead.
            amount: nil,
            # Which products the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_tags: nil,
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match access_schedule
            # amount. Optional for "PREPAID" commits: if not provided, this will be a
            # "complimentary" commit with no invoice.
            invoice_schedule: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            # optionally payment gate this commit
            payment_gate_config: nil,
            # If multiple commits are applicable, the one with the lower priority will apply
            # first.
            priority: nil,
            rate_type: nil,
            # Fraction of unused segments that will be rolled over. Must be between 0 and 1.
            rollover_fraction: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # A temporary ID for the commit that can be used to reference the commit for
            # commit specific overrides.
            temporary_id: nil
          )
          end

          sig do
            override.returns(
              {
                product_id: String,
                type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule,
                amount: Float,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: String,
                payment_gate_config:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::Specifier
                  ],
                temporary_id: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Commit::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID =
              T.let(
                :PREPAID,
                MetronomeSDK::V1::ContractCreateParams::Commit::Type::TaggedSymbol
              )
            POSTPAID =
              T.let(
                :POSTPAID,
                MetronomeSDK::V1::ContractCreateParams::Commit::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem
                ]
              )
            end
            attr_accessor :schedule_items

            # Defaults to USD (cents) if not passed
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            # commits only one schedule item is allowed and amount must match invoice_schedule
            # total.
            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem::OrHash
                  ],
                credit_type_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              schedule_items:,
              # Defaults to USD (cents) if not passed
              credit_type_id: nil
            )
            end

            sig do
              override.returns(
                {
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem
                    ],
                  credit_type_id: String
                }
              )
            end
            def to_hash
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              # RFC 3339 timestamp (exclusive)
              sig { returns(Time) }
              attr_accessor :ending_before

              # RFC 3339 timestamp (inclusive)
              sig { returns(Time) }
              attr_accessor :starting_at

              sig do
                params(
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                amount:,
                # RFC 3339 timestamp (exclusive)
                ending_before:,
                # RFC 3339 timestamp (inclusive)
                starting_at:
              )
              end

              sig do
                override.returns(
                  { amount: Float, ending_before: Time, starting_at: Time }
                )
              end
              def to_hash
              end
            end
          end

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Enter the unit price and quantity for the charge or instead only send the
            # amount. If amount is sent, the unit price is assumed to be the amount and
            # quantity is inferred to be 1.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match access_schedule
            # amount. Optional for "PREPAID" commits: if not provided, this will be a
            # "complimentary" commit with no invoice.
            sig do
              params(
                credit_type_id: String,
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
              credit_type_id: nil,
              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              recurring_schedule: nil,
              # Either provide amount or provide both unit_price and quantity.
              schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  credit_type_id: String,
                  recurring_schedule:
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol
                )
              end
              attr_accessor :frequency

              # RFC 3339 timestamp (inclusive).
              sig { returns(Time) }
              attr_accessor :starting_at

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              sig do
                params(
                  amount_distribution:
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                amount_distribution:,
                # RFC 3339 timestamp (exclusive).
                ending_before:,
                frequency:,
                # RFC 3339 timestamp (inclusive).
                starting_at:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount_distribution:
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
                    starting_at: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end

              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # timestamp of the scheduled event
              sig { returns(Time) }
              attr_accessor :timestamp

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              sig do
                params(
                  timestamp: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # timestamp of the scheduled event
                timestamp:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    timestamp: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end

          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            # optionally payment gate this commit
            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              payment_gate_type:,
              # Only applicable if using Stripe as your payment gateway through Metronome.
              stripe_config: nil,
              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              tax_type: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_gate_type:
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # If left blank, will default to INVOICE
                payment_type:
              )
              end

              sig do
                override.returns(
                  {
                    payment_type:
                      MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # If left blank, will default to INVOICE
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Commit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Commit::RateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Commit::Specifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :presentation_group_values

            sig do
              params(presentation_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :presentation_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # If provided, the specifier will only apply to the product with the specified ID.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # If provided, the specifier will only apply to products with all the specified
            # tags.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            sig do
              params(
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              presentation_group_values: nil,
              pricing_group_values: nil,
              # If provided, the specifier will only apply to the product with the specified ID.
              product_id: nil,
              # If provided, the specifier will only apply to products with all the specified
              # tags.
              product_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end
        end

        class Credit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Credit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Schedule for distributing the credit to the customer.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          sig { returns(String) }
          attr_accessor :product_id

          # Which products the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # displayed on invoices
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          # If multiple credits are applicable, the one with the lower priority will apply
          # first.
          sig { returns(T.nilable(Float)) }
          attr_reader :priority

          sig { params(priority: Float).void }
          attr_writer :priority

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Credit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Credit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::OrHash,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Credit::Specifier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Schedule for distributing the credit to the customer.
            access_schedule:,
            product_id:,
            # Which products the credit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the credit applies to all products.
            applicable_product_ids: nil,
            # Which tags the credit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the credit applies to all products.
            applicable_product_tags: nil,
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            # If multiple credits are applicable, the one with the lower priority will apply
            # first.
            priority: nil,
            rate_type: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil
          )
          end

          sig do
            override.returns(
              {
                access_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule,
                product_id: String,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Credit::Specifier
                  ]
              }
            )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem
                ]
              )
            end
            attr_accessor :schedule_items

            # Defaults to USD (cents) if not passed
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Schedule for distributing the credit to the customer.
            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem::OrHash
                  ],
                credit_type_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              schedule_items:,
              # Defaults to USD (cents) if not passed
              credit_type_id: nil
            )
            end

            sig do
              override.returns(
                {
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem
                    ],
                  credit_type_id: String
                }
              )
            end
            def to_hash
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              # RFC 3339 timestamp (exclusive)
              sig { returns(Time) }
              attr_accessor :ending_before

              # RFC 3339 timestamp (inclusive)
              sig { returns(Time) }
              attr_accessor :starting_at

              sig do
                params(
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                amount:,
                # RFC 3339 timestamp (exclusive)
                ending_before:,
                # RFC 3339 timestamp (inclusive)
                starting_at:
              )
              end

              sig do
                override.returns(
                  { amount: Float, ending_before: Time, starting_at: Time }
                )
              end
              def to_hash
              end
            end
          end

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Credit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Credit::RateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Credit::Specifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :presentation_group_values

            sig do
              params(presentation_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :presentation_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # If provided, the specifier will only apply to the product with the specified ID.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # If provided, the specifier will only apply to products with all the specified
            # tags.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            sig do
              params(
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              presentation_group_values: nil,
              pricing_group_values: nil,
              # If provided, the specifier will only apply to the product with the specified ID.
              product_id: nil,
              # If provided, the specifier will only apply to products with all the specified
              # tags.
              product_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end
        end

        class Discount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Discount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(MetronomeSDK::V1::ContractCreateParams::Discount::Schedule)
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::OrHash
            ).void
          end
          attr_writer :schedule

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # displayed on invoices
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          sig do
            params(
              product_id: String,
              schedule:
                MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::OrHash,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              netsuite_sales_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            product_id:,
            # Must provide either schedule_items or recurring_schedule.
            schedule:,
            custom_fields: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                product_id: String,
                schedule:
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule,
                custom_fields: T::Hash[Symbol, String],
                name: String,
                netsuite_sales_order_id: String
              }
            )
          end
          def to_hash
          end

          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Enter the unit price and quantity for the charge or instead only send the
            # amount. If amount is sent, the unit price is assumed to be the amount and
            # quantity is inferred to be 1.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Must provide either schedule_items or recurring_schedule.
            sig do
              params(
                credit_type_id: String,
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
              credit_type_id: nil,
              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              recurring_schedule: nil,
              # Either provide amount or provide both unit_price and quantity.
              schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  credit_type_id: String,
                  recurring_schedule:
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::ScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol
                )
              end
              attr_accessor :frequency

              # RFC 3339 timestamp (inclusive).
              sig { returns(Time) }
              attr_accessor :starting_at

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              sig do
                params(
                  amount_distribution:
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                amount_distribution:,
                # RFC 3339 timestamp (exclusive).
                ending_before:,
                frequency:,
                # RFC 3339 timestamp (inclusive).
                starting_at:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount_distribution:
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol,
                    starting_at: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end

              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Discount::Schedule::ScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # timestamp of the scheduled event
              sig { returns(Time) }
              attr_accessor :timestamp

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              sig do
                params(
                  timestamp: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # timestamp of the scheduled event
                timestamp:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    timestamp: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        # prices automatically. EXPLICIT prioritization requires specifying priorities for
        # each multiplier; the one with the lowest priority value will be prioritized
        # first. If tiered overrides are used, prioritization must be explicit.
        module MultiplierOverridePrioritization
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_MULTIPLIER =
            T.let(
              :LOWEST_MULTIPLIER,
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::TaggedSymbol
            )
          EXPLICIT =
            T.let(
              :EXPLICIT,
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Override < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Override,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # RFC 3339 timestamp indicating when the override will start applying (inclusive)
          sig { returns(Time) }
          attr_accessor :starting_at

          # tags identifying products whose rates are being overridden. Cannot be used in
          # conjunction with override_specifiers.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          # RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :entitled

          sig { params(entitled: T::Boolean).void }
          attr_writer :entitled

          # Indicates whether the override should only apply to commits. Defaults to
          # `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          # passing `commit_ids`. if you do not specify `commit_ids`, then the override will
          # apply when consuming any prepaid or postpaid commit.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_commit_specific

          sig { params(is_commit_specific: T::Boolean).void }
          attr_writer :is_commit_specific

          # Required for MULTIPLIER type. Must be >=0.
          sig { returns(T.nilable(Float)) }
          attr_reader :multiplier

          sig { params(multiplier: Float).void }
          attr_writer :multiplier

          # Cannot be used in conjunction with product_id or applicable_product_tags. If
          # provided, the override will apply to all products with the specified specifiers.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier
                ]
              )
            )
          end
          attr_reader :override_specifiers

          sig do
            params(
              override_specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::OrHash
                ]
            ).void
          end
          attr_writer :override_specifiers

          # Required for OVERWRITE type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate
              )
            )
          end
          attr_reader :overwrite_rate

          sig do
            params(
              overwrite_rate:
                MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::OrHash
            ).void
          end
          attr_writer :overwrite_rate

          # Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          # Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          # and multiplier overrides are prioritized by their priority value (lowest first).
          # Must be > 0.
          sig { returns(T.nilable(Float)) }
          attr_reader :priority

          sig { params(priority: Float).void }
          attr_writer :priority

          # ID of the product whose rate is being overridden. Cannot be used in conjunction
          # with override_specifiers.
          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          # Indicates whether the override applies to commit rates or list rates. Can only
          # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          # `"LIST_RATE"`.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Override::Target::OrSymbol
              )
            )
          end
          attr_reader :target

          sig do
            params(
              target:
                MetronomeSDK::V1::ContractCreateParams::Override::Target::OrSymbol
            ).void
          end
          attr_writer :target

          # Required for TIERED type. Must have at least one tier.
          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::V1::ContractCreateParams::Override::Tier]
              )
            )
          end
          attr_reader :tiers

          sig do
            params(
              tiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::Tier::OrHash
                ]
            ).void
          end
          attr_writer :tiers

          # Overwrites are prioritized over multipliers and tiered overrides.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Override::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                MetronomeSDK::V1::ContractCreateParams::Override::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              starting_at: Time,
              applicable_product_tags: T::Array[String],
              ending_before: Time,
              entitled: T::Boolean,
              is_commit_specific: T::Boolean,
              multiplier: Float,
              override_specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::OrHash
                ],
              overwrite_rate:
                MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::OrHash,
              priority: Float,
              product_id: String,
              target:
                MetronomeSDK::V1::ContractCreateParams::Override::Target::OrSymbol,
              tiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::Tier::OrHash
                ],
              type:
                MetronomeSDK::V1::ContractCreateParams::Override::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # RFC 3339 timestamp indicating when the override will start applying (inclusive)
            starting_at:,
            # tags identifying products whose rates are being overridden. Cannot be used in
            # conjunction with override_specifiers.
            applicable_product_tags: nil,
            # RFC 3339 timestamp indicating when the override will stop applying (exclusive)
            ending_before: nil,
            entitled: nil,
            # Indicates whether the override should only apply to commits. Defaults to
            # `false`. If `true`, you can specify relevant commits in `override_specifiers` by
            # passing `commit_ids`. if you do not specify `commit_ids`, then the override will
            # apply when consuming any prepaid or postpaid commit.
            is_commit_specific: nil,
            # Required for MULTIPLIER type. Must be >=0.
            multiplier: nil,
            # Cannot be used in conjunction with product_id or applicable_product_tags. If
            # provided, the override will apply to all products with the specified specifiers.
            override_specifiers: nil,
            # Required for OVERWRITE type.
            overwrite_rate: nil,
            # Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
            # Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
            # and multiplier overrides are prioritized by their priority value (lowest first).
            # Must be > 0.
            priority: nil,
            # ID of the product whose rate is being overridden. Cannot be used in conjunction
            # with override_specifiers.
            product_id: nil,
            # Indicates whether the override applies to commit rates or list rates. Can only
            # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
            # `"LIST_RATE"`.
            target: nil,
            # Required for TIERED type. Must have at least one tier.
            tiers: nil,
            # Overwrites are prioritized over multipliers and tiered overrides.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                starting_at: Time,
                applicable_product_tags: T::Array[String],
                ending_before: Time,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier
                  ],
                overwrite_rate:
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate,
                priority: Float,
                product_id: String,
                target:
                  MetronomeSDK::V1::ContractCreateParams::Override::Target::OrSymbol,
                tiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Override::Tier
                  ],
                type:
                  MetronomeSDK::V1::ContractCreateParams::Override::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol
                )
              )
            end
            attr_reader :billing_frequency

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol
              ).void
            end
            attr_writer :billing_frequency

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to the
            # specified commits. If not provided, the override will apply to all commits.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :commit_ids

            sig { params(commit_ids: T::Array[String]).void }
            attr_writer :commit_ids

            # A map of group names to values. The override will only apply to line items with
            # the specified presentation group values.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :presentation_group_values

            sig do
              params(presentation_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :presentation_group_values

            # A map of pricing group names to values. The override will only apply to products
            # with the specified pricing group values.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # If provided, the override will only apply to the product with the specified ID.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # If provided, the override will only apply to products with all the specified
            # tags.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to commits
            # created by the specified recurring commit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_commit_ids

            sig { params(recurring_commit_ids: T::Array[String]).void }
            attr_writer :recurring_commit_ids

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to credits
            # created by the specified recurring credit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_credit_ids

            sig { params(recurring_credit_ids: T::Array[String]).void }
            attr_writer :recurring_credit_ids

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                commit_ids: T::Array[String],
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String],
                recurring_commit_ids: T::Array[String],
                recurring_credit_ids: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              billing_frequency: nil,
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to the
              # specified commits. If not provided, the override will apply to all commits.
              commit_ids: nil,
              # A map of group names to values. The override will only apply to line items with
              # the specified presentation group values.
              presentation_group_values: nil,
              # A map of pricing group names to values. The override will only apply to products
              # with the specified pricing group values.
              pricing_group_values: nil,
              # If provided, the override will only apply to the product with the specified ID.
              product_id: nil,
              # If provided, the override will only apply to products with all the specified
              # tags.
              product_tags: nil,
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to commits
              # created by the specified recurring commit ids.
              recurring_commit_ids: nil,
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to credits
              # created by the specified recurring credit ids.
              recurring_credit_ids: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_frequency:
                    MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String],
                  recurring_credit_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end

            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::OrSymbol
              )
            end
            attr_accessor :rate_type

            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Only set for CUSTOM rate_type. This field is interpreted by custom rate
            # processors.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :custom_rate

            sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
            attr_writer :custom_rate

            # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
            # set to true.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_prorated

            sig { params(is_prorated: T::Boolean).void }
            attr_writer :is_prorated

            # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
            # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
            sig { returns(T.nilable(Float)) }
            attr_reader :price

            sig { params(price: Float).void }
            attr_writer :price

            # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            # Only set for TIERED rate_type.
            sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
            attr_reader :tiers

            sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
            attr_writer :tiers

            # Required for OVERWRITE type.
            sig do
              params(
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::OrSymbol,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                quantity: Float,
                tiers: T::Array[MetronomeSDK::Tier::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(
              rate_type:,
              credit_type_id: nil,
              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              custom_rate: nil,
              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              is_prorated: nil,
              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              price: nil,
              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              quantity: nil,
              # Only set for TIERED rate_type.
              tiers: nil
            )
            end

            sig do
              override.returns(
                {
                  rate_type:
                    MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::OrSymbol,
                  credit_type_id: String,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Tier]
                }
              )
            end
            def to_hash
            end

            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Indicates whether the override applies to commit rates or list rates. Can only
          # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          # `"LIST_RATE"`.
          module Target
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Override::Target
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractCreateParams::Override::Target::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractCreateParams::Override::Target::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::Target::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Tier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Override::Tier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :multiplier

            sig { returns(T.nilable(Float)) }
            attr_reader :size

            sig { params(size: Float).void }
            attr_writer :size

            sig do
              params(multiplier: Float, size: Float).returns(T.attached_class)
            end
            def self.new(multiplier:, size: nil)
            end

            sig { override.returns({ multiplier: Float, size: Float }) }
            def to_hash
            end
          end

          # Overwrites are prioritized over multipliers and tiered overrides.
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Override::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OVERWRITE =
              T.let(
                :OVERWRITE,
                MetronomeSDK::V1::ContractCreateParams::Override::Type::TaggedSymbol
              )
            MULTIPLIER =
              T.let(
                :MULTIPLIER,
                MetronomeSDK::V1::ContractCreateParams::Override::Type::TaggedSymbol
              )
            TIERED =
              T.let(
                :TIERED,
                MetronomeSDK::V1::ContractCreateParams::Override::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Override::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::OrHash
            ).void
          end
          attr_writer :commit

          # When set to false, the contract will not be evaluated against the
          # threshold_amount. Toggling to true will result an immediate evaluation,
          # regardless of prior state.
          sig { returns(T::Boolean) }
          attr_accessor :is_enabled

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # Specify the amount the balance should be recharged to.
          sig { returns(Float) }
          attr_accessor :recharge_to_amount

          # Specify the threshold amount for the contract. Each time the contract's prepaid
          # balance lowers to this amount, a threshold charge will be initiated.
          sig { returns(Float) }
          attr_accessor :threshold_amount

          sig do
            params(
              commit:
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
              recharge_to_amount: Float,
              threshold_amount: Float
            ).returns(T.attached_class)
          end
          def self.new(
            commit:,
            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            is_enabled:,
            payment_gate_config:,
            # Specify the amount the balance should be recharged to.
            recharge_to_amount:,
            # Specify the threshold amount for the contract. Each time the contract's prepaid
            # balance lowers to this amount, a threshold charge will be initiated.
            threshold_amount:
          )
          end

          sig do
            override.returns(
              {
                commit:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                recharge_to_amount: Float,
                threshold_amount: Float
              }
            )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The commit product that will be used to generate the line item for commit
            # payment.
            sig { returns(String) }
            attr_accessor :product_id

            # Which products the threshold commit applies to. If both applicable_product_ids
            # and applicable_product_tags are not provided, the commit applies to all
            # products.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_ids

            sig { params(applicable_product_ids: T::Array[String]).void }
            attr_writer :applicable_product_ids

            # Which tags the threshold commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Specify the name of the line item for the threshold charge. If left blank, it
            # will default to the commit product name.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                product_id: String,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                name: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The commit product that will be used to generate the line item for commit
              # payment.
              product_id:,
              # Which products the threshold commit applies to. If both applicable_product_ids
              # and applicable_product_tags are not provided, the commit applies to all
              # products.
              applicable_product_ids: nil,
              # Which tags the threshold commit applies to. If both applicable_product_ids and
              # applicable_product_tags are not provided, the commit applies to all products.
              applicable_product_tags: nil,
              description: nil,
              # Specify the name of the line item for the threshold charge. If left blank, it
              # will default to the commit product name.
              name: nil,
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown. This field cannot
              # be used together with `applicable_product_ids` or `applicable_product_tags`.
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  name: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::Commit::Specifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :presentation_group_values

              sig do
                params(presentation_group_values: T::Hash[Symbol, String]).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # If provided, the specifier will only apply to the product with the specified ID.
              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If provided, the specifier will only apply to products with all the specified
              # tags.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                presentation_group_values: nil,
                pricing_group_values: nil,
                # If provided, the specifier will only apply to the product with the specified ID.
                product_id: nil,
                # If provided, the specifier will only apply to products with all the specified
                # tags.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              payment_gate_type:,
              # Only applicable if using Stripe as your payment gateway through Metronome.
              stripe_config: nil,
              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              tax_type: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_gate_type:
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # If left blank, will default to INVOICE
                payment_type:
              )
              end

              sig do
                override.returns(
                  {
                    payment_type:
                      MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # If left blank, will default to INVOICE
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Maximum amount for the term.
          sig { returns(Float) }
          attr_accessor :max_amount

          sig { returns(String) }
          attr_accessor :product_id

          # Quantity for the charge. Will be multiplied by unit_price to determine the
          # amount.
          sig { returns(Float) }
          attr_accessor :quantity

          # Unit price for the charge. Will be multiplied by quantity to determine the
          # amount and must be specified.
          sig { returns(Float) }
          attr_accessor :unit_price

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          sig do
            params(
              max_amount: Float,
              product_id: String,
              quantity: Float,
              unit_price: Float,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              netsuite_sales_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Maximum amount for the term.
            max_amount:,
            product_id:,
            # Quantity for the charge. Will be multiplied by unit_price to determine the
            # amount.
            quantity:,
            # Unit price for the charge. Will be multiplied by quantity to determine the
            # amount and must be specified.
            unit_price:,
            custom_fields: nil,
            description: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                max_amount: Float,
                product_id: String,
                quantity: Float,
                unit_price: Float,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                netsuite_sales_order_id: String
              }
            )
          end
          def to_hash
          end
        end

        class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The amount of commit to grant.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::RecurringCommit::AccessAmount
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          # Defines the length of the access schedule for each created commit/credit. The
          # value represents the number of units. Unit defaults to "PERIODS", where the
          # length of a period is determined by the recurrence_frequency.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration
            )
          end
          attr_reader :commit_duration

          sig do
            params(
              commit_duration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::OrHash
            ).void
          end
          attr_writer :commit_duration

          # Will be passed down to the individual commits
          sig { returns(Float) }
          attr_accessor :priority

          sig { returns(String) }
          attr_accessor :product_id

          # determines the start time for the first commit
          sig { returns(Time) }
          attr_accessor :starting_at

          # Will be passed down to the individual commits
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Will be passed down to the individual commits
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          # Will be passed down to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Determines when the contract will stop creating recurring commits. optional
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # The amount the customer should be billed for the commit. Not required.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount
              )
            )
          end
          attr_reader :invoice_amount

          sig do
            params(
              invoice_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount::OrHash
            ).void
          end
          attr_writer :invoice_amount

          # displayed on invoices. will be passed through to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Will be passed down to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol
              )
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol
            ).void
          end
          attr_writer :proration

          # Whether the created commits will use the commit rate or list rate
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol
              )
            )
          end
          attr_reader :recurrence_frequency

          sig do
            params(
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol
            ).void
          end
          attr_writer :recurrence_frequency

          # Will be passed down to the individual commits. This controls how much of an
          # individual unexpired commit will roll over upon contract transition. Must be
          # between 0 and 1.
          sig { returns(T.nilable(Float)) }
          attr_reader :rollover_fraction

          sig { params(rollover_fraction: Float).void }
          attr_writer :rollover_fraction

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          # A temporary ID that can be used to reference the recurring commit for commit
          # specific overrides.
          sig { returns(T.nilable(String)) }
          attr_reader :temporary_id

          sig { params(temporary_id: String).void }
          attr_writer :temporary_id

          sig do
            params(
              access_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::AccessAmount::OrHash,
              commit_duration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::OrHash,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              invoice_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Specifier::OrHash
                ],
              temporary_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount of commit to grant.
            access_amount:,
            # Defines the length of the access schedule for each created commit/credit. The
            # value represents the number of units. Unit defaults to "PERIODS", where the
            # length of a period is determined by the recurrence_frequency.
            commit_duration:,
            # Will be passed down to the individual commits
            priority:,
            product_id:,
            # determines the start time for the first commit
            starting_at:,
            # Will be passed down to the individual commits
            applicable_product_ids: nil,
            # Will be passed down to the individual commits
            applicable_product_tags: nil,
            # Will be passed down to the individual commits
            description: nil,
            # Determines when the contract will stop creating recurring commits. optional
            ending_before: nil,
            # The amount the customer should be billed for the commit. Not required.
            invoice_amount: nil,
            # displayed on invoices. will be passed through to the individual commits
            name: nil,
            # Will be passed down to the individual commits
            netsuite_sales_order_id: nil,
            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            proration: nil,
            # Whether the created commits will use the commit rate or list rate
            rate_type: nil,
            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            recurrence_frequency: nil,
            # Will be passed down to the individual commits. This controls how much of an
            # individual unexpired commit will roll over upon contract transition. Must be
            # between 0 and 1.
            rollover_fraction: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # A temporary ID that can be used to reference the recurring commit for commit
            # specific overrides.
            temporary_id: nil
          )
          end

          sig do
            override.returns(
              {
                access_amount:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::AccessAmount,
                commit_duration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration,
                priority: Float,
                product_id: String,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                ending_before: Time,
                invoice_amount:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Specifier
                  ],
                temporary_id: String
              }
            )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::AccessAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :credit_type_id

            sig { returns(Float) }
            attr_accessor :unit_price

            # This field is currently required. Upcoming recurring commit/credit configuration
            # options will allow it to be optional.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            # The amount of commit to grant.
            sig do
              params(
                credit_type_id: String,
                unit_price: Float,
                quantity: Float
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type_id:,
              unit_price:,
              # This field is currently required. Upcoming recurring commit/credit configuration
              # options will allow it to be optional.
              quantity: nil
            )
            end

            sig do
              override.returns(
                { credit_type_id: String, unit_price: Float, quantity: Float }
              )
            end
            def to_hash
            end
          end

          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
                )
              )
            end
            attr_reader :unit

            sig do
              params(
                unit:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
              ).void
            end
            attr_writer :unit

            # Defines the length of the access schedule for each created commit/credit. The
            # value represents the number of units. Unit defaults to "PERIODS", where the
            # length of a period is determined by the recurrence_frequency.
            sig do
              params(
                value: Float,
                unit:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(value:, unit: nil)
            end

            sig do
              override.returns(
                {
                  value: Float,
                  unit:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIODS =
                T.let(
                  :PERIODS,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :credit_type_id

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Float) }
            attr_accessor :unit_price

            # The amount the customer should be billed for the commit. Not required.
            sig do
              params(
                credit_type_id: String,
                quantity: Float,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(credit_type_id:, quantity:, unit_price:)
            end

            sig do
              override.returns(
                { credit_type_id: String, quantity: Float, unit_price: Float }
              )
            end
            def to_hash
            end
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::TaggedSymbol
              )
            FIRST =
              T.let(
                :FIRST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::TaggedSymbol
              )
            LAST =
              T.let(
                :LAST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::TaggedSymbol
              )
            FIRST_AND_LAST =
              T.let(
                :FIRST_AND_LAST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether the created commits will use the commit rate or list rate
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Specifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :presentation_group_values

            sig do
              params(presentation_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :presentation_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # If provided, the specifier will only apply to the product with the specified ID.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # If provided, the specifier will only apply to products with all the specified
            # tags.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            sig do
              params(
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              presentation_group_values: nil,
              pricing_group_values: nil,
              # If provided, the specifier will only apply to the product with the specified ID.
              product_id: nil,
              # If provided, the specifier will only apply to products with all the specified
              # tags.
              product_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end
        end

        class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The amount of commit to grant.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::RecurringCredit::AccessAmount
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          # Defines the length of the access schedule for each created commit/credit. The
          # value represents the number of units. Unit defaults to "PERIODS", where the
          # length of a period is determined by the recurrence_frequency.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration
            )
          end
          attr_reader :commit_duration

          sig do
            params(
              commit_duration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::OrHash
            ).void
          end
          attr_writer :commit_duration

          # Will be passed down to the individual commits
          sig { returns(Float) }
          attr_accessor :priority

          sig { returns(String) }
          attr_accessor :product_id

          # determines the start time for the first commit
          sig { returns(Time) }
          attr_accessor :starting_at

          # Will be passed down to the individual commits
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Will be passed down to the individual commits
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          # Will be passed down to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Determines when the contract will stop creating recurring commits. optional
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # displayed on invoices. will be passed through to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Will be passed down to the individual commits
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol
              )
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol
            ).void
          end
          attr_writer :proration

          # Whether the created commits will use the commit rate or list rate
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol
              )
            )
          end
          attr_reader :recurrence_frequency

          sig do
            params(
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol
            ).void
          end
          attr_writer :recurrence_frequency

          # Will be passed down to the individual commits. This controls how much of an
          # individual unexpired commit will roll over upon contract transition. Must be
          # between 0 and 1.
          sig { returns(T.nilable(Float)) }
          attr_reader :rollover_fraction

          sig { params(rollover_fraction: Float).void }
          attr_writer :rollover_fraction

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          # A temporary ID that can be used to reference the recurring commit for commit
          # specific overrides.
          sig { returns(T.nilable(String)) }
          attr_reader :temporary_id

          sig { params(temporary_id: String).void }
          attr_writer :temporary_id

          sig do
            params(
              access_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::AccessAmount::OrHash,
              commit_duration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::OrHash,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Specifier::OrHash
                ],
              temporary_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount of commit to grant.
            access_amount:,
            # Defines the length of the access schedule for each created commit/credit. The
            # value represents the number of units. Unit defaults to "PERIODS", where the
            # length of a period is determined by the recurrence_frequency.
            commit_duration:,
            # Will be passed down to the individual commits
            priority:,
            product_id:,
            # determines the start time for the first commit
            starting_at:,
            # Will be passed down to the individual commits
            applicable_product_ids: nil,
            # Will be passed down to the individual commits
            applicable_product_tags: nil,
            # Will be passed down to the individual commits
            description: nil,
            # Determines when the contract will stop creating recurring commits. optional
            ending_before: nil,
            # displayed on invoices. will be passed through to the individual commits
            name: nil,
            # Will be passed down to the individual commits
            netsuite_sales_order_id: nil,
            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            proration: nil,
            # Whether the created commits will use the commit rate or list rate
            rate_type: nil,
            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            recurrence_frequency: nil,
            # Will be passed down to the individual commits. This controls how much of an
            # individual unexpired commit will roll over upon contract transition. Must be
            # between 0 and 1.
            rollover_fraction: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # A temporary ID that can be used to reference the recurring commit for commit
            # specific overrides.
            temporary_id: nil
          )
          end

          sig do
            override.returns(
              {
                access_amount:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::AccessAmount,
                commit_duration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration,
                priority: Float,
                product_id: String,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Specifier
                  ],
                temporary_id: String
              }
            )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::AccessAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :credit_type_id

            sig { returns(Float) }
            attr_accessor :unit_price

            # This field is currently required. Upcoming recurring commit/credit configuration
            # options will allow it to be optional.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            # The amount of commit to grant.
            sig do
              params(
                credit_type_id: String,
                unit_price: Float,
                quantity: Float
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type_id:,
              unit_price:,
              # This field is currently required. Upcoming recurring commit/credit configuration
              # options will allow it to be optional.
              quantity: nil
            )
            end

            sig do
              override.returns(
                { credit_type_id: String, unit_price: Float, quantity: Float }
              )
            end
            def to_hash
            end
          end

          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
                )
              )
            end
            attr_reader :unit

            sig do
              params(
                unit:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
              ).void
            end
            attr_writer :unit

            # Defines the length of the access schedule for each created commit/credit. The
            # value represents the number of units. Unit defaults to "PERIODS", where the
            # length of a period is determined by the recurrence_frequency.
            sig do
              params(
                value: Float,
                unit:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(value:, unit: nil)
            end

            sig do
              override.returns(
                {
                  value: Float,
                  unit:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIODS =
                T.let(
                  :PERIODS,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::TaggedSymbol
              )
            FIRST =
              T.let(
                :FIRST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::TaggedSymbol
              )
            LAST =
              T.let(
                :LAST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::TaggedSymbol
              )
            FIRST_AND_LAST =
              T.let(
                :FIRST_AND_LAST,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether the created commits will use the commit rate or list rate
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Specifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :presentation_group_values

            sig do
              params(presentation_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :presentation_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # If provided, the specifier will only apply to the product with the specified ID.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # If provided, the specifier will only apply to products with all the specified
            # tags.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            sig do
              params(
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              presentation_group_values: nil,
              pricing_group_values: nil,
              # If provided, the specifier will only apply to the product with the specified ID.
              product_id: nil,
              # If provided, the specifier will only apply to products with all the specified
              # tags.
              product_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end
        end

        class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :fraction

          sig { returns(String) }
          attr_accessor :netsuite_reseller_id

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::OrSymbol
            )
          end
          attr_accessor :reseller_type

          sig { returns(Time) }
          attr_accessor :starting_at

          # Must provide at least one of applicable_product_ids or applicable_product_tags.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Must provide at least one of applicable_product_ids or applicable_product_tags.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::AwsOptions
              )
            )
          end
          attr_reader :aws_options

          sig do
            params(
              aws_options:
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::AwsOptions::OrHash
            ).void
          end
          attr_writer :aws_options

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::GcpOptions
              )
            )
          end
          attr_reader :gcp_options

          sig do
            params(
              gcp_options:
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::GcpOptions::OrHash
            ).void
          end
          attr_writer :gcp_options

          sig { returns(T.nilable(Float)) }
          attr_reader :reseller_contract_value

          sig { params(reseller_contract_value: Float).void }
          attr_writer :reseller_contract_value

          sig do
            params(
              fraction: Float,
              netsuite_reseller_id: String,
              reseller_type:
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::OrSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_options:
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::AwsOptions::OrHash,
              ending_before: Time,
              gcp_options:
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::GcpOptions::OrHash,
              reseller_contract_value: Float
            ).returns(T.attached_class)
          end
          def self.new(
            fraction:,
            netsuite_reseller_id:,
            reseller_type:,
            starting_at:,
            # Must provide at least one of applicable_product_ids or applicable_product_tags.
            applicable_product_ids: nil,
            # Must provide at least one of applicable_product_ids or applicable_product_tags.
            applicable_product_tags: nil,
            aws_options: nil,
            ending_before: nil,
            gcp_options: nil,
            reseller_contract_value: nil
          )
          end

          sig do
            override.returns(
              {
                fraction: Float,
                netsuite_reseller_id: String,
                reseller_type:
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::OrSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                aws_options:
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::AwsOptions,
                ending_before: Time,
                gcp_options:
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::GcpOptions,
                reseller_contract_value: Float
              }
            )
          end
          def to_hash
          end

          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS =
              T.let(
                :AWS,
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            AWS_PRO_SERVICE =
              T.let(
                :AWS_PRO_SERVICE,
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP =
              T.let(
                :GCP,
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP_PRO_SERVICE =
              T.let(
                :GCP_PRO_SERVICE,
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::ResellerType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class AwsOptions < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::AwsOptions,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :aws_account_number

            sig { params(aws_account_number: String).void }
            attr_writer :aws_account_number

            sig { returns(T.nilable(String)) }
            attr_reader :aws_offer_id

            sig { params(aws_offer_id: String).void }
            attr_writer :aws_offer_id

            sig { returns(T.nilable(String)) }
            attr_reader :aws_payer_reference_id

            sig { params(aws_payer_reference_id: String).void }
            attr_writer :aws_payer_reference_id

            sig do
              params(
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              aws_account_number: nil,
              aws_offer_id: nil,
              aws_payer_reference_id: nil
            )
            end

            sig do
              override.returns(
                {
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String
                }
              )
            end
            def to_hash
            end
          end

          class GcpOptions < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::GcpOptions,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_account_id

            sig { params(gcp_account_id: String).void }
            attr_writer :gcp_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_offer_id

            sig { params(gcp_offer_id: String).void }
            attr_writer :gcp_offer_id

            sig do
              params(gcp_account_id: String, gcp_offer_id: String).returns(
                T.attached_class
              )
            end
            def self.new(gcp_account_id: nil, gcp_offer_id: nil)
            end

            sig do
              override.returns({ gcp_account_id: String, gcp_offer_id: String })
            end
            def to_hash
            end
          end
        end

        class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule
            )
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::OrHash
            ).void
          end
          attr_writer :schedule

          # displayed on invoices
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          sig do
            params(
              product_id: String,
              schedule:
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::OrHash,
              name: String,
              netsuite_sales_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            product_id:,
            # Must provide either schedule_items or recurring_schedule.
            schedule:,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                product_id: String,
                schedule:
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule,
                name: String,
                netsuite_sales_order_id: String
              }
            )
          end
          def to_hash
          end

          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Enter the unit price and quantity for the charge or instead only send the
            # amount. If amount is sent, the unit price is assumed to be the amount and
            # quantity is inferred to be 1.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Must provide either schedule_items or recurring_schedule.
            sig do
              params(
                credit_type_id: String,
                recurring_schedule:
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
              credit_type_id: nil,
              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              recurring_schedule: nil,
              # Either provide amount or provide both unit_price and quantity.
              schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  credit_type_id: String,
                  recurring_schedule:
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol
                )
              end
              attr_accessor :frequency

              # RFC 3339 timestamp (inclusive).
              sig { returns(Time) }
              attr_accessor :starting_at

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              # Enter the unit price and quantity for the charge or instead only send the
              # amount. If amount is sent, the unit price is assumed to be the amount and
              # quantity is inferred to be 1.
              sig do
                params(
                  amount_distribution:
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                amount_distribution:,
                # RFC 3339 timestamp (exclusive).
                ending_before:,
                frequency:,
                # RFC 3339 timestamp (inclusive).
                starting_at:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount_distribution:
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
                    starting_at: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end

              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # timestamp of the scheduled event
              sig { returns(Time) }
              attr_accessor :timestamp

              # Amount for the charge. Can be provided instead of unit_price and quantity. If
              # amount is sent, the unit_price is assumed to be the amount and quantity is
              # inferred to be 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Quantity for the charge. Will be multiplied by unit_price to determine the
              # amount and must be specified with unit_price. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Unit price for the charge. Will be multiplied by quantity to determine the
              # amount and must be specified with quantity. If specified amount cannot be
              # provided.
              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              sig do
                params(
                  timestamp: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # timestamp of the scheduled event
                timestamp:,
                # Amount for the charge. Can be provided instead of unit_price and quantity. If
                # amount is sent, the unit_price is assumed to be the amount and quantity is
                # inferred to be 1.
                amount: nil,
                # Quantity for the charge. Will be multiplied by unit_price to determine the
                # amount and must be specified with unit_price. If specified amount cannot be
                # provided.
                quantity: nil,
                # Unit price for the charge. Will be multiplied by quantity to determine the
                # amount and must be specified with quantity. If specified amount cannot be
                # provided.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    timestamp: Time,
                    amount: Float,
                    quantity: Float,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        module ScheduledChargesOnUsageInvoices
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::Commit
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::Commit::OrHash
            ).void
          end
          attr_writer :commit

          # When set to false, the contract will not be evaluated against the
          # threshold_amount. Toggling to true will result an immediate evaluation,
          # regardless of prior state.
          sig { returns(T::Boolean) }
          attr_accessor :is_enabled

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # Specify the threshold amount for the contract. Each time the contract's usage
          # hits this amount, a threshold charge will be initiated.
          sig { returns(Float) }
          attr_accessor :threshold_amount

          sig do
            params(
              commit:
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::Commit::OrHash,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
              threshold_amount: Float
            ).returns(T.attached_class)
          end
          def self.new(
            commit:,
            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            is_enabled:,
            payment_gate_config:,
            # Specify the threshold amount for the contract. Each time the contract's usage
            # hits this amount, a threshold charge will be initiated.
            threshold_amount:
          )
          end

          sig do
            override.returns(
              {
                commit:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig,
                threshold_amount: Float
              }
            )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The commit product that will be used to generate the line item for commit
            # payment.
            sig { returns(String) }
            attr_accessor :product_id

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Specify the name of the line item for the threshold charge. If left blank, it
            # will default to the commit product name.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                product_id: String,
                description: String,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The commit product that will be used to generate the line item for commit
              # payment.
              product_id:,
              description: nil,
              # Specify the name of the line item for the threshold charge. If left blank, it
              # will default to the commit product name.
              name: nil
            )
            end

            sig do
              override.returns(
                { product_id: String, description: String, name: String }
              )
            end
            def to_hash
            end
          end

          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                stripe_config:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              payment_gate_type:,
              # Only applicable if using Stripe as your payment gateway through Metronome.
              stripe_config: nil,
              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              tax_type: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_gate_type:
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # If left blank, will default to INVOICE
                payment_type:
              )
              end

              sig do
                override.returns(
                  {
                    payment_type:
                      MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # If left blank, will default to INVOICE
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Subscription < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Subscription,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::OrSymbol
            )
          end
          attr_accessor :collection_schedule

          # The initial quantity for the subscription. It must be non-negative value.
          sig { returns(Float) }
          attr_accessor :initial_quantity

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Subscription::Proration
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::OrHash
            ).void
          end
          attr_writer :proration

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate
            )
          end
          attr_reader :subscription_rate

          sig do
            params(
              subscription_rate:
                MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::OrHash
            ).void
          end
          attr_writer :subscription_rate

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Exclusive end time for the subscription. If not provided, subscription inherits
          # contract end date.
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Inclusive start time for the subscription. If not provided, defaults to contract
          # start date
          sig { returns(T.nilable(Time)) }
          attr_reader :starting_at

          sig { params(starting_at: Time).void }
          attr_writer :starting_at

          sig do
            params(
              collection_schedule:
                MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::OrSymbol,
              initial_quantity: Float,
              proration:
                MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::OrHash,
              subscription_rate:
                MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::OrHash,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              ending_before: Time,
              name: String,
              starting_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            collection_schedule:,
            # The initial quantity for the subscription. It must be non-negative value.
            initial_quantity:,
            proration:,
            subscription_rate:,
            custom_fields: nil,
            description: nil,
            # Exclusive end time for the subscription. If not provided, subscription inherits
            # contract end date.
            ending_before: nil,
            name: nil,
            # Inclusive start time for the subscription. If not provided, defaults to contract
            # start date
            starting_at: nil
          )
          end

          sig do
            override.returns(
              {
                collection_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::OrSymbol,
                initial_quantity: Float,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration,
                subscription_rate:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                name: String,
                starting_at: Time
              }
            )
          end
          def to_hash
          end

          module CollectionSchedule
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADVANCE =
              T.let(
                :ADVANCE,
                MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::TaggedSymbol
              )
            ARREARS =
              T.let(
                :ARREARS,
                MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Proration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
            # is selected, the quantity increase will be billed on the scheduled date. If
            # BILL_ON_NEXT_COLLECTION_DATE is selected, the quantity increase will be billed
            # for in-arrears at the end of the period.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol
                )
              )
            end
            attr_reader :invoice_behavior

            sig do
              params(
                invoice_behavior:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol
              ).void
            end
            attr_writer :invoice_behavior

            # Indicates if the partial period will be prorated or charged a full amount.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_prorated

            sig { params(is_prorated: T::Boolean).void }
            attr_writer :is_prorated

            sig do
              params(
                invoice_behavior:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
                is_prorated: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
              # is selected, the quantity increase will be billed on the scheduled date. If
              # BILL_ON_NEXT_COLLECTION_DATE is selected, the quantity increase will be billed
              # for in-arrears at the end of the period.
              invoice_behavior: nil,
              # Indicates if the partial period will be prorated or charged a full amount.
              is_prorated: nil
            )
            end

            sig do
              override.returns(
                {
                  invoice_behavior:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
            # is selected, the quantity increase will be billed on the scheduled date. If
            # BILL_ON_NEXT_COLLECTION_DATE is selected, the quantity increase will be billed
            # for in-arrears at the end of the period.
            module InvoiceBehavior
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILL_IMMEDIATELY =
                T.let(
                  :BILL_IMMEDIATELY,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              BILL_ON_NEXT_COLLECTION_DATE =
                T.let(
                  :BILL_ON_NEXT_COLLECTION_DATE,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Frequency to bill subscription with. Together with product_id, must match
            # existing rate on the rate card.
            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol
              )
            end
            attr_accessor :billing_frequency

            # Must be subscription type product
            sig { returns(String) }
            attr_accessor :product_id

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
                product_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Frequency to bill subscription with. Together with product_id, must match
              # existing rate on the rate card.
              billing_frequency:,
              # Must be subscription type product
              product_id:
            )
            end

            sig do
              override.returns(
                {
                  billing_frequency:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
                  product_id: String
                }
              )
            end
            def to_hash
            end

            # Frequency to bill subscription with. Together with product_id, must match
            # existing rate on the rate card.
            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Transition < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::Transition,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :from_contract_id

          # This field's available values may vary based on your client's configuration.
          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::Transition::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior
              )
            )
          end
          attr_reader :future_invoice_behavior

          sig do
            params(
              future_invoice_behavior:
                MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::OrHash
            ).void
          end
          attr_writer :future_invoice_behavior

          sig do
            params(
              from_contract_id: String,
              type:
                MetronomeSDK::V1::ContractCreateParams::Transition::Type::OrSymbol,
              future_invoice_behavior:
                MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            from_contract_id:,
            # This field's available values may vary based on your client's configuration.
            type:,
            future_invoice_behavior: nil
          )
          end

          sig do
            override.returns(
              {
                from_contract_id: String,
                type:
                  MetronomeSDK::V1::ContractCreateParams::Transition::Type::OrSymbol,
                future_invoice_behavior:
                  MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior
              }
            )
          end
          def to_hash
          end

          # This field's available values may vary based on your client's configuration.
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Transition::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUPERSEDE =
              T.let(
                :SUPERSEDE,
                MetronomeSDK::V1::ContractCreateParams::Transition::Type::TaggedSymbol
              )
            RENEWAL =
              T.let(
                :RENEWAL,
                MetronomeSDK::V1::ContractCreateParams::Transition::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Transition::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class FutureInvoiceBehavior < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Controls whether future trueup invoices are billed or removed. Default behavior
            # is AS_IS if not specified.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::OrSymbol
                )
              )
            end
            attr_accessor :trueup

            sig do
              params(
                trueup:
                  T.nilable(
                    MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Controls whether future trueup invoices are billed or removed. Default behavior
              # is AS_IS if not specified.
              trueup: nil
            )
            end

            sig do
              override.returns(
                {
                  trueup:
                    T.nilable(
                      MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::OrSymbol
                    )
                }
              )
            end
            def to_hash
            end

            # Controls whether future trueup invoices are billed or removed. Default behavior
            # is AS_IS if not specified.
            module Trueup
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REMOVE =
                T.let(
                  :REMOVE,
                  MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::TaggedSymbol
                )
              AS_IS =
                T.let(
                  :AS_IS,
                  MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::OrSymbol
            )
          end
          attr_accessor :frequency

          # Required when using CUSTOM_DATE. This option lets you set a historical billing
          # anchor date, aligning future billing cycles with a chosen cadence. For example,
          # if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10
          # with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10.
          # Subsequent statements will follow the 10th of each month.
          sig { returns(T.nilable(Time)) }
          attr_reader :billing_anchor_date

          sig { params(billing_anchor_date: Time).void }
          attr_writer :billing_anchor_date

          # If not provided, defaults to the first day of the month.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::OrSymbol
              )
            )
          end
          attr_reader :day

          sig do
            params(
              day:
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::OrSymbol
            ).void
          end
          attr_writer :day

          # The date Metronome should start generating usage invoices. If unspecified,
          # contract start date will be used. This is useful to set if you want to import
          # historical invoices via our 'Create Historical Invoices' API rather than having
          # Metronome automatically generate them.
          sig { returns(T.nilable(Time)) }
          attr_reader :invoice_generation_starting_at

          sig { params(invoice_generation_starting_at: Time).void }
          attr_writer :invoice_generation_starting_at

          sig do
            params(
              frequency:
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::OrSymbol,
              billing_anchor_date: Time,
              day:
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::OrSymbol,
              invoice_generation_starting_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            frequency:,
            # Required when using CUSTOM_DATE. This option lets you set a historical billing
            # anchor date, aligning future billing cycles with a chosen cadence. For example,
            # if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10
            # with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10.
            # Subsequent statements will follow the 10th of each month.
            billing_anchor_date: nil,
            # If not provided, defaults to the first day of the month.
            day: nil,
            # The date Metronome should start generating usage invoices. If unspecified,
            # contract start date will be used. This is useful to set if you want to import
            # historical invoices via our 'Create Historical Invoices' API rather than having
            # Metronome automatically generate them.
            invoice_generation_starting_at: nil
          )
          end

          sig do
            override.returns(
              {
                frequency:
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::OrSymbol,
                billing_anchor_date: Time,
                day:
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::OrSymbol,
                invoice_generation_starting_at: Time
              }
            )
          end
          def to_hash
          end

          module Frequency
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # If not provided, defaults to the first day of the month.
          module Day
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIRST_OF_MONTH =
              T.let(
                :FIRST_OF_MONTH,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::TaggedSymbol
              )
            CONTRACT_START =
              T.let(
                :CONTRACT_START,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::TaggedSymbol
              )
            CUSTOM_DATE =
              T.let(
                :CUSTOM_DATE,
                MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::Day::TaggedSymbol
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
