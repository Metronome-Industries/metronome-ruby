# typed: strong

module MetronomeSDK
  module Models
    class ContractWithoutAmendments < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::ContractWithoutAmendments,
            MetronomeSDK::Internal::AnyHash
          )
        end

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

      sig do
        returns(T::Array[MetronomeSDK::ContractWithoutAmendments::Transition])
      end
      attr_accessor :transitions

      sig do
        returns(MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule)
      end
      attr_reader :usage_statement_schedule

      sig do
        params(
          usage_statement_schedule:
            MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::OrHash
        ).void
      end
      attr_writer :usage_statement_schedule

      sig { returns(T.nilable(T::Array[MetronomeSDK::Credit])) }
      attr_reader :credits

      sig { params(credits: T::Array[MetronomeSDK::Credit::OrHash]).void }
      attr_writer :credits

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[MetronomeSDK::Discount::OrHash]).void }
      attr_writer :discounts

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      # Either a **parent** configuration with a list of children or a **child**
      # configuration with a single parent.
      sig { returns(T.nilable(MetronomeSDK::HierarchyConfiguration::Variants)) }
      attr_reader :hierarchy_configuration

      sig do
        params(
          hierarchy_configuration:
            T.any(
              MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
            )
        ).void
      end
      attr_writer :hierarchy_configuration

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
      sig { returns(T.nilable(T::Array[MetronomeSDK::ProService])) }
      attr_reader :professional_services

      sig do
        params(
          professional_services: T::Array[MetronomeSDK::ProService::OrHash]
        ).void
      end
      attr_writer :professional_services

      sig { returns(T.nilable(String)) }
      attr_reader :rate_card_id

      sig { params(rate_card_id: String).void }
      attr_writer :rate_card_id

      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::ContractWithoutAmendments::RecurringCommit]
          )
        )
      end
      attr_reader :recurring_commits

      sig do
        params(
          recurring_commits:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::OrHash
            ]
        ).void
      end
      attr_writer :recurring_commits

      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::ContractWithoutAmendments::RecurringCredit]
          )
        )
      end
      attr_reader :recurring_credits

      sig do
        params(
          recurring_credits:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::OrHash
            ]
        ).void
      end
      attr_writer :recurring_credits

      # This field's availability is dependent on your client's configuration.
      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty]
          )
        )
      end
      attr_reader :reseller_royalties

      sig do
        params(
          reseller_royalties:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::OrHash
            ]
        ).void
      end
      attr_writer :reseller_royalties

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      sig do
        returns(
          T.nilable(
            MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )
        )
      end
      attr_reader :scheduled_charges_on_usage_invoices

      sig do
        params(
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::OrSymbol
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

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      sig do
        returns(T.nilable(MetronomeSDK::ContractWithoutAmendments::UsageFilter))
      end
      attr_reader :usage_filter

      sig do
        params(
          usage_filter:
            MetronomeSDK::ContractWithoutAmendments::UsageFilter::OrHash
        ).void
      end
      attr_writer :usage_filter

      sig do
        params(
          commits: T::Array[MetronomeSDK::Commit::OrHash],
          created_at: Time,
          created_by: String,
          overrides: T::Array[MetronomeSDK::Override::OrHash],
          scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge::OrHash],
          starting_at: Time,
          transitions:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::Transition::OrHash
            ],
          usage_statement_schedule:
            MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::OrHash,
          credits: T::Array[MetronomeSDK::Credit::OrHash],
          discounts: T::Array[MetronomeSDK::Discount::OrHash],
          ending_before: Time,
          hierarchy_configuration:
            T.any(
              MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
            ),
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
          professional_services: T::Array[MetronomeSDK::ProService::OrHash],
          rate_card_id: String,
          recurring_commits:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::OrHash
            ],
          recurring_credits:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::OrHash
            ],
          reseller_royalties:
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::OrHash
            ],
          salesforce_opportunity_id: String,
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfiguration::OrHash,
          total_contract_value: Float,
          usage_filter:
            MetronomeSDK::ContractWithoutAmendments::UsageFilter::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        commits:,
        created_at:,
        created_by:,
        overrides:,
        scheduled_charges:,
        starting_at:,
        transitions:,
        usage_statement_schedule:,
        credits: nil,
        # This field's availability is dependent on your client's configuration.
        discounts: nil,
        ending_before: nil,
        # Either a **parent** configuration with a list of children or a **child**
        # configuration with a single parent.
        hierarchy_configuration: nil,
        name: nil,
        net_payment_terms_days: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil,
        prepaid_balance_threshold_configuration: nil,
        # This field's availability is dependent on your client's configuration.
        professional_services: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        # This field's availability is dependent on your client's configuration.
        reseller_royalties: nil,
        # This field's availability is dependent on your client's configuration.
        salesforce_opportunity_id: nil,
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        # This field's availability is dependent on your client's configuration.
        total_contract_value: nil,
        usage_filter: nil
      )
      end

      sig do
        override.returns(
          {
            commits: T::Array[MetronomeSDK::Commit],
            created_at: Time,
            created_by: String,
            overrides: T::Array[MetronomeSDK::Override],
            scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge],
            starting_at: Time,
            transitions:
              T::Array[MetronomeSDK::ContractWithoutAmendments::Transition],
            usage_statement_schedule:
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule,
            credits: T::Array[MetronomeSDK::Credit],
            discounts: T::Array[MetronomeSDK::Discount],
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::HierarchyConfiguration::Variants,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration,
            professional_services: T::Array[MetronomeSDK::ProService],
            rate_card_id: String,
            recurring_commits:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit
              ],
            recurring_credits:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty
              ],
            salesforce_opportunity_id: String,
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration,
            total_contract_value: Float,
            usage_filter: MetronomeSDK::ContractWithoutAmendments::UsageFilter
          }
        )
      end
      def to_hash
      end

      class Transition < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::Transition,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :from_contract_id

        sig { returns(String) }
        attr_accessor :to_contract_id

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::Transition::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            from_contract_id: String,
            to_contract_id: String,
            type:
              MetronomeSDK::ContractWithoutAmendments::Transition::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(from_contract_id:, to_contract_id:, type:)
        end

        sig do
          override.returns(
            {
              from_contract_id: String,
              to_contract_id: String,
              type:
                MetronomeSDK::ContractWithoutAmendments::Transition::Type::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::Transition::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUPERSEDE =
            T.let(
              :SUPERSEDE,
              MetronomeSDK::ContractWithoutAmendments::Transition::Type::TaggedSymbol
            )
          RENEWAL =
            T.let(
              :RENEWAL,
              MetronomeSDK::ContractWithoutAmendments::Transition::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::Transition::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Contract usage statements follow a selected cadence based on this date.
        sig { returns(Time) }
        attr_accessor :billing_anchor_date

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
          )
        end
        attr_accessor :frequency

        sig do
          params(
            billing_anchor_date: Time,
            frequency:
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Contract usage statements follow a selected cadence based on this date.
          billing_anchor_date:,
          frequency:
        )
        end

        sig do
          override.returns(
            {
              billing_anchor_date: Time,
              frequency:
                MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount
          )
        end
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration
          )
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product
          )
        end
        attr_reader :product

        sig do
          params(
            product:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product::OrHash
          ).void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
          )
        end
        attr_accessor :rate_type

        # Determines the start time for the first commit
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

        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract
            )
          )
        end
        attr_reader :contract

        sig do
          params(
            contract:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract::OrHash
          ).void
        end
        attr_writer :contract

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Determines when the contract will stop creating recurring commits. Optional
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
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount
            )
          )
        end
        attr_reader :invoice_amount

        sig do
          params(
            invoice_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount::OrHash
          ).void
        end
        attr_writer :invoice_amount

        # Displayed on invoices. Will be passed through to the individual commits
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
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::OrSymbol
          ).void
        end
        attr_writer :proration

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::OrSymbol
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
        # specifiers to contribute to a commit's or credit's drawdown.
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        # Attach a subscription to the recurring commit/credit.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig
            )
          )
        end
        attr_reader :subscription_config

        sig do
          params(
            subscription_config:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::OrHash
          ).void
        end
        attr_writer :subscription_config

        sig do
          params(
            id: String,
            access_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::OrHash,
            priority: Float,
            product:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product::OrHash,
            rate_type:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract::OrHash,
            description: String,
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            invoice_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
            subscription_config:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The amount of commit to grant.
          access_amount:,
          # The amount of time the created commits will be valid for
          commit_duration:,
          # Will be passed down to the individual commits
          priority:,
          product:,
          # Whether the created commits will use the commit rate or list rate
          rate_type:,
          # Determines the start time for the first commit
          starting_at:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          contract: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. Optional
          ending_before: nil,
          # Optional configuration for recurring commit/credit hierarchy access control
          hierarchy_configuration: nil,
          # The amount the customer should be billed for the commit. Not required.
          invoice_amount: nil,
          # Displayed on invoices. Will be passed through to the individual commits
          name: nil,
          # Will be passed down to the individual commits
          netsuite_sales_order_id: nil,
          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          proration: nil,
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
          # specifiers to contribute to a commit's or credit's drawdown.
          specifiers: nil,
          # Attach a subscription to the recurring commit/credit.
          subscription_config: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access_amount:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount,
              commit_duration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration,
              priority: Float,
              product:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product,
              rate_type:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract,
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              invoice_amount:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifier],
              subscription_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig
            }
          )
        end
        def to_hash
        end

        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :unit_price

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
          def self.new(credit_type_id:, unit_price:, quantity: nil)
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        # Whether the created commits will use the commit rate or list rate
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
            )
          end
          attr_accessor :allocation

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig
            )
          end
          attr_reader :apply_seat_increase_config

          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
            ).void
          end
          attr_writer :apply_seat_increase_config

          sig { returns(String) }
          attr_accessor :subscription_id

          # Attach a subscription to the recurring commit/credit.
          sig do
            params(
              allocation:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol,
              apply_seat_increase_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
              subscription_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            allocation:,
            apply_seat_increase_config:,
            subscription_id:
          )
          end

          sig do
            override.returns(
              {
                allocation:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol,
                apply_seat_increase_config:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                subscription_id: String
              }
            )
          end
          def to_hash
          end

          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :INDIVIDUAL,
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
              )
            POOLED =
              T.let(
                :POOLED,
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
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
        end
      end

      class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount
          )
        end
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration
          )
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product
          )
        end
        attr_reader :product

        sig do
          params(
            product:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product::OrHash
          ).void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
          )
        end
        attr_accessor :rate_type

        # Determines the start time for the first commit
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

        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract
            )
          )
        end
        attr_reader :contract

        sig do
          params(
            contract:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract::OrHash
          ).void
        end
        attr_writer :contract

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Determines when the contract will stop creating recurring commits. Optional
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

        # Displayed on invoices. Will be passed through to the individual commits
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
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::OrSymbol
          ).void
        end
        attr_writer :proration

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::OrSymbol
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
        # specifiers to contribute to a commit's or credit's drawdown.
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        # Attach a subscription to the recurring commit/credit.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig
            )
          )
        end
        attr_reader :subscription_config

        sig do
          params(
            subscription_config:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::OrHash
          ).void
        end
        attr_writer :subscription_config

        sig do
          params(
            id: String,
            access_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::OrHash,
            priority: Float,
            product:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product::OrHash,
            rate_type:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract::OrHash,
            description: String,
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
            subscription_config:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The amount of commit to grant.
          access_amount:,
          # The amount of time the created commits will be valid for
          commit_duration:,
          # Will be passed down to the individual commits
          priority:,
          product:,
          # Whether the created commits will use the commit rate or list rate
          rate_type:,
          # Determines the start time for the first commit
          starting_at:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          contract: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. Optional
          ending_before: nil,
          # Optional configuration for recurring commit/credit hierarchy access control
          hierarchy_configuration: nil,
          # Displayed on invoices. Will be passed through to the individual commits
          name: nil,
          # Will be passed down to the individual commits
          netsuite_sales_order_id: nil,
          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          proration: nil,
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
          # specifiers to contribute to a commit's or credit's drawdown.
          specifiers: nil,
          # Attach a subscription to the recurring commit/credit.
          subscription_config: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access_amount:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount,
              commit_duration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration,
              priority: Float,
              product:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product,
              rate_type:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract,
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifier],
              subscription_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig
            }
          )
        end
        def to_hash
        end

        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :unit_price

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
          def self.new(credit_type_id:, unit_price:, quantity: nil)
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        # Whether the created commits will use the commit rate or list rate
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
            )
          end
          attr_accessor :allocation

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig
            )
          end
          attr_reader :apply_seat_increase_config

          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
            ).void
          end
          attr_writer :apply_seat_increase_config

          sig { returns(String) }
          attr_accessor :subscription_id

          # Attach a subscription to the recurring commit/credit.
          sig do
            params(
              allocation:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol,
              apply_seat_increase_config:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
              subscription_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            allocation:,
            apply_seat_increase_config:,
            subscription_id:
          )
          end

          sig do
            override.returns(
              {
                allocation:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol,
                apply_seat_increase_config:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                subscription_id: String
              }
            )
          end
          def to_hash
          end

          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :INDIVIDUAL,
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
              )
            POOLED =
              T.let(
                :POOLED,
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
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
        end
      end

      class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :fraction

        sig { returns(String) }
        attr_accessor :netsuite_reseller_id

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
          )
        end
        attr_accessor :reseller_type

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

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
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(String)) }
        attr_reader :gcp_account_id

        sig { params(gcp_account_id: String).void }
        attr_writer :gcp_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :gcp_offer_id

        sig { params(gcp_offer_id: String).void }
        attr_writer :gcp_offer_id

        sig { returns(T.nilable(Float)) }
        attr_reader :reseller_contract_value

        sig { params(reseller_contract_value: Float).void }
        attr_writer :reseller_contract_value

        sig do
          params(
            fraction: Float,
            netsuite_reseller_id: String,
            reseller_type:
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            aws_account_number: String,
            aws_offer_id: String,
            aws_payer_reference_id: String,
            ending_before: Time,
            gcp_account_id: String,
            gcp_offer_id: String,
            reseller_contract_value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          fraction:,
          netsuite_reseller_id:,
          reseller_type:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          aws_account_number: nil,
          aws_offer_id: nil,
          aws_payer_reference_id: nil,
          ending_before: nil,
          gcp_account_id: nil,
          gcp_offer_id: nil,
          reseller_contract_value: nil
        )
        end

        sig do
          override.returns(
            {
              fraction: Float,
              netsuite_reseller_id: String,
              reseller_type:
                MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_account_number: String,
              aws_offer_id: String,
              aws_payer_reference_id: String,
              ending_before: Time,
              gcp_account_id: String,
              gcp_offer_id: String,
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
                MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :AWS,
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          AWS_PRO_SERVICE =
            T.let(
              :AWS_PRO_SERVICE,
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          GCP =
            T.let(
              :GCP,
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          GCP_PRO_SERVICE =
            T.let(
              :GCP_PRO_SERVICE,
              MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
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
              MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :ALL,
            MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::UsageFilter,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(MetronomeSDK::BaseUsageFilter)) }
        attr_reader :current

        sig do
          params(current: T.nilable(MetronomeSDK::BaseUsageFilter::OrHash)).void
        end
        attr_writer :current

        sig { returns(MetronomeSDK::BaseUsageFilter) }
        attr_reader :initial

        sig { params(initial: MetronomeSDK::BaseUsageFilter::OrHash).void }
        attr_writer :initial

        sig do
          returns(
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::UsageFilter::Update
            ]
          )
        end
        attr_accessor :updates

        sig do
          params(
            current: T.nilable(MetronomeSDK::BaseUsageFilter::OrHash),
            initial: MetronomeSDK::BaseUsageFilter::OrHash,
            updates:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::UsageFilter::Update::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(current:, initial:, updates:)
        end

        sig do
          override.returns(
            {
              current: T.nilable(MetronomeSDK::BaseUsageFilter),
              initial: MetronomeSDK::BaseUsageFilter,
              updates:
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::UsageFilter::Update
                ]
            }
          )
        end
        def to_hash
        end

        class Update < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::UsageFilter::Update,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :group_key

          sig { returns(T::Array[String]) }
          attr_accessor :group_values

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            params(
              group_key: String,
              group_values: T::Array[String],
              starting_at: Time
            ).returns(T.attached_class)
          end
          def self.new(group_key:, group_values:, starting_at:)
          end

          sig do
            override.returns(
              {
                group_key: String,
                group_values: T::Array[String],
                starting_at: Time
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
