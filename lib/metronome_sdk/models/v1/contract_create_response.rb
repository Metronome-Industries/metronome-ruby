# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#create
      class ContractCreateResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::ContractCreateResponse::Data]

        # @see MetronomeSDK::Models::V1::ContractCreateResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute contract
          #   The created contract.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract, nil]
          optional :contract, -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract }

          # @!method initialize(id:, contract: nil)
          #   @param id [String]
          #
          #   @param contract [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract] The created contract.

          # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data#contract
          class Contract < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute customer_id
            #
            #   @return [String]
            required :customer_id, String

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

            # @!attribute transitions
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition>]
            required :transitions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition] }

            # @!attribute usage_filter
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter>]
            required :usage_filter,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter] }

            # @!attribute usage_statement_schedule
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule]
            required :usage_statement_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule }

            # @!attribute credits
            #
            #   @return [Array<MetronomeSDK::Models::Credit>, nil]
            optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Credit] }

            # @!attribute custom_fields
            #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute customer_billing_provider_configuration
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration, nil]
            optional :customer_billing_provider_configuration,
                     -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute has_more
            #   Indicates whether there are more items than the limit for this endpoint. Use the
            #   respective list endpoints to get the full lists.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore, nil]
            optional :has_more, -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore }

            # @!attribute hierarchy_configuration
            #   Either a **parent** configuration with a list of children or a **child**
            #   configuration with a single parent.
            #
            #   @return [MetronomeSDK::Models::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration, nil]
            optional :hierarchy_configuration, union: -> { MetronomeSDK::HierarchyConfiguration }

            # @!attribute multiplier_override_prioritization
            #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            #   prices automatically. EXPLICIT prioritization requires specifying priorities for
            #   each multiplier; the one with the lowest priority value will be prioritized
            #   first.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization, nil]
            optional :multiplier_override_prioritization,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization }

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute net_payment_terms_days
            #
            #   @return [Float, nil]
            optional :net_payment_terms_days, Float

            # @!attribute package_id
            #   ID of the package this contract was created from, if applicable.
            #
            #   @return [String, nil]
            optional :package_id, String

            # @!attribute prepaid_balance_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration, nil]
            optional :prepaid_balance_threshold_configuration,
                     -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration }

            # @!attribute rate_card_id
            #
            #   @return [String, nil]
            optional :rate_card_id, String

            # @!attribute recurring_commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit>, nil]
            optional :recurring_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit] }

            # @!attribute recurring_credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit>, nil]
            optional :recurring_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit] }

            # @!attribute scheduled_charges_on_usage_invoices
            #   Determines which scheduled and commit charges to consolidate onto the Contract's
            #   usage invoice. The charge's `timestamp` must match the usage invoice's
            #   `ending_before` date for consolidation to occur. This field cannot be modified
            #   after a Contract has been created. If this field is omitted, charges will appear
            #   on a separate invoice from usage charges.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices, nil]
            optional :scheduled_charges_on_usage_invoices,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices }

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
            #   Optional uniqueness key to prevent duplicate contract creations.
            #
            #   @return [String, nil]
            optional :uniqueness_key, String

            # @!method initialize(id:, commits:, created_at:, created_by:, customer_id:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_filter:, usage_statement_schedule:, credits: nil, custom_fields: nil, customer_billing_provider_configuration: nil, ending_before: nil, has_more: nil, hierarchy_configuration: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, package_id: nil, prepaid_balance_threshold_configuration: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract} for more
            #   details.
            #
            #   The created contract.
            #
            #   @param id [String]
            #
            #   @param commits [Array<MetronomeSDK::Models::Commit>]
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param customer_id [String]
            #
            #   @param overrides [Array<MetronomeSDK::Models::Override>]
            #
            #   @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
            #
            #   @param starting_at [Time]
            #
            #   @param transitions [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition>]
            #
            #   @param usage_filter [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter>]
            #
            #   @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule]
            #
            #   @param credits [Array<MetronomeSDK::Models::Credit>]
            #
            #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            #
            #   @param customer_billing_provider_configuration [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration]
            #
            #   @param ending_before [Time]
            #
            #   @param has_more [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore] Indicates whether there are more items than the limit for this endpoint. Use the
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration] Either a **parent** configuration with a list of children or a **child** configu
            #
            #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
            #
            #   @param name [String]
            #
            #   @param net_payment_terms_days [Float]
            #
            #   @param package_id [String] ID of the package this contract was created from, if applicable.
            #
            #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
            #
            #   @param rate_card_id [String]
            #
            #   @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit>]
            #
            #   @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit>]
            #
            #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
            #
            #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
            #
            #   @param subscriptions [Array<MetronomeSDK::Models::Subscription>] List of subscriptions on the contract.
            #
            #   @param uniqueness_key [String] Optional uniqueness key to prevent duplicate contract creations.

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute from_contract_id
              #
              #   @return [String]
              required :from_contract_id, String

              # @!attribute to_contract_id
              #
              #   @return [String]
              required :to_contract_id, String

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type }

              # @!method initialize(from_contract_id:, to_contract_id:, type:)
              #   @param from_contract_id [String]
              #   @param to_contract_id [String]
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type]

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                SUPERSEDE = :SUPERSEDE
                RENEWAL = :RENEWAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute group_key
              #
              #   @return [String]
              required :group_key, String

              # @!attribute group_values
              #
              #   @return [Array<String>]
              required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!method initialize(group_key:, group_values:, starting_at:, ending_before: nil)
              #   @param group_key [String]
              #   @param group_values [Array<String>]
              #   @param starting_at [Time]
              #   @param ending_before [Time]
            end

            # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract#usage_statement_schedule
            class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_anchor_date
              #   Contract usage statements follow a selected cadence based on this date.
              #
              #   @return [Time]
              required :billing_anchor_date, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency }

              # @!method initialize(billing_anchor_date:, frequency:)
              #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency]

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract#customer_billing_provider_configuration
            class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider]
              required :billing_provider,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider }

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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod]
              required :delivery_method,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod }

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

              # @!method initialize(id:, archived_at:, billing_provider:, configuration:, customer_id:, delivery_method:, delivery_method_configuration:, delivery_method_id:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration}
              #   for more details.
              #
              #   @param id [String] ID of this configuration; can be provided as the billing*provider_configuration*
              #
              #   @param archived_at [Time, nil]
              #
              #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider] The billing provider set for this configuration.
              #
              #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
              #
              #   @param customer_id [String]
              #
              #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod] The method to use for delivering invoices to this customer.
              #
              #   @param delivery_method_configuration [Hash{Symbol=>Object}] Configuration for the delivery method. The structure of this object is specific
              #
              #   @param delivery_method_id [String] ID of the delivery method to use for this customer.

              # The billing provider set for this configuration.
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration#billing_provider
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
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration#delivery_method
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

            # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract#has_more
            class HasMore < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commits
              #   Whether there are more commits on this contract than the limit for this
              #   endpoint. Use the /contracts/customerCommits/list endpoint to get the full list
              #   of commits.
              #
              #   @return [Boolean]
              required :commits, MetronomeSDK::Internal::Type::Boolean

              # @!attribute credits
              #   Whether there are more credits on this contract than the limit for this
              #   endpoint. Use the /contracts/customerCredits/list endpoint to get the full list
              #   of credits.
              #
              #   @return [Boolean]
              required :credits, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(commits:, credits:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore} for
              #   more details.
              #
              #   Indicates whether there are more items than the limit for this endpoint. Use the
              #   respective list endpoints to get the full lists.
              #
              #   @param commits [Boolean] Whether there are more commits on this contract than the limit for this endpoint
              #
              #   @param credits [Boolean] Whether there are more credits on this contract than the limit for this endpoint
            end

            # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            # prices automatically. EXPLICIT prioritization requires specifying priorities for
            # each multiplier; the one with the lowest priority value will be prioritized
            # first.
            #
            # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract#multiplier_override_prioritization
            module MultiplierOverridePrioritization
              extend MetronomeSDK::Internal::Type::Enum

              LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
              EXPLICIT = :EXPLICIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute hierarchy_configuration
              #   Optional configuration for recurring commit/credit hierarchy access control
              #
              #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
              optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

              # @!attribute invoice_amount
              #   The amount the customer should be billed for the commit. Not required.
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount, nil]
              optional :invoice_amount,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount }

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration }

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring commit amounts.
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding },
                       nil?: true

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's starting_at rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!attribute specifiers
              #   List of filters that determine what kind of customer usage draws down a commit
              #   or credit. A customer's usage needs to meet the condition of at least one of the
              #   specifiers to contribute to a commit's or credit's drawdown.
              #
              #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
              optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

              # @!attribute subscription_config
              #   Attach a subscription to the recurring commit/credit.
              #
              #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
              optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, proration_rounding: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring commit/credit hierarchy access control
              #
              #   @param invoice_amount [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param proration_rounding [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding, nil] Rounding configuration for prorated recurring commit amounts.
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
              #
              #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param unit_price [Float]
                #   @param quantity [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#product
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

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#invoice_amount
              class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount the customer should be billed for the commit. Not required.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access }

                # @!attribute invoice
                #
                #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice, nil]
                optional :invoice,
                         -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice }

                # @!method initialize(access: nil, invoice: nil)
                #   Rounding configuration for prorated recurring commit amounts.
                #
                #   @param access [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access]
                #   @param invoice [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice]

                # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  #   dollar).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding#invoice
                class Invoice < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  #   dollar).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod]

                  # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY
                DAILY = :DAILY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute hierarchy_configuration
              #   Optional configuration for recurring commit/credit hierarchy access control
              #
              #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
              optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration }

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring credit amounts.
              #
              #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding },
                       nil?: true

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's starting_at rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!attribute specifiers
              #   List of filters that determine what kind of customer usage draws down a commit
              #   or credit. A customer's usage needs to meet the condition of at least one of the
              #   specifiers to contribute to a commit's or credit's drawdown.
              #
              #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
              optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

              # @!attribute subscription_config
              #   Attach a subscription to the recurring commit/credit.
              #
              #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
              optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, proration_rounding: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring commit/credit hierarchy access control
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param proration_rounding [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding, nil] Rounding configuration for prorated recurring credit amounts.
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
              #
              #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param unit_price [Float]
                #   @param quantity [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#product
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

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access }

                # @!method initialize(access: nil)
                #   Rounding configuration for prorated recurring credit amounts.
                #
                #   @param access [MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access]

                # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  #   dollar).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY
                DAILY = :DAILY

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
            # @see MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract#scheduled_charges_on_usage_invoices
            module ScheduledChargesOnUsageInvoices
              extend MetronomeSDK::Internal::Type::Enum

              ALL = :ALL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
