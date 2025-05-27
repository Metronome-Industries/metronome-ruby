# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[MetronomeSDK::Models::V1::ContractListResponse::Data]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::ContractListResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[MetronomeSDK::Models::V1::ContractListResponse::Data]
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractListResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment
              ]
            )
          end
          attr_accessor :amendments

          sig { returns(MetronomeSDK::ContractWithoutAmendments) }
          attr_reader :current

          sig do
            params(
              current: MetronomeSDK::ContractWithoutAmendments::OrHash
            ).void
          end
          attr_writer :current

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(MetronomeSDK::ContractWithoutAmendments) }
          attr_reader :initial

          sig do
            params(
              initial: MetronomeSDK::ContractWithoutAmendments::OrHash
            ).void
          end
          attr_writer :initial

          # RFC 3339 timestamp indicating when the contract was archived. If not returned,
          # the contract is not archived.
          sig { returns(T.nilable(Time)) }
          attr_reader :archived_at

          sig { params(archived_at: Time).void }
          attr_writer :archived_at

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # The billing provider configuration associated with a contract.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration
              )
            )
          end
          attr_reader :customer_billing_provider_configuration

          sig do
            params(
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::OrHash
            ).void
          end
          attr_writer :customer_billing_provider_configuration

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration
              )
            )
          end
          attr_reader :prepaid_balance_threshold_configuration

          sig do
            params(
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :prepaid_balance_threshold_configuration

          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )
            )
          end
          attr_reader :scheduled_charges_on_usage_invoices

          sig do
            params(
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol
            ).void
          end
          attr_writer :scheduled_charges_on_usage_invoices

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration
              )
            )
          end
          attr_reader :spend_threshold_configuration

          sig do
            params(
              spend_threshold_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :spend_threshold_configuration

          # (beta) List of subscriptions on the contract.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription
                ]
              )
            )
          end
          attr_reader :subscriptions

          sig do
            params(
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::OrHash
                ]
            ).void
          end
          attr_writer :subscriptions

          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          sig { returns(T.nilable(String)) }
          attr_reader :uniqueness_key

          sig { params(uniqueness_key: String).void }
          attr_writer :uniqueness_key

          sig do
            params(
              id: String,
              amendments:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::OrHash
                ],
              current: MetronomeSDK::ContractWithoutAmendments::OrHash,
              customer_id: String,
              initial: MetronomeSDK::ContractWithoutAmendments::OrHash,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::OrHash,
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash,
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::OrHash,
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::OrHash
                ],
              uniqueness_key: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            amendments:,
            current:,
            customer_id:,
            initial:,
            # RFC 3339 timestamp indicating when the contract was archived. If not returned,
            # the contract is not archived.
            archived_at: nil,
            custom_fields: nil,
            # The billing provider configuration associated with a contract.
            customer_billing_provider_configuration: nil,
            prepaid_balance_threshold_configuration: nil,
            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            scheduled_charges_on_usage_invoices: nil,
            spend_threshold_configuration: nil,
            # (beta) List of subscriptions on the contract.
            subscriptions: nil,
            # Prevents the creation of duplicates. If a request to create a record is made
            # with a previously used uniqueness key, a new record will not be created and the
            # request will fail with a 409 error.
            uniqueness_key: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amendments:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment
                  ],
                current: MetronomeSDK::ContractWithoutAmendments,
                customer_id: String,
                initial: MetronomeSDK::ContractWithoutAmendments,
                archived_at: Time,
                custom_fields: T::Hash[Symbol, String],
                customer_billing_provider_configuration:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration,
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration,
                subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription
                  ],
                uniqueness_key: String
              }
            )
          end
          def to_hash
          end

          class Amendment < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T::Array[MetronomeSDK::Commit]) }
            attr_accessor :commits

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :created_by

            sig { returns(T::Array[MetronomeSDK::Override]) }
            attr_accessor :overrides

            sig { returns(T::Array[MetronomeSDK::ScheduledCharge]) }
            attr_accessor :scheduled_charges

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(T::Array[MetronomeSDK::Credit])) }
            attr_reader :credits

            sig { params(credits: T::Array[MetronomeSDK::Credit::OrHash]).void }
            attr_writer :credits

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
            attr_reader :discounts

            sig do
              params(discounts: T::Array[MetronomeSDK::Discount::OrHash]).void
            end
            attr_writer :discounts

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(T::Array[MetronomeSDK::ProService])) }
            attr_reader :professional_services

            sig do
              params(
                professional_services:
                  T::Array[MetronomeSDK::ProService::OrHash]
              ).void
            end
            attr_writer :professional_services

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty
                  ]
                )
              )
            end
            attr_reader :reseller_royalties

            sig do
              params(
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::OrHash
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
              params(
                id: String,
                commits: T::Array[MetronomeSDK::Commit::OrHash],
                created_at: Time,
                created_by: String,
                overrides: T::Array[MetronomeSDK::Override::OrHash],
                scheduled_charges:
                  T::Array[MetronomeSDK::ScheduledCharge::OrHash],
                starting_at: Time,
                credits: T::Array[MetronomeSDK::Credit::OrHash],
                discounts: T::Array[MetronomeSDK::Discount::OrHash],
                netsuite_sales_order_id: String,
                professional_services:
                  T::Array[MetronomeSDK::ProService::OrHash],
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::OrHash
                  ],
                salesforce_opportunity_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              commits:,
              created_at:,
              created_by:,
              overrides:,
              scheduled_charges:,
              starting_at:,
              credits: nil,
              # This field's availability is dependent on your client's configuration.
              discounts: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_sales_order_id: nil,
              # This field's availability is dependent on your client's configuration.
              professional_services: nil,
              # This field's availability is dependent on your client's configuration.
              reseller_royalties: nil,
              # This field's availability is dependent on your client's configuration.
              salesforce_opportunity_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  commits: T::Array[MetronomeSDK::Commit],
                  created_at: Time,
                  created_by: String,
                  overrides: T::Array[MetronomeSDK::Override],
                  scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge],
                  starting_at: Time,
                  credits: T::Array[MetronomeSDK::Credit],
                  discounts: T::Array[MetronomeSDK::Discount],
                  netsuite_sales_order_id: String,
                  professional_services: T::Array[MetronomeSDK::ProService],
                  reseller_royalties:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty
                    ],
                  salesforce_opportunity_id: String
                }
              )
            end
            def to_hash
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              end
              attr_accessor :reseller_type

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

              sig { returns(T.nilable(Time)) }
              attr_accessor :ending_before

              sig { returns(T.nilable(Float)) }
              attr_reader :fraction

              sig { params(fraction: Float).void }
              attr_writer :fraction

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_account_id

              sig { params(gcp_account_id: String).void }
              attr_writer :gcp_account_id

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_offer_id

              sig { params(gcp_offer_id: String).void }
              attr_writer :gcp_offer_id

              sig { returns(T.nilable(String)) }
              attr_reader :netsuite_reseller_id

              sig { params(netsuite_reseller_id: String).void }
              attr_writer :netsuite_reseller_id

              sig { returns(T.nilable(Float)) }
              attr_reader :reseller_contract_value

              sig { params(reseller_contract_value: Float).void }
              attr_writer :reseller_contract_value

              sig { returns(T.nilable(Time)) }
              attr_reader :starting_at

              sig { params(starting_at: Time).void }
              attr_writer :starting_at

              sig do
                params(
                  reseller_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::OrSymbol,
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String,
                  ending_before: T.nilable(Time),
                  fraction: Float,
                  gcp_account_id: String,
                  gcp_offer_id: String,
                  netsuite_reseller_id: String,
                  reseller_contract_value: Float,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                reseller_type:,
                aws_account_number: nil,
                aws_offer_id: nil,
                aws_payer_reference_id: nil,
                ending_before: nil,
                fraction: nil,
                gcp_account_id: nil,
                gcp_offer_id: nil,
                netsuite_reseller_id: nil,
                reseller_contract_value: nil,
                starting_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    reseller_type:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol,
                    aws_account_number: String,
                    aws_offer_id: String,
                    aws_payer_reference_id: String,
                    ending_before: T.nilable(Time),
                    fraction: Float,
                    gcp_account_id: String,
                    gcp_offer_id: String,
                    netsuite_reseller_id: String,
                    reseller_contract_value: Float,
                    starting_at: Time
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            end
            attr_accessor :billing_provider

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            end
            attr_accessor :delivery_method

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :configuration

            sig { params(configuration: T::Hash[Symbol, T.anything]).void }
            attr_writer :configuration

            # The billing provider configuration associated with a contract.
            sig do
              params(
                billing_provider:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
                delivery_method:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol,
                id: String,
                configuration: T::Hash[Symbol, T.anything]
              ).returns(T.attached_class)
            end
            def self.new(
              billing_provider:,
              delivery_method:,
              id: nil,
              # Configuration for the billing provider. The structure of this object is specific
              # to the billing provider.
              configuration: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_provider:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
                  delivery_method:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol,
                  id: String,
                  configuration: T::Hash[Symbol, T.anything]
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS_MARKETPLACE =
                T.let(
                  :aws_marketplace,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :stripe,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              NETSUITE =
                T.let(
                  :netsuite,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              AZURE_MARKETPLACE =
                T.let(
                  :azure_marketplace,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              QUICKBOOKS_ONLINE =
                T.let(
                  :quickbooks_online,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              WORKDAY =
                T.let(
                  :workday,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              GCP_MARKETPLACE =
                T.let(
                  :gcp_marketplace,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DIRECT_TO_BILLING_PROVIDER =
                T.let(
                  :direct_to_billing_provider,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SQS =
                T.let(
                  :aws_sqs,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              TACKLE =
                T.let(
                  :tackle,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SNS =
                T.let(
                  :aws_sns,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                    ]
                  )
                )
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                        MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :presentation_group_values

                sig do
                  params(
                    presentation_group_values: T::Hash[Symbol, String]
                  ).void
                end
                attr_writer :presentation_group_values

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :pricing_group_values

                sig do
                  params(pricing_group_values: T::Hash[Symbol, String]).void
                end
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    ]
                  )
                end
                def self.values
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit,
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
              )
            end
            attr_accessor :collection_schedule

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::OrHash
              ).void
            end
            attr_writer :proration

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::QuantitySchedule
                ]
              )
            end
            attr_accessor :quantity_schedule

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate
              )
            end
            attr_reader :subscription_rate

            sig do
              params(
                subscription_rate:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::OrHash
              ).void
            end
            attr_writer :subscription_rate

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(String)) }
            attr_reader :fiat_credit_type_id

            sig { params(fiat_credit_type_id: String).void }
            attr_writer :fiat_credit_type_id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                collection_schedule:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::OrSymbol,
                proration:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::OrHash,
                quantity_schedule:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::QuantitySchedule::OrHash
                  ],
                starting_at: Time,
                subscription_rate:
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::OrHash,
                id: String,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                fiat_credit_type_id: String,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              collection_schedule:,
              proration:,
              quantity_schedule:,
              starting_at:,
              subscription_rate:,
              id: nil,
              custom_fields: nil,
              description: nil,
              ending_before: nil,
              fiat_credit_type_id: nil,
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  collection_schedule:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::TaggedSymbol,
                  proration:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration,
                  quantity_schedule:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::QuantitySchedule
                    ],
                  starting_at: Time,
                  subscription_rate:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate,
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ending_before: Time,
                  fiat_credit_type_id: String,
                  name: String
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ADVANCE =
                T.let(
                  :ADVANCE,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )
              ARREARS =
                T.let(
                  :ARREARS,
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              end
              attr_accessor :invoice_behavior

              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig do
                params(
                  invoice_behavior:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(invoice_behavior:, is_prorated:)
              end

              sig do
                override.returns(
                  {
                    invoice_behavior:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol,
                    is_prorated: T::Boolean
                  }
                )
              end
              def to_hash
              end

              module InvoiceBehavior
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BILL_IMMEDIATELY =
                  T.let(
                    :BILL_IMMEDIATELY,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )
                BILL_ON_NEXT_COLLECTION_DATE =
                  T.let(
                    :BILL_ON_NEXT_COLLECTION_DATE,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::QuantitySchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :quantity

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              sig do
                params(
                  quantity: Float,
                  starting_at: Time,
                  ending_before: Time
                ).returns(T.attached_class)
              end
              def self.new(quantity:, starting_at:, ending_before: nil)
              end

              sig do
                override.returns(
                  { quantity: Float, starting_at: Time, ending_before: Time }
                )
              end
              def to_hash
              end
            end

            class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              end
              attr_accessor :billing_frequency

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
                  product:
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).returns(T.attached_class)
              end
              def self.new(billing_frequency:, product:)
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
                    product:
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::Product
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
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Subscription::SubscriptionRate::Product,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(String) }
                attr_accessor :name

                sig do
                  params(id: String, name: String).returns(T.attached_class)
                end
                def self.new(id:, name:)
                end

                sig { override.returns({ id: String, name: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
