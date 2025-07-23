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
      sig do
        returns(
          T.nilable(
            MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::Variants
          )
        )
      end
      attr_reader :hierarchy_configuration

      sig do
        params(
          hierarchy_configuration:
            T.any(
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
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
        returns(
          T.nilable(
            MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration
          )
        )
      end
      attr_reader :prepaid_balance_threshold_configuration

      sig do
        params(
          prepaid_balance_threshold_configuration:
            MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::OrHash
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

      sig do
        returns(
          T.nilable(
            MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration
          )
        )
      end
      attr_reader :spend_threshold_configuration

      sig do
        params(
          spend_threshold_configuration:
            MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::OrHash
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
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
            ),
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          prepaid_balance_threshold_configuration:
            MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::OrHash,
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
            MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::OrHash,
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
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::Variants,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            prepaid_balance_threshold_configuration:
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration,
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
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration,
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

      # Either a **parent** configuration with a list of children or a **child**
      # configuration with a single parent.
      module HierarchyConfiguration
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration,
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration
            )
          end

        class ParentHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # List of contracts that belong to this parent.
          sig do
            returns(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::Child
              ]
            )
          end
          attr_accessor :children

          sig do
            params(
              children:
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::Child::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # List of contracts that belong to this parent.
            children:
          )
          end

          sig do
            override.returns(
              {
                children:
                  T::Array[
                    MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::Child
                  ]
              }
            )
          end
          def to_hash
          end

          class Child < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ParentHierarchyConfiguration::Child,
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
        end

        class ChildHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The single parent contract/customer for this child.
          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::Parent
            )
          end
          attr_reader :parent

          sig do
            params(
              parent:
                MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::Parent::OrHash
            ).void
          end
          attr_writer :parent

          sig do
            params(
              parent:
                MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::Parent::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The single parent contract/customer for this child.
            parent:
          )
          end

          sig do
            override.returns(
              {
                parent:
                  MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::Parent
              }
            )
          end
          def to_hash
          end

          class Parent < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::ChildHierarchyConfiguration::Parent,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :contract_id

            sig { returns(String) }
            attr_accessor :customer_id

            # The single parent contract/customer for this child.
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
        end

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::ContractWithoutAmendments::HierarchyConfiguration::Variants
            ]
          )
        end
        def self.variants
        end
      end

      class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit
          )
        end
        attr_reader :commit

        sig do
          params(
            commit:
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::OrHash
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
            MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
          )
        end
        attr_reader :payment_gate_config

        sig do
          params(
            payment_gate_config:
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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

        # If provided, the threshold, recharge-to amount, and the resulting threshold
        # commit amount will be in terms of this credit type instead of the fiat currency.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_credit_type_id

        sig { params(custom_credit_type_id: String).void }
        attr_writer :custom_credit_type_id

        sig do
          params(
            commit:
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
            is_enabled: T::Boolean,
            payment_gate_config:
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
            recharge_to_amount: Float,
            threshold_amount: Float,
            custom_credit_type_id: String
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
          threshold_amount:,
          # If provided, the threshold, recharge-to amount, and the resulting threshold
          # commit amount will be in terms of this credit type instead of the fiat currency.
          custom_credit_type_id: nil
        )
        end

        sig do
          override.returns(
            {
              commit:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
              recharge_to_amount: Float,
              threshold_amount: Float,
              custom_credit_type_id: String
            }
          )
        end
        def to_hash
        end

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The commit product that will be used to generate the line item for commit
          # payment.
          sig { returns(String) }
          attr_accessor :product_id

          # Which products the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The commit product that will be used to generate the line item for commit
            # payment.
            product_id:,
            # Which products the threshold commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the threshold commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
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
                    MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier,
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
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
            )
          end
          attr_accessor :payment_gate_type

          # Only applicable if using PRECALCULATED as your tax type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
              )
            )
          end
          attr_reader :precalculated_tax_config

          sig do
            params(
              precalculated_tax_config:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
            ).void
          end
          attr_writer :precalculated_tax_config

          # Only applicable if using STRIPE as your payment gate type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          attr_reader :stripe_config

          sig do
            params(
              stripe_config:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
            ).void
          end
          attr_writer :stripe_config

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            )
          end
          attr_reader :tax_type

          sig do
            params(
              tax_type:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            ).void
          end
          attr_writer :tax_type

          sig do
            params(
              payment_gate_type:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
              precalculated_tax_config:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
              stripe_config:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
              tax_type:
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            payment_gate_type:,
            # Only applicable if using PRECALCULATED as your tax type.
            precalculated_tax_config: nil,
            # Only applicable if using STRIPE as your payment gate type.
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                precalculated_tax_config:
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                stripe_config:
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                tax_type:
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Amount of tax to be applied. This should be in the same currency and
            # denomination as the commit's invoice schedule
            sig { returns(Float) }
            attr_accessor :tax_amount

            # Name of the tax to be applied. This may be used in an invoice line item
            # description.
            sig { returns(T.nilable(String)) }
            attr_reader :tax_name

            sig { params(tax_name: String).void }
            attr_writer :tax_name

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              params(tax_amount: Float, tax_name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Amount of tax to be applied. This should be in the same currency and
              # denomination as the commit's invoice schedule
              tax_amount:,
              # Name of the tax to be applied. This may be used in an invoice line item
              # description.
              tax_name: nil
            )
            end

            sig { override.returns({ tax_amount: Float, tax_name: String }) }
            def to_hash
            end
          end

          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # If left blank, will default to INVOICE
            sig do
              returns(
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
              )
            end
            attr_accessor :payment_type

            # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            # your payment type.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :invoice_metadata

            sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
            attr_writer :invoice_metadata

            # Only applicable if using STRIPE as your payment gate type.
            sig do
              params(
                payment_type:
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
                invoice_metadata: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              # If left blank, will default to INVOICE
              payment_type:,
              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              invoice_metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_type:
                    MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
                  invoice_metadata: T::Hash[Symbol, String]
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
                    MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INVOICE =
                T.let(
                  :INVOICE,
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )
              PAYMENT_INTENT =
                T.let(
                  :PAYMENT_INTENT,
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            ANROK =
              T.let(
                :ANROK,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            PRECALCULATED =
              T.let(
                :PRECALCULATED,
                MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration
            )
          )
        end
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::OrHash
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
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier
              ]
            )
          )
        end
        attr_reader :specifiers

        sig do
          params(
            specifiers:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier::OrHash
              ]
          ).void
        end
        attr_writer :specifiers

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
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::OrHash,
            invoice_amount:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier::OrHash
              ]
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
          specifiers: nil
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration,
              invoice_amount:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier
                ]
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

        class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::Variants
            )
          end
          attr_accessor :child_access

          # Optional configuration for recurring commit/credit hierarchy access control
          sig do
            params(
              child_access:
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(child_access:)
          end

          sig do
            override.returns(
              {
                child_access:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::Variants
              }
            )
          end
          def to_hash
          end

          module ChildAccess
            extend MetronomeSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                )
              end

            class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(type:)
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ALL =
                  T.let(
                    :ALL,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(type:)
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[String]) }
              attr_accessor :contract_ids

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  contract_ids: T::Array[String],
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(contract_ids:, type:)
              end

              sig do
                override.returns(
                  {
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTRACT_IDS =
                  T.let(
                    :CONTRACT_IDS,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCommit::HierarchyConfiguration::ChildAccess::Variants
                ]
              )
            end
            def self.variants
            end
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

        class Specifier < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier,
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
        sig do
          returns(
            T.nilable(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration
            )
          )
        end
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::OrHash
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
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier
              ]
            )
          )
        end
        attr_reader :specifiers

        sig do
          params(
            specifiers:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier::OrHash
              ]
          ).void
        end
        attr_writer :specifiers

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
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers:
              T::Array[
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier::OrHash
              ]
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
          specifiers: nil
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
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier
                ]
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

        class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::Variants
            )
          end
          attr_accessor :child_access

          # Optional configuration for recurring commit/credit hierarchy access control
          sig do
            params(
              child_access:
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(child_access:)
          end

          sig do
            override.returns(
              {
                child_access:
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::Variants
              }
            )
          end
          def to_hash
          end

          module ChildAccess
            extend MetronomeSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                )
              end

            class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(type:)
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ALL =
                  T.let(
                    :ALL,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(type:)
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[String]) }
              attr_accessor :contract_ids

              sig do
                returns(
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  contract_ids: T::Array[String],
                  type:
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(contract_ids:, type:)
              end

              sig do
                override.returns(
                  {
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTRACT_IDS =
                  T.let(
                    :CONTRACT_IDS,
                    MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::RecurringCredit::HierarchyConfiguration::ChildAccess::Variants
                ]
              )
            end
            def self.variants
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

        class Specifier < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier,
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

      class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit
          )
        end
        attr_reader :commit

        sig do
          params(
            commit:
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit::OrHash
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
            MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig
          )
        end
        attr_reader :payment_gate_config

        sig do
          params(
            payment_gate_config:
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::OrHash
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
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit::OrHash,
            is_enabled: T::Boolean,
            payment_gate_config:
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
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
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
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
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          sig do
            returns(
              MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
            )
          end
          attr_accessor :payment_gate_type

          # Only applicable if using PRECALCULATED as your tax type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
              )
            )
          end
          attr_reader :precalculated_tax_config

          sig do
            params(
              precalculated_tax_config:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
            ).void
          end
          attr_writer :precalculated_tax_config

          # Only applicable if using STRIPE as your payment gate type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          attr_reader :stripe_config

          sig do
            params(
              stripe_config:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
            ).void
          end
          attr_writer :stripe_config

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            )
          end
          attr_reader :tax_type

          sig do
            params(
              tax_type:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            ).void
          end
          attr_writer :tax_type

          sig do
            params(
              payment_gate_type:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
              precalculated_tax_config:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
              stripe_config:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
              tax_type:
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            payment_gate_type:,
            # Only applicable if using PRECALCULATED as your tax type.
            precalculated_tax_config: nil,
            # Only applicable if using STRIPE as your payment gate type.
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
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                precalculated_tax_config:
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                stripe_config:
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                tax_type:
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Amount of tax to be applied. This should be in the same currency and
            # denomination as the commit's invoice schedule
            sig { returns(Float) }
            attr_accessor :tax_amount

            # Name of the tax to be applied. This may be used in an invoice line item
            # description.
            sig { returns(T.nilable(String)) }
            attr_reader :tax_name

            sig { params(tax_name: String).void }
            attr_writer :tax_name

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              params(tax_amount: Float, tax_name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Amount of tax to be applied. This should be in the same currency and
              # denomination as the commit's invoice schedule
              tax_amount:,
              # Name of the tax to be applied. This may be used in an invoice line item
              # description.
              tax_name: nil
            )
            end

            sig { override.returns({ tax_amount: Float, tax_name: String }) }
            def to_hash
            end
          end

          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # If left blank, will default to INVOICE
            sig do
              returns(
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
              )
            end
            attr_accessor :payment_type

            # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            # your payment type.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :invoice_metadata

            sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
            attr_writer :invoice_metadata

            # Only applicable if using STRIPE as your payment gate type.
            sig do
              params(
                payment_type:
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
                invoice_metadata: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              # If left blank, will default to INVOICE
              payment_type:,
              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              invoice_metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_type:
                    MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
                  invoice_metadata: T::Hash[Symbol, String]
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
                    MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INVOICE =
                T.let(
                  :INVOICE,
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )
              PAYMENT_INTENT =
                T.let(
                  :PAYMENT_INTENT,
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            ANROK =
              T.let(
                :ANROK,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            PRECALCULATED =
              T.let(
                :PRECALCULATED,
                MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
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
