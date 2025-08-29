# typed: strong

module MetronomeSDK
  module Models
    class Contract < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Contract, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[MetronomeSDK::Contract::Amendment]) }
      attr_accessor :amendments

      sig { returns(MetronomeSDK::ContractWithoutAmendments) }
      attr_reader :current

      sig do
        params(current: MetronomeSDK::ContractWithoutAmendments::OrHash).void
      end
      attr_writer :current

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(MetronomeSDK::ContractWithoutAmendments) }
      attr_reader :initial

      sig do
        params(initial: MetronomeSDK::ContractWithoutAmendments::OrHash).void
      end
      attr_writer :initial

      # RFC 3339 timestamp indicating when the contract was archived. If not returned,
      # the contract is not archived.
      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      # The billing provider configuration associated with a contract.
      sig do
        returns(
          T.nilable(
            MetronomeSDK::Contract::CustomerBillingProviderConfiguration
          )
        )
      end
      attr_reader :customer_billing_provider_configuration

      sig do
        params(
          customer_billing_provider_configuration:
            MetronomeSDK::Contract::CustomerBillingProviderConfiguration::OrHash
        ).void
      end
      attr_writer :customer_billing_provider_configuration

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

      # Priority of the contract.
      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      sig do
        returns(
          T.nilable(
            MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )
        )
      end
      attr_reader :scheduled_charges_on_usage_invoices

      sig do
        params(
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::OrSymbol
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

      # List of subscriptions on the contract.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Subscription])) }
      attr_reader :subscriptions

      sig do
        params(subscriptions: T::Array[MetronomeSDK::Subscription::OrHash]).void
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
          amendments: T::Array[MetronomeSDK::Contract::Amendment::OrHash],
          current: MetronomeSDK::ContractWithoutAmendments::OrHash,
          customer_id: String,
          initial: MetronomeSDK::ContractWithoutAmendments::OrHash,
          archived_at: Time,
          custom_fields: T::Hash[Symbol, String],
          customer_billing_provider_configuration:
            MetronomeSDK::Contract::CustomerBillingProviderConfiguration::OrHash,
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
          priority: Float,
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfiguration::OrHash,
          subscriptions: T::Array[MetronomeSDK::Subscription::OrHash],
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
        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        custom_fields: nil,
        # The billing provider configuration associated with a contract.
        customer_billing_provider_configuration: nil,
        prepaid_balance_threshold_configuration: nil,
        # Priority of the contract.
        priority: nil,
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        # List of subscriptions on the contract.
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
            amendments: T::Array[MetronomeSDK::Contract::Amendment],
            current: MetronomeSDK::ContractWithoutAmendments,
            customer_id: String,
            initial: MetronomeSDK::ContractWithoutAmendments,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configuration:
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration,
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration,
            priority: Float,
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration,
            subscriptions: T::Array[MetronomeSDK::Subscription],
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
              MetronomeSDK::Contract::Amendment,
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

        sig { params(discounts: T::Array[MetronomeSDK::Discount::OrHash]).void }
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
            professional_services: T::Array[MetronomeSDK::ProService::OrHash]
          ).void
        end
        attr_writer :professional_services

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::Contract::Amendment::ResellerRoyalty]
            )
          )
        end
        attr_reader :reseller_royalties

        sig do
          params(
            reseller_royalties:
              T::Array[
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::OrHash
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
            scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge::OrHash],
            starting_at: Time,
            credits: T::Array[MetronomeSDK::Credit::OrHash],
            discounts: T::Array[MetronomeSDK::Discount::OrHash],
            netsuite_sales_order_id: String,
            professional_services: T::Array[MetronomeSDK::ProService::OrHash],
            reseller_royalties:
              T::Array[
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::OrHash
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
                T::Array[MetronomeSDK::Contract::Amendment::ResellerRoyalty],
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
                MetronomeSDK::Contract::Amendment::ResellerRoyalty,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
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
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::OrSymbol,
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
                  MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol,
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
                  MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS =
              T.let(
                :AWS,
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            AWS_PRO_SERVICE =
              T.let(
                :AWS_PRO_SERVICE,
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP =
              T.let(
                :GCP,
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP_PRO_SERVICE =
              T.let(
                :GCP_PRO_SERVICE,
                MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Contract::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
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
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
          )
        end
        attr_accessor :billing_provider

        sig do
          returns(
            MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
            delivery_method:
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol,
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
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
              delivery_method:
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol,
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
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS_MARKETPLACE =
            T.let(
              :aws_marketplace,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          STRIPE =
            T.let(
              :stripe,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          NETSUITE =
            T.let(
              :netsuite,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          AZURE_MARKETPLACE =
            T.let(
              :azure_marketplace,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          QUICKBOOKS_ONLINE =
            T.let(
              :quickbooks_online,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          WORKDAY =
            T.let(
              :workday,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          GCP_MARKETPLACE =
            T.let(
              :gcp_marketplace,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
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
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIRECT_TO_BILLING_PROVIDER =
            T.let(
              :direct_to_billing_provider,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          AWS_SQS =
            T.let(
              :aws_sqs,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          TACKLE =
            T.let(
              :tackle,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          AWS_SNS =
            T.let(
              :aws_sns,
              MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
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
              MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :ALL,
            MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
