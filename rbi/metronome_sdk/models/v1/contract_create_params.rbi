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

        # The billing provider configuration associated with a contract. Provide either an
        # ID or the provider and delivery method.
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

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration
            )
          )
        end
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::OrHash
          ).void
        end
        attr_writer :hierarchy_configuration

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

        # Selects the package linked to the specified alias as of the contract's start
        # date. Mutually exclusive with package_id.
        sig { returns(T.nilable(String)) }
        attr_reader :package_alias

        sig { params(package_alias: String).void }
        attr_writer :package_alias

        # If provided, provisions a customer on a package instead of creating a
        # traditional contract. When specified, only customer_id, starting_at, package_id,
        # uniqueness_key, transition, and custom_fields are allowed.
        sig { returns(T.nilable(String)) }
        attr_reader :package_id

        sig { params(package_id: String).void }
        attr_writer :package_id

        sig do
          returns(T.nilable(MetronomeSDK::PrepaidBalanceThresholdConfiguration))
        end
        attr_reader :prepaid_balance_threshold_configuration

        sig do
          params(
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash
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

        # The revenue system configuration associated with a contract. Provide either an
        # ID or the provider and delivery method.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration
            )
          )
        end
        attr_reader :revenue_system_configuration

        sig do
          params(
            revenue_system_configuration:
              MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::OrHash
          ).void
        end
        attr_writer :revenue_system_configuration

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

        sig { returns(T.nilable(MetronomeSDK::SpendThresholdConfiguration)) }
        attr_reader :spend_threshold_configuration

        sig do
          params(
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :spend_threshold_configuration

        # Spend trackers to attach to this contract. Aliases must be unique within a
        # contract.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractCreateParams::SpendTracker]
            )
          )
        end
        attr_reader :spend_trackers

        sig do
          params(
            spend_trackers:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::OrHash
              ]
          ).void
        end
        attr_writer :spend_trackers

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
            hierarchy_configuration:
              MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::OrHash,
            multiplier_override_prioritization:
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            overrides:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Override::OrHash
              ],
            package_alias: String,
            package_id: String,
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
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
            revenue_system_configuration:
              MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::OrHash,
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::OrHash
              ],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration::OrHash,
            spend_trackers:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::OrHash
              ],
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
          # The billing provider configuration associated with a contract. Provide either an
          # ID or the provider and delivery method.
          billing_provider_configuration: nil,
          commits: nil,
          credits: nil,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # exclusive contract end time
          ending_before: nil,
          hierarchy_configuration: nil,
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
          # Selects the package linked to the specified alias as of the contract's start
          # date. Mutually exclusive with package_id.
          package_alias: nil,
          # If provided, provisions a customer on a package instead of creating a
          # traditional contract. When specified, only customer_id, starting_at, package_id,
          # uniqueness_key, transition, and custom_fields are allowed.
          package_id: nil,
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
          # The revenue system configuration associated with a contract. Provide either an
          # ID or the provider and delivery method.
          revenue_system_configuration: nil,
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
          # Spend trackers to attach to this contract. Aliases must be unique within a
          # contract.
          spend_trackers: nil,
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
              hierarchy_configuration:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration,
              multiplier_override_prioritization:
                MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
              name: String,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              overrides:
                T::Array[MetronomeSDK::V1::ContractCreateParams::Override],
              package_alias: String,
              package_id: String,
              prepaid_balance_threshold_configuration:
                MetronomeSDK::PrepaidBalanceThresholdConfiguration,
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
              revenue_system_configuration:
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration,
              salesforce_opportunity_id: String,
              scheduled_charges:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge
                ],
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::SpendThresholdConfiguration,
              spend_trackers:
                T::Array[MetronomeSDK::V1::ContractCreateParams::SpendTracker],
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

          # Do not specify if using billing_provider_configuration_id.
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

          # The Metronome ID of the billing provider configuration. Use when a customer has
          # multiple configurations with the same billing provider and delivery method.
          # Otherwise, specify the billing_provider and delivery_method.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_provider_configuration_id

          sig { params(billing_provider_configuration_id: String).void }
          attr_writer :billing_provider_configuration_id

          # Do not specify if using billing_provider_configuration_id.
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

          # The billing provider configuration associated with a contract. Provide either an
          # ID or the provider and delivery method.
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
            # Do not specify if using billing_provider_configuration_id.
            billing_provider: nil,
            # The Metronome ID of the billing provider configuration. Use when a customer has
            # multiple configurations with the same billing provider and delivery method.
            # Otherwise, specify the billing_provider and delivery_method.
            billing_provider_configuration_id: nil,
            # Do not specify if using billing_provider_configuration_id.
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

          # Do not specify if using billing_provider_configuration_id.
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

          # Do not specify if using billing_provider_configuration_id.
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

          # Which products the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_tags

          sig { params(applicable_product_tags: T::Array[String]).void }
          attr_writer :applicable_product_tags

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Optional configuration for commit hierarchy access control
          sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

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
            returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
            ).void
          end
          attr_writer :specifiers

          # Optional attributes for spend tracker integration. Immutable after creation.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Commit::SpendTrackerAttributes
              )
            )
          end
          attr_reader :spend_tracker_attributes

          sig do
            params(
              spend_tracker_attributes:
                MetronomeSDK::V1::ContractCreateParams::Commit::SpendTrackerAttributes::OrHash
            ).void
          end
          attr_writer :spend_tracker_attributes

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
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash,
              invoice_schedule:
                MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
              spend_tracker_attributes:
                MetronomeSDK::V1::ContractCreateParams::Commit::SpendTrackerAttributes::OrHash,
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
            # Which products the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_tags: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # Optional configuration for commit hierarchy access control
            hierarchy_configuration: nil,
            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match access_schedule
            # amount. Optional for "PREPAID" commits: if not provided, this will be a
            # "complimentary" commit with no invoice.
            invoice_schedule: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
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
            # Optional attributes for spend tracker integration. Immutable after creation.
            spend_tracker_attributes: nil,
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
                hierarchy_configuration:
                  MetronomeSDK::CommitHierarchyConfiguration,
                invoice_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Commit::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::Commit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
                spend_tracker_attributes:
                  MetronomeSDK::V1::ContractCreateParams::Commit::SpendTrackerAttributes,
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

            # This field is only applicable to commit invoice schedules. If true, this
            # schedule will not generate an invoice.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :do_not_invoice

            sig { params(do_not_invoice: T::Boolean).void }
            attr_writer :do_not_invoice

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
                do_not_invoice: T::Boolean,
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
              # This field is only applicable to commit invoice schedules. If true, this
              # schedule will not generate an invoice.
              do_not_invoice: nil,
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
                  do_not_invoice: T::Boolean,
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

          class SpendTrackerAttributes < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Commit::SpendTrackerAttributes,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # If true, this commit will be included in spend trackers with discounted set to
            # DISCOUNTED_ONLY
            sig { returns(T::Boolean) }
            attr_accessor :counts_as_discounted

            # Optional attributes for spend tracker integration. Immutable after creation.
            sig do
              params(counts_as_discounted: T::Boolean).returns(T.attached_class)
            end
            def self.new(
              # If true, this commit will be included in spend trackers with discounted set to
              # DISCOUNTED_ONLY
              counts_as_discounted:
            )
            end

            sig { override.returns({ counts_as_discounted: T::Boolean }) }
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

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # Used only in UI/API. It is not exposed to end customers.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Optional configuration for credit hierarchy access control
          sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

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
            returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # Optional configuration for credit hierarchy access control
            hierarchy_configuration: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            # If multiple credits are applicable, the one with the lower priority will apply
            # first.
            priority: nil,
            rate_type: nil,
            # Fraction of unused segments that will be rolled over. Must be between 0 and 1.
            rollover_fraction: nil,
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
                hierarchy_configuration:
                  MetronomeSDK::CommitHierarchyConfiguration,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::Credit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifierInput]
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

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

            # This field is only applicable to commit invoice schedules. If true, this
            # schedule will not generate an invoice.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :do_not_invoice

            sig { params(do_not_invoice: T::Boolean).void }
            attr_writer :do_not_invoice

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
                do_not_invoice: T::Boolean,
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
              # This field is only applicable to commit invoice schedules. If true, this
              # schedule will not generate an invoice.
              do_not_invoice: nil,
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
                  do_not_invoice: T::Boolean,
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

        class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Parent
              )
            )
          end
          attr_reader :parent

          sig do
            params(
              parent:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Parent::OrHash
            ).void
          end
          attr_writer :parent

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior
              )
            )
          end
          attr_reader :parent_behavior

          sig do
            params(
              parent_behavior:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::OrHash
            ).void
          end
          attr_writer :parent_behavior

          # Indicates which customer should pay for the child's invoice charges
          #
          # **SELF**: The child pays for its own invoice charges
          #
          # **PARENT**: The parent pays for the child's invoice charges
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::OrSymbol
              )
            )
          end
          attr_reader :payer

          sig do
            params(
              payer:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::OrSymbol
            ).void
          end
          attr_writer :payer

          # Indicates the behavior of the child's invoice statements on the parent's
          # invoices.
          #
          # **CONSOLIDATE**: Child's invoice statements will be added to parent's
          # consolidated invoices
          #
          # **SEPARATE**: Child's invoice statements will appear not appear on parent's
          # consolidated invoices
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::OrSymbol
              )
            )
          end
          attr_reader :usage_statement_behavior

          sig do
            params(
              usage_statement_behavior:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::OrSymbol
            ).void
          end
          attr_writer :usage_statement_behavior

          sig do
            params(
              parent:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Parent::OrHash,
              parent_behavior:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::OrHash,
              payer:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::OrSymbol,
              usage_statement_behavior:
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            parent: nil,
            parent_behavior: nil,
            # Indicates which customer should pay for the child's invoice charges
            #
            # **SELF**: The child pays for its own invoice charges
            #
            # **PARENT**: The parent pays for the child's invoice charges
            payer: nil,
            # Indicates the behavior of the child's invoice statements on the parent's
            # invoices.
            #
            # **CONSOLIDATE**: Child's invoice statements will be added to parent's
            # consolidated invoices
            #
            # **SEPARATE**: Child's invoice statements will appear not appear on parent's
            # consolidated invoices
            usage_statement_behavior: nil
          )
          end

          sig do
            override.returns(
              {
                parent:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Parent,
                parent_behavior:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior,
                payer:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::OrSymbol,
                usage_statement_behavior:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Parent < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Parent,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :contract_id

            sig { returns(String) }
            attr_accessor :customer_id

            sig do
              params(contract_id: String, customer_id: String).returns(
                T.attached_class
              )
            end
            def self.new(contract_id:, customer_id:)
            end

            sig do
              override.returns({ contract_id: String, customer_id: String })
            end
            def to_hash
            end
          end

          class ParentBehavior < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Indicates the desired behavior of consolidated invoices generated by the parent
            # in a customer hierarchy
            #
            # **CONCATENATE**: Statements on the invoices of child customers will be appended
            # to the consolidated invoice
            #
            # **NONE**: Do not generate consolidated invoices
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::OrSymbol
                )
              )
            end
            attr_reader :invoice_consolidation_type

            sig do
              params(
                invoice_consolidation_type:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::OrSymbol
              ).void
            end
            attr_writer :invoice_consolidation_type

            sig do
              params(
                invoice_consolidation_type:
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Indicates the desired behavior of consolidated invoices generated by the parent
              # in a customer hierarchy
              #
              # **CONCATENATE**: Statements on the invoices of child customers will be appended
              # to the consolidated invoice
              #
              # **NONE**: Do not generate consolidated invoices
              invoice_consolidation_type: nil
            )
            end

            sig do
              override.returns(
                {
                  invoice_consolidation_type:
                    MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Indicates the desired behavior of consolidated invoices generated by the parent
            # in a customer hierarchy
            #
            # **CONCATENATE**: Statements on the invoices of child customers will be appended
            # to the consolidated invoice
            #
            # **NONE**: Do not generate consolidated invoices
            module InvoiceConsolidationType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONCATENATE =
                T.let(
                  :CONCATENATE,
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::TaggedSymbol
                )
              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::ParentBehavior::InvoiceConsolidationType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Indicates which customer should pay for the child's invoice charges
          #
          # **SELF**: The child pays for its own invoice charges
          #
          # **PARENT**: The parent pays for the child's invoice charges
          module Payer
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SELF =
              T.let(
                :SELF,
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::TaggedSymbol
              )
            PARENT =
              T.let(
                :PARENT,
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::Payer::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Indicates the behavior of the child's invoice statements on the parent's
          # invoices.
          #
          # **CONSOLIDATE**: Child's invoice statements will be added to parent's
          # consolidated invoices
          #
          # **SEPARATE**: Child's invoice statements will appear not appear on parent's
          # consolidated invoices
          module UsageStatementBehavior
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONSOLIDATE =
              T.let(
                :CONSOLIDATE,
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::TaggedSymbol
              )
            SEPARATE =
              T.let(
                :SEPARATE,
                MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::HierarchyConfiguration::UsageStatementBehavior::TaggedSymbol
                ]
              )
            end
            def self.values
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
          # `false`. If `true` you can specify relevant commits in `override_specifiers` by
          # passing `commit_ids`, `recurring_commit_ids`, or `any_commit_or_credit_ids`. If
          # you do not specify any of these fields, the override will apply when consuming
          # any prepaid commit, postpaid commit, or credit
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
            # `false`. If `true` you can specify relevant commits in `override_specifiers` by
            # passing `commit_ids`, `recurring_commit_ids`, or `any_commit_or_credit_ids`. If
            # you do not specify any of these fields, the override will apply when consuming
            # any prepaid commit, postpaid commit, or credit
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

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of `product_id`, `product_tags`, `pricing_group_values`, or
            # `presentation_group_values`. Must be used instead of both `commit_ids` and
            # `recurring_commit_ids` If provided, the override will apply to any specified
            # commit, credit, recurring commit or recurring credit IDs.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :any_commit_or_credit_ids

            sig { params(any_commit_or_credit_ids: T::Array[String]).void }
            attr_writer :any_commit_or_credit_ids

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
            # one of `product_id`, `product_tags`, `pricing_group_values`, or
            # `presentation_group_values`. If provided, the override will only apply to the
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
            # one of `product_id`, `product_tags`, `pricing_group_values`, or
            # `presentation_group_values`. If provided, the override will only apply to
            # commits created by the specified recurring commit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_commit_ids

            sig { params(recurring_commit_ids: T::Array[String]).void }
            attr_writer :recurring_commit_ids

            sig do
              params(
                any_commit_or_credit_ids: T::Array[String],
                billing_frequency:
                  MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                commit_ids: T::Array[String],
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String],
                recurring_commit_ids: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of `product_id`, `product_tags`, `pricing_group_values`, or
              # `presentation_group_values`. Must be used instead of both `commit_ids` and
              # `recurring_commit_ids` If provided, the override will apply to any specified
              # commit, credit, recurring commit or recurring credit IDs.
              any_commit_or_credit_ids: nil,
              billing_frequency: nil,
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of `product_id`, `product_tags`, `pricing_group_values`, or
              # `presentation_group_values`. If provided, the override will only apply to the
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
              # one of `product_id`, `product_tags`, `pricing_group_values`, or
              # `presentation_group_values`. If provided, the override will only apply to
              # commits created by the specified recurring commit ids.
              recurring_commit_ids: nil
            )
            end

            sig do
              override.returns(
                {
                  any_commit_or_credit_ids: T::Array[String],
                  billing_frequency:
                    MetronomeSDK::V1::ContractCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String]
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
              TIERED_PERCENTAGE =
                T.let(
                  :TIERED_PERCENTAGE,
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

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

          # Optional configuration for recurring commit/credit hierarchy access control
          sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

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

          # Optional rounding configuration for prorated recurring commit amounts.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding
              )
            )
          end
          attr_reader :proration_rounding

          sig do
            params(
              proration_rounding:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::OrHash
            ).void
          end
          attr_writer :proration_rounding

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
            returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
            ).void
          end
          attr_writer :specifiers

          # Attach a subscription to the recurring commit/credit.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig
              )
            )
          end
          attr_reader :subscription_config

          sig do
            params(
              subscription_config:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::OrHash
            ).void
          end
          attr_writer :subscription_config

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
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash,
              invoice_amount:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol,
              proration_rounding:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::OrHash,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
              subscription_config:
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::OrHash,
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
            # Optional configuration for recurring commit/credit hierarchy access control
            hierarchy_configuration: nil,
            # The amount the customer should be billed for the commit. Not required.
            invoice_amount: nil,
            # displayed on invoices. will be passed through to the individual commits
            name: nil,
            # Will be passed down to the individual commits
            netsuite_sales_order_id: nil,
            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            proration: nil,
            # Optional rounding configuration for prorated recurring commit amounts.
            proration_rounding: nil,
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
            # Attach a subscription to the recurring commit/credit.
            subscription_config: nil,
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
                hierarchy_configuration:
                  MetronomeSDK::CommitHierarchyConfiguration,
                invoice_amount:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::Proration::OrSymbol,
                proration_rounding:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
                subscription_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig,
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

            # This field is required unless a subscription is attached via
            # `subscription_config`.
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
              # This field is required unless a subscription is attached via
              # `subscription_config`.
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

          class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access
                )
              )
            end
            attr_reader :access

            sig do
              params(
                access:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::OrHash
              ).void
            end
            attr_writer :access

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice
                )
              )
            end
            attr_reader :invoice

            sig do
              params(
                invoice:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::OrHash
              ).void
            end
            attr_writer :invoice

            # Optional rounding configuration for prorated recurring commit amounts.
            sig do
              params(
                access:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::OrHash,
                invoice:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::OrHash
              ).returns(T.attached_class)
            end
            def self.new(access: nil, invoice: nil)
            end

            sig do
              override.returns(
                {
                  access:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access,
                  invoice:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice
                }
              )
            end
            def to_hash
            end

            class Access < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Number of decimal places to round to. Applied directly to the stored monetary
              # representation. Negative values round to powers of 10 (e.g., -2 rounds to
              # nearest 100 in the stored unit. For USD, this means rounding to the nearest
              # dollar).
              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                )
              end
              attr_accessor :rounding_method

              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Number of decimal places to round to. Applied directly to the stored monetary
                # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                # dollar).
                decimal_places:,
                rounding_method:
              )
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                HALF_UP =
                  T.let(
                    :HALF_UP,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )
                FLOOR =
                  T.let(
                    :FLOOR,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )
                CEILING =
                  T.let(
                    :CEILING,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Invoice < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Number of decimal places to round to. Applied directly to the stored monetary
              # representation. Negative values round to powers of 10 (e.g., -2 rounds to
              # nearest 100 in the stored unit. For USD, this means rounding to the nearest
              # dollar).
              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                )
              end
              attr_accessor :rounding_method

              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Number of decimal places to round to. Applied directly to the stored monetary
                # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                # dollar).
                decimal_places:,
                rounding_method:
              )
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                HALF_UP =
                  T.let(
                    :HALF_UP,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                  )
                FLOOR =
                  T.let(
                    :FLOOR,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                  )
                CEILING =
                  T.let(
                    :CEILING,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
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

          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig
              )
            end
            attr_reader :apply_seat_increase_config

            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
              ).void
            end
            attr_writer :apply_seat_increase_config

            # ID of the subscription to configure on the recurring commit/credit.
            sig { returns(String) }
            attr_accessor :subscription_id

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
                )
              )
            end
            attr_reader :allocation

            sig do
              params(
                allocation:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
              ).void
            end
            attr_writer :allocation

            # Attach a subscription to the recurring commit/credit.
            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                subscription_id: String,
                allocation:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              apply_seat_increase_config:,
              # ID of the subscription to configure on the recurring commit/credit.
              subscription_id:,
              # If set to POOLED, allocation added per seat is pooled across the account. If set
              # to INDIVIDUAL, each seat in the subscription will have its own allocation.
              allocation: nil
            )
            end

            sig do
              override.returns(
                {
                  apply_seat_increase_config:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                  subscription_id: String,
                  allocation:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
                }
              )
            end
            def to_hash
            end

            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Indicates whether a mid-period seat increase should be prorated.
              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig { params(is_prorated: T::Boolean).returns(T.attached_class) }
              def self.new(
                # Indicates whether a mid-period seat increase should be prorated.
                is_prorated:
              )
              end

              sig { override.returns({ is_prorated: T::Boolean }) }
              def to_hash
              end
            end

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            module Allocation
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INDIVIDUAL =
                T.let(
                  :INDIVIDUAL,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                )
              POOLED =
                T.let(
                  :POOLED,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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

          # Optional configuration for recurring commit/credit hierarchy access control
          sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

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

          # Optional rounding configuration for prorated recurring credit amounts.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding
              )
            )
          end
          attr_reader :proration_rounding

          sig do
            params(
              proration_rounding:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::OrHash
            ).void
          end
          attr_writer :proration_rounding

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
            returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
            ).void
          end
          attr_writer :specifiers

          # Attach a subscription to the recurring commit/credit.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig
              )
            )
          end
          attr_reader :subscription_config

          sig do
            params(
              subscription_config:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::OrHash
            ).void
          end
          attr_writer :subscription_config

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
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol,
              proration_rounding:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::OrHash,
              rate_type:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
              subscription_config:
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::OrHash,
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
            # Optional configuration for recurring commit/credit hierarchy access control
            hierarchy_configuration: nil,
            # displayed on invoices. will be passed through to the individual commits
            name: nil,
            # Will be passed down to the individual commits
            netsuite_sales_order_id: nil,
            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            proration: nil,
            # Optional rounding configuration for prorated recurring credit amounts.
            proration_rounding: nil,
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
            # Attach a subscription to the recurring commit/credit.
            subscription_config: nil,
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
                hierarchy_configuration:
                  MetronomeSDK::CommitHierarchyConfiguration,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::Proration::OrSymbol,
                proration_rounding:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding,
                rate_type:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
                subscription_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig,
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

            # This field is required unless a subscription is attached via
            # `subscription_config`.
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
              # This field is required unless a subscription is attached via
              # `subscription_config`.
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

          class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access
                )
              )
            end
            attr_reader :access

            sig do
              params(
                access:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::OrHash
              ).void
            end
            attr_writer :access

            # Optional rounding configuration for prorated recurring credit amounts.
            sig do
              params(
                access:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::OrHash
              ).returns(T.attached_class)
            end
            def self.new(access: nil)
            end

            sig do
              override.returns(
                {
                  access:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access
                }
              )
            end
            def to_hash
            end

            class Access < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Number of decimal places to round to. Applied directly to the stored monetary
              # representation. Negative values round to powers of 10 (e.g., -2 rounds to
              # nearest 100 in the stored unit. For USD, this means rounding to the nearest
              # dollar).
              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                )
              end
              attr_accessor :rounding_method

              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Number of decimal places to round to. Applied directly to the stored monetary
                # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                # dollar).
                decimal_places:,
                rounding_method:
              )
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                HALF_UP =
                  T.let(
                    :HALF_UP,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )
                FLOOR =
                  T.let(
                    :FLOOR,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )
                CEILING =
                  T.let(
                    :CEILING,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
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

          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig
              )
            end
            attr_reader :apply_seat_increase_config

            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
              ).void
            end
            attr_writer :apply_seat_increase_config

            # ID of the subscription to configure on the recurring commit/credit.
            sig { returns(String) }
            attr_accessor :subscription_id

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
                )
              )
            end
            attr_reader :allocation

            sig do
              params(
                allocation:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
              ).void
            end
            attr_writer :allocation

            # Attach a subscription to the recurring commit/credit.
            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                subscription_id: String,
                allocation:
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              apply_seat_increase_config:,
              # ID of the subscription to configure on the recurring commit/credit.
              subscription_id:,
              # If set to POOLED, allocation added per seat is pooled across the account. If set
              # to INDIVIDUAL, each seat in the subscription will have its own allocation.
              allocation: nil
            )
            end

            sig do
              override.returns(
                {
                  apply_seat_increase_config:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                  subscription_id: String,
                  allocation:
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
                }
              )
            end
            def to_hash
            end

            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Indicates whether a mid-period seat increase should be prorated.
              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig { params(is_prorated: T::Boolean).returns(T.attached_class) }
              def self.new(
                # Indicates whether a mid-period seat increase should be prorated.
                is_prorated:
              )
              end

              sig { override.returns({ is_prorated: T::Boolean }) }
              def to_hash
              end
            end

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            module Allocation
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INDIVIDUAL =
                T.let(
                  :INDIVIDUAL,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                )
              POOLED =
                T.let(
                  :POOLED,
                  MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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

        class RevenueSystemConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # How revenue recognition records should be delivered to the revenue system. Do
          # not specify if using revenue_system_configuration_id.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::OrSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          # The system that is providing services for revenue recognition. Do not specify if
          # using revenue_system_configuration_id.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::OrSymbol
              )
            )
          end
          attr_reader :provider

          sig do
            params(
              provider:
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::OrSymbol
            ).void
          end
          attr_writer :provider

          # The Metronome ID of the revenue system configuration. Use when a customer has
          # multiple configurations with the same provider and delivery method. Otherwise,
          # specify the provider and delivery_method.
          sig { returns(T.nilable(String)) }
          attr_reader :revenue_system_configuration_id

          sig { params(revenue_system_configuration_id: String).void }
          attr_writer :revenue_system_configuration_id

          # The revenue system configuration associated with a contract. Provide either an
          # ID or the provider and delivery method.
          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::OrSymbol,
              provider:
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::OrSymbol,
              revenue_system_configuration_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # How revenue recognition records should be delivered to the revenue system. Do
            # not specify if using revenue_system_configuration_id.
            delivery_method: nil,
            # The system that is providing services for revenue recognition. Do not specify if
            # using revenue_system_configuration_id.
            provider: nil,
            # The Metronome ID of the revenue system configuration. Use when a customer has
            # multiple configurations with the same provider and delivery method. Otherwise,
            # specify the provider and delivery_method.
            revenue_system_configuration_id: nil
          )
          end

          sig do
            override.returns(
              {
                delivery_method:
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::OrSymbol,
                provider:
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::OrSymbol,
                revenue_system_configuration_id: String
              }
            )
          end
          def to_hash
          end

          # How revenue recognition records should be delivered to the revenue system. Do
          # not specify if using revenue_system_configuration_id.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::DeliveryMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The system that is providing services for revenue recognition. Do not specify if
          # using revenue_system_configuration_id.
          module Provider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::RevenueSystemConfiguration::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
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

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule::OrHash,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              netsuite_sales_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            product_id:,
            # Must provide either schedule_items or recurring_schedule.
            schedule:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule,
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
                  MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::Schedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # This field is only applicable to commit invoice schedules. If true, this
            # schedule will not generate an invoice.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :do_not_invoice

            sig { params(do_not_invoice: T::Boolean).void }
            attr_writer :do_not_invoice

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
                do_not_invoice: T::Boolean,
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
              # This field is only applicable to commit invoice schedules. If true, this
              # schedule will not generate an invoice.
              do_not_invoice: nil,
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
                  do_not_invoice: T::Boolean,
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

        class SpendTracker < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractCreateParams::SpendTracker,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Human-readable identifier, unique per contract.
          sig { returns(String) }
          attr_accessor :alias_

          sig do
            returns(
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier
              ]
            )
          end
          attr_accessor :applicable_spend_specifiers

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig do
            returns(
              MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency::OrSymbol
            )
          end
          attr_accessor :reset_frequency

          sig do
            params(
              alias_: String,
              applicable_spend_specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::OrHash
                ],
              credit_type_id: String,
              reset_frequency:
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Human-readable identifier, unique per contract.
            alias_:,
            applicable_spend_specifiers:,
            credit_type_id:,
            reset_frequency:
          )
          end

          sig do
            override.returns(
              {
                alias_: String,
                applicable_spend_specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier
                  ],
                credit_type_id: String,
                reset_frequency:
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency::OrSymbol
              }
            )
          end
          def to_hash
          end

          class ApplicableSpendSpecifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::OrSymbol
                ]
              )
            end
            attr_accessor :sources

            sig do
              returns(
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType::OrSymbol
              )
            end
            attr_accessor :spend_type

            # Filter by whether the spend was discounted. Defaults to ANY if omitted.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::OrSymbol
                )
              )
            end
            attr_reader :discounted

            sig do
              params(
                discounted:
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::OrSymbol
              ).void
            end
            attr_writer :discounted

            sig do
              params(
                sources:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::OrSymbol
                  ],
                spend_type:
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType::OrSymbol,
                discounted:
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              sources:,
              spend_type:,
              # Filter by whether the spend was discounted. Defaults to ANY if omitted.
              discounted: nil
            )
            end

            sig do
              override.returns(
                {
                  sources:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::OrSymbol
                    ],
                  spend_type:
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType::OrSymbol,
                  discounted:
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Source
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              THRESHOLD_RECHARGE =
                T.let(
                  :THRESHOLD_RECHARGE,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :MANUAL,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Source::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module SpendType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_PURCHASE =
                T.let(
                  :COMMIT_PURCHASE,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::SpendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Filter by whether the spend was discounted. Defaults to ANY if omitted.
            module Discounted
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANY =
                T.let(
                  :ANY,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::TaggedSymbol
                )
              DISCOUNTED_ONLY =
                T.let(
                  :DISCOUNTED_ONLY,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::TaggedSymbol
                )
              UNDISCOUNTED_ONLY =
                T.let(
                  :UNDISCOUNTED_ONLY,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::SpendTracker::ApplicableSpendSpecifier::Discounted::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module ResetFrequency
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BILLING_PERIOD =
              T.let(
                :BILLING_PERIOD,
                MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::SpendTracker::ResetFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
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

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig
              )
            )
          end
          attr_reader :billing_cycle_config

          sig do
            params(
              billing_cycle_config:
                MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::OrHash
            ).void
          end
          attr_writer :billing_cycle_config

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

          # The initial quantity for the subscription. It must be non-negative value.
          # Required if quantity_management_mode is QUANTITY_ONLY.
          sig { returns(T.nilable(Float)) }
          attr_reader :initial_quantity

          sig { params(initial_quantity: Float).void }
          attr_writer :initial_quantity

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Determines how the subscription's quantity is controlled. Defaults to
          # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
          # directly on the subscription. `initial_quantity` must be provided with this
          # option. Compatible with recurring commits/credits that use POOLED allocation.
          # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
          # user_123) to increment and decrement a subscription quantity, rather than
          # directly providing the quantity. You must use a **SEAT_BASED** subscription to
          # use a linked recurring credit with an allocation per seat. `seat_config` must be
          # provided with this option.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::OrSymbol
              )
            )
          end
          attr_reader :quantity_management_mode

          sig do
            params(
              quantity_management_mode:
                MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::OrSymbol
            ).void
          end
          attr_writer :quantity_management_mode

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateParams::Subscription::SeatConfig
              )
            )
          end
          attr_reader :seat_config

          sig do
            params(
              seat_config:
                MetronomeSDK::V1::ContractCreateParams::Subscription::SeatConfig::OrHash
            ).void
          end
          attr_writer :seat_config

          # Inclusive start time for the subscription. If not provided, defaults to contract
          # start date
          sig { returns(T.nilable(Time)) }
          attr_reader :starting_at

          sig { params(starting_at: Time).void }
          attr_writer :starting_at

          # A temporary ID used to reference the subscription in recurring commit/credit
          # subscription configs created within the same payload.
          sig { returns(T.nilable(String)) }
          attr_reader :temporary_id

          sig { params(temporary_id: String).void }
          attr_writer :temporary_id

          sig do
            params(
              collection_schedule:
                MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::OrSymbol,
              proration:
                MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::OrHash,
              subscription_rate:
                MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate::OrHash,
              billing_cycle_config:
                MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::OrHash,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              ending_before: Time,
              initial_quantity: Float,
              name: String,
              quantity_management_mode:
                MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::OrSymbol,
              seat_config:
                MetronomeSDK::V1::ContractCreateParams::Subscription::SeatConfig::OrHash,
              starting_at: Time,
              temporary_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            collection_schedule:,
            proration:,
            subscription_rate:,
            billing_cycle_config: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            description: nil,
            # Exclusive end time for the subscription. If not provided, subscription inherits
            # contract end date.
            ending_before: nil,
            # The initial quantity for the subscription. It must be non-negative value.
            # Required if quantity_management_mode is QUANTITY_ONLY.
            initial_quantity: nil,
            name: nil,
            # Determines how the subscription's quantity is controlled. Defaults to
            # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
            # directly on the subscription. `initial_quantity` must be provided with this
            # option. Compatible with recurring commits/credits that use POOLED allocation.
            # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
            # user_123) to increment and decrement a subscription quantity, rather than
            # directly providing the quantity. You must use a **SEAT_BASED** subscription to
            # use a linked recurring credit with an allocation per seat. `seat_config` must be
            # provided with this option.
            quantity_management_mode: nil,
            seat_config: nil,
            # Inclusive start time for the subscription. If not provided, defaults to contract
            # start date
            starting_at: nil,
            # A temporary ID used to reference the subscription in recurring commit/credit
            # subscription configs created within the same payload.
            temporary_id: nil
          )
          end

          sig do
            override.returns(
              {
                collection_schedule:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::CollectionSchedule::OrSymbol,
                proration:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration,
                subscription_rate:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SubscriptionRate,
                billing_cycle_config:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                initial_quantity: Float,
                name: String,
                quantity_management_mode:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::OrSymbol,
                seat_config:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SeatConfig,
                starting_at: Time,
                temporary_id: String
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

            # Indicates how mid-period quantity adjustments are invoiced.
            # **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
            # quantity increase will be billed immediately on the scheduled date.
            # **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
            # in-arrears at the end of the period.
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
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding
                )
              )
            end
            attr_reader :rounding

            sig do
              params(
                rounding:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::OrHash
              ).void
            end
            attr_writer :rounding

            sig do
              params(
                invoice_behavior:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
                is_prorated: T::Boolean,
                rounding:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Indicates how mid-period quantity adjustments are invoiced.
              # **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
              # quantity increase will be billed immediately on the scheduled date.
              # **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
              # in-arrears at the end of the period.
              invoice_behavior: nil,
              # Indicates if the partial period will be prorated or charged a full amount.
              is_prorated: nil,
              rounding: nil
            )
            end

            sig do
              override.returns(
                {
                  invoice_behavior:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean,
                  rounding:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding
                }
              )
            end
            def to_hash
            end

            # Indicates how mid-period quantity adjustments are invoiced.
            # **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
            # quantity increase will be billed immediately on the scheduled date.
            # **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
            # in-arrears at the end of the period.
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

            class Rounding < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Number of decimal places to round to. Applied directly to the stored monetary
              # representation. Negative values round to powers of 10 (e.g., -2 rounds to
              # nearest 100 in the stored unit. For USD, this means rounding to the nearest
              # dollar).
              sig { returns(Float) }
              attr_accessor :decimal_places

              sig do
                returns(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::OrSymbol
                )
              end
              attr_accessor :rounding_method

              sig do
                params(
                  decimal_places: Float,
                  rounding_method:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Number of decimal places to round to. Applied directly to the stored monetary
                # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                # dollar).
                decimal_places:,
                rounding_method:
              )
              end

              sig do
                override.returns(
                  {
                    decimal_places: Float,
                    rounding_method:
                      MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module RoundingMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                HALF_UP =
                  T.let(
                    :HALF_UP,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                  )
                FLOOR =
                  T.let(
                    :FLOOR,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                  )
                CEILING =
                  T.let(
                    :CEILING,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractCreateParams::Subscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
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

          class BillingCycleConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The date to anchor the billing cycle to. If omitted, defaults to the contract's
            # usage invoice billing cycle anchor date.
            sig { returns(T.nilable(Time)) }
            attr_reader :anchor_date

            sig { params(anchor_date: Time).void }
            attr_writer :anchor_date

            # Controls whether this subscription consolidates onto usage invoices or gets its
            # own scheduled invoice. Defaults to ON_USAGE_INVOICE if omitted.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::OrSymbol
                )
              )
            end
            attr_reader :invoice_placement

            sig do
              params(
                invoice_placement:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::OrSymbol
              ).void
            end
            attr_writer :invoice_placement

            sig do
              params(
                anchor_date: Time,
                invoice_placement:
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The date to anchor the billing cycle to. If omitted, defaults to the contract's
              # usage invoice billing cycle anchor date.
              anchor_date: nil,
              # Controls whether this subscription consolidates onto usage invoices or gets its
              # own scheduled invoice. Defaults to ON_USAGE_INVOICE if omitted.
              invoice_placement: nil
            )
            end

            sig do
              override.returns(
                {
                  anchor_date: Time,
                  invoice_placement:
                    MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Controls whether this subscription consolidates onto usage invoices or gets its
            # own scheduled invoice. Defaults to ON_USAGE_INVOICE if omitted.
            module InvoicePlacement
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ON_SCHEDULED_INVOICE =
                T.let(
                  :ON_SCHEDULED_INVOICE,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                )
              ON_USAGE_INVOICE =
                T.let(
                  :ON_USAGE_INVOICE,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateParams::Subscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Determines how the subscription's quantity is controlled. Defaults to
          # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
          # directly on the subscription. `initial_quantity` must be provided with this
          # option. Compatible with recurring commits/credits that use POOLED allocation.
          # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
          # user_123) to increment and decrement a subscription quantity, rather than
          # directly providing the quantity. You must use a **SEAT_BASED** subscription to
          # use a linked recurring credit with an allocation per seat. `seat_config` must be
          # provided with this option.
          module QuantityManagementMode
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SEAT_BASED =
              T.let(
                :SEAT_BASED,
                MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::TaggedSymbol
              )
            QUANTITY_ONLY =
              T.let(
                :QUANTITY_ONLY,
                MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateParams::Subscription::QuantityManagementMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class SeatConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractCreateParams::Subscription::SeatConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The initial assigned seats on this subscription.
            sig { returns(T::Array[String]) }
            attr_accessor :initial_seat_ids

            # The property name, sent on usage events, that identifies the seat ID associated
            # with the usage event. For example, the property name might be seat_id or
            # user_id. The property must be set as a group key on billable metrics and a
            # presentation/pricing group key on contract products. This allows linked
            # recurring credits with an allocation per seat to be consumed by only one seat's
            # usage.
            sig { returns(String) }
            attr_accessor :seat_group_key

            # The initial amount of unassigned seats on this subscription.
            sig { returns(T.nilable(Float)) }
            attr_reader :initial_unassigned_seats

            sig { params(initial_unassigned_seats: Float).void }
            attr_writer :initial_unassigned_seats

            sig do
              params(
                initial_seat_ids: T::Array[String],
                seat_group_key: String,
                initial_unassigned_seats: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # The initial assigned seats on this subscription.
              initial_seat_ids:,
              # The property name, sent on usage events, that identifies the seat ID associated
              # with the usage event. For example, the property name might be seat_id or
              # user_id. The property must be set as a group key on billable metrics and a
              # presentation/pricing group key on contract products. This allows linked
              # recurring credits with an allocation per seat to be consumed by only one seat's
              # usage.
              seat_group_key:,
              # The initial amount of unassigned seats on this subscription.
              initial_unassigned_seats: nil
            )
            end

            sig do
              override.returns(
                {
                  initial_seat_ids: T::Array[String],
                  seat_group_key: String,
                  initial_unassigned_seats: Float
                }
              )
            end
            def to_hash
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
