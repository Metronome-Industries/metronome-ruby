# typed: strong

module MetronomeSDK
  module Models
    class PackageCreateParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::PackageCreateParams,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(
          T.nilable(
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::OrSymbol
          )
        )
      end
      attr_reader :billing_anchor_date

      sig do
        params(
          billing_anchor_date:
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::OrSymbol
        ).void
      end
      attr_writer :billing_anchor_date

      sig do
        returns(
          T.nilable(
            MetronomeSDK::PackageCreateParams::BillingProvider::OrSymbol
          )
        )
      end
      attr_reader :billing_provider

      sig do
        params(
          billing_provider:
            MetronomeSDK::PackageCreateParams::BillingProvider::OrSymbol
        ).void
      end
      attr_writer :billing_provider

      sig do
        returns(T.nilable(T::Array[MetronomeSDK::PackageCreateParams::Commit]))
      end
      attr_reader :commits

      sig do
        params(
          commits: T::Array[MetronomeSDK::PackageCreateParams::Commit::OrHash]
        ).void
      end
      attr_writer :commits

      sig { returns(T.nilable(String)) }
      attr_reader :contract_name

      sig { params(contract_name: String).void }
      attr_writer :contract_name

      sig do
        returns(T.nilable(T::Array[MetronomeSDK::PackageCreateParams::Credit]))
      end
      attr_reader :credits

      sig do
        params(
          credits: T::Array[MetronomeSDK::PackageCreateParams::Credit::OrHash]
        ).void
      end
      attr_writer :credits

      # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig do
        returns(
          T.nilable(MetronomeSDK::PackageCreateParams::DeliveryMethod::OrSymbol)
        )
      end
      attr_reader :delivery_method

      sig do
        params(
          delivery_method:
            MetronomeSDK::PackageCreateParams::DeliveryMethod::OrSymbol
        ).void
      end
      attr_writer :delivery_method

      sig { returns(T.nilable(MetronomeSDK::PackageCreateParams::Duration)) }
      attr_reader :duration

      sig do
        params(
          duration: MetronomeSDK::PackageCreateParams::Duration::OrHash
        ).void
      end
      attr_writer :duration

      # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      # prices automatically. EXPLICIT prioritization requires specifying priorities for
      # each multiplier; the one with the lowest priority value will be prioritized
      # first. If tiered overrides are used, prioritization must be explicit.
      sig do
        returns(
          T.nilable(
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol
          )
        )
      end
      attr_reader :multiplier_override_prioritization

      sig do
        params(
          multiplier_override_prioritization:
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol
        ).void
      end
      attr_writer :multiplier_override_prioritization

      sig { returns(T.nilable(Float)) }
      attr_reader :net_payment_terms_days

      sig { params(net_payment_terms_days: Float).void }
      attr_writer :net_payment_terms_days

      sig do
        returns(
          T.nilable(T::Array[MetronomeSDK::PackageCreateParams::Override])
        )
      end
      attr_reader :overrides

      sig do
        params(
          overrides:
            T::Array[MetronomeSDK::PackageCreateParams::Override::OrHash]
        ).void
      end
      attr_writer :overrides

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

      # Priority of the generated contract.
      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

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
            T::Array[MetronomeSDK::PackageCreateParams::RecurringCommit]
          )
        )
      end
      attr_reader :recurring_commits

      sig do
        params(
          recurring_commits:
            T::Array[MetronomeSDK::PackageCreateParams::RecurringCommit::OrHash]
        ).void
      end
      attr_writer :recurring_commits

      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::PackageCreateParams::RecurringCredit]
          )
        )
      end
      attr_reader :recurring_credits

      sig do
        params(
          recurring_credits:
            T::Array[MetronomeSDK::PackageCreateParams::RecurringCredit::OrHash]
        ).void
      end
      attr_writer :recurring_credits

      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::PackageCreateParams::ScheduledCharge]
          )
        )
      end
      attr_reader :scheduled_charges

      sig do
        params(
          scheduled_charges:
            T::Array[MetronomeSDK::PackageCreateParams::ScheduledCharge::OrHash]
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
            MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol
          )
        )
      end
      attr_reader :scheduled_charges_on_usage_invoices

      sig do
        params(
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol
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

      sig do
        returns(
          T.nilable(T::Array[MetronomeSDK::PackageCreateParams::Subscription])
        )
      end
      attr_reader :subscriptions

      sig do
        params(
          subscriptions:
            T::Array[MetronomeSDK::PackageCreateParams::Subscription::OrHash]
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
        returns(
          T.nilable(MetronomeSDK::PackageCreateParams::UsageStatementSchedule)
        )
      end
      attr_reader :usage_statement_schedule

      sig do
        params(
          usage_statement_schedule:
            MetronomeSDK::PackageCreateParams::UsageStatementSchedule::OrHash
        ).void
      end
      attr_writer :usage_statement_schedule

      sig do
        params(
          name: String,
          billing_anchor_date:
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::OrSymbol,
          billing_provider:
            MetronomeSDK::PackageCreateParams::BillingProvider::OrSymbol,
          commits: T::Array[MetronomeSDK::PackageCreateParams::Commit::OrHash],
          contract_name: String,
          credits: T::Array[MetronomeSDK::PackageCreateParams::Credit::OrHash],
          custom_fields: T::Hash[Symbol, String],
          delivery_method:
            MetronomeSDK::PackageCreateParams::DeliveryMethod::OrSymbol,
          duration: MetronomeSDK::PackageCreateParams::Duration::OrHash,
          multiplier_override_prioritization:
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol,
          net_payment_terms_days: Float,
          overrides:
            T::Array[MetronomeSDK::PackageCreateParams::Override::OrHash],
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
          priority: Float,
          rate_card_alias: String,
          rate_card_id: String,
          recurring_commits:
            T::Array[
              MetronomeSDK::PackageCreateParams::RecurringCommit::OrHash
            ],
          recurring_credits:
            T::Array[
              MetronomeSDK::PackageCreateParams::RecurringCredit::OrHash
            ],
          scheduled_charges:
            T::Array[
              MetronomeSDK::PackageCreateParams::ScheduledCharge::OrHash
            ],
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfiguration::OrHash,
          subscriptions:
            T::Array[MetronomeSDK::PackageCreateParams::Subscription::OrHash],
          uniqueness_key: String,
          usage_statement_schedule:
            MetronomeSDK::PackageCreateParams::UsageStatementSchedule::OrHash,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        billing_anchor_date: nil,
        billing_provider: nil,
        commits: nil,
        contract_name: nil,
        credits: nil,
        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        custom_fields: nil,
        delivery_method: nil,
        duration: nil,
        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        # prices automatically. EXPLICIT prioritization requires specifying priorities for
        # each multiplier; the one with the lowest priority value will be prioritized
        # first. If tiered overrides are used, prioritization must be explicit.
        multiplier_override_prioritization: nil,
        net_payment_terms_days: nil,
        overrides: nil,
        prepaid_balance_threshold_configuration: nil,
        # Priority of the generated contract.
        priority: nil,
        # Selects the rate card linked to the specified alias as of the contract's start
        # date.
        rate_card_alias: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        scheduled_charges: nil,
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        subscriptions: nil,
        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        uniqueness_key: nil,
        usage_statement_schedule: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            billing_anchor_date:
              MetronomeSDK::PackageCreateParams::BillingAnchorDate::OrSymbol,
            billing_provider:
              MetronomeSDK::PackageCreateParams::BillingProvider::OrSymbol,
            commits: T::Array[MetronomeSDK::PackageCreateParams::Commit],
            contract_name: String,
            credits: T::Array[MetronomeSDK::PackageCreateParams::Credit],
            custom_fields: T::Hash[Symbol, String],
            delivery_method:
              MetronomeSDK::PackageCreateParams::DeliveryMethod::OrSymbol,
            duration: MetronomeSDK::PackageCreateParams::Duration,
            multiplier_override_prioritization:
              MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol,
            net_payment_terms_days: Float,
            overrides: T::Array[MetronomeSDK::PackageCreateParams::Override],
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfiguration,
            priority: Float,
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits:
              T::Array[MetronomeSDK::PackageCreateParams::RecurringCommit],
            recurring_credits:
              T::Array[MetronomeSDK::PackageCreateParams::RecurringCredit],
            scheduled_charges:
              T::Array[MetronomeSDK::PackageCreateParams::ScheduledCharge],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfiguration,
            subscriptions:
              T::Array[MetronomeSDK::PackageCreateParams::Subscription],
            uniqueness_key: String,
            usage_statement_schedule:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule,
            request_options: MetronomeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module BillingAnchorDate
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::PackageCreateParams::BillingAnchorDate)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONTRACT_START_DATE =
          T.let(
            :contract_start_date,
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::TaggedSymbol
          )
        FIRST_BILLING_PERIOD =
          T.let(
            :first_billing_period,
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::BillingAnchorDate::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module BillingProvider
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::PackageCreateParams::BillingProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS_MARKETPLACE =
          T.let(
            :aws_marketplace,
            MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
          )
        AZURE_MARKETPLACE =
          T.let(
            :azure_marketplace,
            MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
          )
        GCP_MARKETPLACE =
          T.let(
            :gcp_marketplace,
            MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
          )
        STRIPE =
          T.let(
            :stripe,
            MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
          )
        NETSUITE =
          T.let(
            :netsuite,
            MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::BillingProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Commit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PackageCreateParams::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig do
          returns(MetronomeSDK::PackageCreateParams::Commit::Type::OrSymbol)
        end
        attr_accessor :type

        # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
        # commits only one schedule item is allowed and amount must match invoice_schedule
        # total.
        sig do
          returns(
            T.nilable(MetronomeSDK::PackageCreateParams::Commit::AccessSchedule)
          )
        end
        attr_reader :access_schedule

        sig do
          params(
            access_schedule:
              MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::OrHash
          ).void
        end
        attr_writer :access_schedule

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

        # Required for "POSTPAID" commits: the true up invoice will be generated at this
        # time and only one schedule item is allowed; the total must match access_schedule
        # amount. Optional for "PREPAID" commits: if not provided, this will be a
        # "complimentary" commit with no invoice.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule
            )
          )
        end
        attr_reader :invoice_schedule

        sig do
          params(
            invoice_schedule:
              MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::OrHash
          ).void
        end
        attr_writer :invoice_schedule

        # displayed on invoices
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # optionally payment gate this commit
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig
            )
          )
        end
        attr_reader :payment_gate_config

        sig do
          params(
            payment_gate_config:
              MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::OrHash
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
              MetronomeSDK::PackageCreateParams::Commit::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::PackageCreateParams::Commit::RateType::OrSymbol
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
            type: MetronomeSDK::PackageCreateParams::Commit::Type::OrSymbol,
            access_schedule:
              MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::OrHash,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_schedule:
              MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::OrHash,
            name: String,
            payment_gate_config:
              MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::OrHash,
            priority: Float,
            rate_type:
              MetronomeSDK::PackageCreateParams::Commit::RateType::OrSymbol,
            rollover_fraction: Float,
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
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
          # Required for "POSTPAID" commits: the true up invoice will be generated at this
          # time and only one schedule item is allowed; the total must match access_schedule
          # amount. Optional for "PREPAID" commits: if not provided, this will be a
          # "complimentary" commit with no invoice.
          invoice_schedule: nil,
          # displayed on invoices
          name: nil,
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
              type: MetronomeSDK::PackageCreateParams::Commit::Type::OrSymbol,
              access_schedule:
                MetronomeSDK::PackageCreateParams::Commit::AccessSchedule,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_schedule:
                MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule,
              name: String,
              payment_gate_config:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig,
              priority: Float,
              rate_type:
                MetronomeSDK::PackageCreateParams::Commit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
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
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Commit::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREPAID =
            T.let(
              :PREPAID,
              MetronomeSDK::PackageCreateParams::Commit::Type::TaggedSymbol
            )
          POSTPAID =
            T.let(
              :POSTPAID,
              MetronomeSDK::PackageCreateParams::Commit::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Commit::Type::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::Commit::AccessSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::OrHash
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
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            # Offset relative to the start of this segment indicating when it should end.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::OrHash
              ).void
            end
            attr_writer :duration

            # Date relative to the contract start date indicating the start of this schedule
            # segment.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

            sig do
              params(
                amount: Float,
                duration:
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::OrHash,
                starting_at_offset:
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              # Offset relative to the start of this segment indicating when it should end.
              duration:,
              # Date relative to the contract start date indicating the start of this schedule
              # segment.
              starting_at_offset:
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  duration:
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration,
                  starting_at_offset:
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset
                }
              )
            end
            def to_hash
            end

            class Duration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the start of this segment indicating when it should end.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Date relative to the contract start date indicating the start of this schedule
              # segment.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Either provide amount or provide both unit_price and quantity.
          sig do
            returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem
              ]
            )
          end
          attr_accessor :schedule_items

          # Defaults to USD (cents) if not passed.
          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          # Required for "POSTPAID" commits: the true up invoice will be generated at this
          # time and only one schedule item is allowed; the total must match access_schedule
          # amount. Optional for "PREPAID" commits: if not provided, this will be a
          # "complimentary" commit with no invoice.
          sig do
            params(
              schedule_items:
                T::Array[
                  MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::OrHash
                ],
              credit_type_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Either provide amount or provide both unit_price and quantity.
            schedule_items:,
            # Defaults to USD (cents) if not passed.
            credit_type_id: nil
          )
          end

          sig do
            override.returns(
              {
                schedule_items:
                  T::Array[
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Date relative to the contract start date.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset
              )
            end
            attr_reader :date_offset

            sig do
              params(
                date_offset:
                  MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::OrHash
              ).void
            end
            attr_writer :date_offset

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
                date_offset:
                  MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::OrHash,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Date relative to the contract start date.
              date_offset:,
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
                  date_offset:
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class DateOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Date relative to the contract start date.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol
            )
          end
          attr_accessor :payment_gate_type

          # Only applicable if using PRECALCULATED as your tax type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig
              )
            )
          end
          attr_reader :precalculated_tax_config

          sig do
            params(
              precalculated_tax_config:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
            ).void
          end
          attr_writer :precalculated_tax_config

          # Only applicable if using STRIPE as your payment gate type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig
              )
            )
          end
          attr_reader :stripe_config

          sig do
            params(
              stripe_config:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::OrHash
            ).void
          end
          attr_writer :stripe_config

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
              )
            )
          end
          attr_reader :tax_type

          sig do
            params(
              tax_type:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
            ).void
          end
          attr_writer :tax_type

          # optionally payment gate this commit
          sig do
            params(
              payment_gate_type:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
              precalculated_tax_config:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
              stripe_config:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::OrHash,
              tax_type:
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
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
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig,
                stripe_config:
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig,
                tax_type:
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::OrSymbol
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
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig,
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
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # If left blank, will default to INVOICE
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
              )
            end
            attr_accessor :payment_type

            # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            # your payment type.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :invoice_metadata

            sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
            attr_writer :invoice_metadata

            # If true, the payment will be made assuming the customer is present (i.e. on
            # session).
            #
            # If false, the payment will be made assuming the customer is not present (i.e.
            # off session). For cardholders from a country with an e-mandate requirement (e.g.
            # India), the payment may be declined.
            #
            # If left blank, will default to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :on_session_payment

            sig { params(on_session_payment: T::Boolean).void }
            attr_writer :on_session_payment

            # Only applicable if using STRIPE as your payment gate type.
            sig do
              params(
                payment_type:
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
                invoice_metadata: T::Hash[Symbol, String],
                on_session_payment: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # If left blank, will default to INVOICE
              payment_type:,
              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              invoice_metadata: nil,
              # If true, the payment will be made assuming the customer is present (i.e. on
              # session).
              #
              # If false, the payment will be made assuming the customer is not present (i.e.
              # off session). For cardholders from a country with an e-mandate requirement (e.g.
              # India), the payment may be declined.
              #
              # If left blank, will default to false.
              on_session_payment: nil
            )
            end

            sig do
              override.returns(
                {
                  payment_type:
                    MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
                  invoice_metadata: T::Hash[Symbol, String],
                  on_session_payment: T::Boolean
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
                    MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INVOICE =
                T.let(
                  :INVOICE,
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )
              PAYMENT_INTENT =
                T.let(
                  :PAYMENT_INTENT,
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
              )
            ANROK =
              T.let(
                :ANROK,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
              )
            PRECALCULATED =
              T.let(
                :PRECALCULATED,
                MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
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
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Commit::RateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::PackageCreateParams::Commit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::PackageCreateParams::Commit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Commit::RateType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Credit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PackageCreateParams::Credit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Schedule for distributing the credit to the customer.
        sig do
          returns(MetronomeSDK::PackageCreateParams::Credit::AccessSchedule)
        end
        attr_reader :access_schedule

        sig do
          params(
            access_schedule:
              MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::OrHash
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

        # displayed on invoices
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # If multiple credits are applicable, the one with the lower priority will apply
        # first.
        sig { returns(T.nilable(Float)) }
        attr_reader :priority

        sig { params(priority: Float).void }
        attr_writer :priority

        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Credit::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::PackageCreateParams::Credit::RateType::OrSymbol
          ).void
        end
        attr_writer :rate_type

        # List of filters that determine what kind of customer usage draws down a commit
        # or credit. A customer's usage needs to meet the condition of at least one of the
        # specifiers to contribute to a commit's or credit's drawdown. This field cannot
        # be used together with `applicable_product_ids` or `applicable_product_tags`.
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
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
              MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::OrHash,
            product_id: String,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            name: String,
            priority: Float,
            rate_type:
              MetronomeSDK::PackageCreateParams::Credit::RateType::OrSymbol,
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
          # displayed on invoices
          name: nil,
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
                MetronomeSDK::PackageCreateParams::Credit::AccessSchedule,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              priority: Float,
              rate_type:
                MetronomeSDK::PackageCreateParams::Credit::RateType::OrSymbol,
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
                MetronomeSDK::PackageCreateParams::Credit::AccessSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::OrHash
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
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            # Offset relative to the start of this segment indicating when it should end.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::OrHash
              ).void
            end
            attr_writer :duration

            # Date relative to the contract start date indicating the start of this schedule
            # segment.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

            sig do
              params(
                amount: Float,
                duration:
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::OrHash,
                starting_at_offset:
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              # Offset relative to the start of this segment indicating when it should end.
              duration:,
              # Date relative to the contract start date indicating the start of this schedule
              # segment.
              starting_at_offset:
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  duration:
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration,
                  starting_at_offset:
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset
                }
              )
            end
            def to_hash
            end

            class Duration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the start of this segment indicating when it should end.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Date relative to the contract start date indicating the start of this schedule
              # segment.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Credit::RateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::PackageCreateParams::Credit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::PackageCreateParams::Credit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Credit::RateType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module DeliveryMethod
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::PackageCreateParams::DeliveryMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIRECT_TO_BILLING_PROVIDER =
          T.let(
            :direct_to_billing_provider,
            MetronomeSDK::PackageCreateParams::DeliveryMethod::TaggedSymbol
          )
        AWS_SQS =
          T.let(
            :aws_sqs,
            MetronomeSDK::PackageCreateParams::DeliveryMethod::TaggedSymbol
          )
        TACKLE =
          T.let(
            :tackle,
            MetronomeSDK::PackageCreateParams::DeliveryMethod::TaggedSymbol
          )
        AWS_SNS =
          T.let(
            :aws_sns,
            MetronomeSDK::PackageCreateParams::DeliveryMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::DeliveryMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Duration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PackageCreateParams::Duration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::PackageCreateParams::Duration::Unit::OrSymbol)
        end
        attr_accessor :unit

        sig { returns(Integer) }
        attr_accessor :value

        sig do
          params(
            unit: MetronomeSDK::PackageCreateParams::Duration::Unit::OrSymbol,
            value: Integer
          ).returns(T.attached_class)
        end
        def self.new(unit:, value:)
        end

        sig do
          override.returns(
            {
              unit: MetronomeSDK::PackageCreateParams::Duration::Unit::OrSymbol,
              value: Integer
            }
          )
        end
        def to_hash
        end

        module Unit
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Duration::Unit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAYS =
            T.let(
              :DAYS,
              MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
            )
          WEEKS =
            T.let(
              :WEEKS,
              MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
            )
          MONTHS =
            T.let(
              :MONTHS,
              MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
            )
          QUARTERS =
            T.let(
              :QUARTERS,
              MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
            )
          YEARS =
            T.let(
              :YEARS,
              MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Duration::Unit::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOWEST_MULTIPLIER =
          T.let(
            :LOWEST_MULTIPLIER,
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::TaggedSymbol
          )
        EXPLICIT =
          T.let(
            :EXPLICIT,
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::Override,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Specifies which products the override will apply to.
        sig do
          returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier
            ]
          )
        end
        attr_accessor :override_specifiers

        # Offset relative to contract start date indicating when the override will start
        # applying (inclusive)
        sig do
          returns(MetronomeSDK::PackageCreateParams::Override::StartingOffset)
        end
        attr_reader :starting_offset

        sig do
          params(
            starting_offset:
              MetronomeSDK::PackageCreateParams::Override::StartingOffset::OrHash
          ).void
        end
        attr_writer :starting_offset

        # Offset relative to override start indicating when the override will stop
        # applying (exclusive)
        sig do
          returns(
            T.nilable(MetronomeSDK::PackageCreateParams::Override::Duration)
          )
        end
        attr_reader :duration

        sig do
          params(
            duration:
              MetronomeSDK::PackageCreateParams::Override::Duration::OrHash
          ).void
        end
        attr_writer :duration

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

        # Required for OVERWRITE type.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Override::OverwriteRate
            )
          )
        end
        attr_reader :overwrite_rate

        sig do
          params(
            overwrite_rate:
              MetronomeSDK::PackageCreateParams::Override::OverwriteRate::OrHash
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

        # Indicates whether the override applies to commit rates or list rates. Can only
        # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
        # `"LIST_RATE"`.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Override::Target::OrSymbol
            )
          )
        end
        attr_reader :target

        sig do
          params(
            target:
              MetronomeSDK::PackageCreateParams::Override::Target::OrSymbol
          ).void
        end
        attr_writer :target

        # Required for TIERED type. Must have at least one tier.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::PackageCreateParams::Override::Tier]
            )
          )
        end
        attr_reader :tiers

        sig do
          params(
            tiers:
              T::Array[
                MetronomeSDK::PackageCreateParams::Override::Tier::OrHash
              ]
          ).void
        end
        attr_writer :tiers

        # Overwrites are prioritized over multipliers and tiered overrides.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Override::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: MetronomeSDK::PackageCreateParams::Override::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            override_specifiers:
              T::Array[
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::OrHash
              ],
            starting_offset:
              MetronomeSDK::PackageCreateParams::Override::StartingOffset::OrHash,
            duration:
              MetronomeSDK::PackageCreateParams::Override::Duration::OrHash,
            entitled: T::Boolean,
            is_commit_specific: T::Boolean,
            multiplier: Float,
            overwrite_rate:
              MetronomeSDK::PackageCreateParams::Override::OverwriteRate::OrHash,
            priority: Float,
            target:
              MetronomeSDK::PackageCreateParams::Override::Target::OrSymbol,
            tiers:
              T::Array[
                MetronomeSDK::PackageCreateParams::Override::Tier::OrHash
              ],
            type: MetronomeSDK::PackageCreateParams::Override::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies which products the override will apply to.
          override_specifiers:,
          # Offset relative to contract start date indicating when the override will start
          # applying (inclusive)
          starting_offset:,
          # Offset relative to override start indicating when the override will stop
          # applying (exclusive)
          duration: nil,
          entitled: nil,
          # Indicates whether the override should only apply to commits. Defaults to
          # `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          # passing `commit_ids`. if you do not specify `commit_ids`, then the override will
          # apply when consuming any prepaid or postpaid commit.
          is_commit_specific: nil,
          # Required for MULTIPLIER type. Must be >=0.
          multiplier: nil,
          # Required for OVERWRITE type.
          overwrite_rate: nil,
          # Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          # Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          # and multiplier overrides are prioritized by their priority value (lowest first).
          # Must be > 0.
          priority: nil,
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
              override_specifiers:
                T::Array[
                  MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier
                ],
              starting_offset:
                MetronomeSDK::PackageCreateParams::Override::StartingOffset,
              duration: MetronomeSDK::PackageCreateParams::Override::Duration,
              entitled: T::Boolean,
              is_commit_specific: T::Boolean,
              multiplier: Float,
              overwrite_rate:
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate,
              priority: Float,
              target:
                MetronomeSDK::PackageCreateParams::Override::Target::OrSymbol,
              tiers:
                T::Array[MetronomeSDK::PackageCreateParams::Override::Tier],
              type: MetronomeSDK::PackageCreateParams::Override::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol
              )
            )
          end
          attr_reader :billing_frequency

          sig do
            params(
              billing_frequency:
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol
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

          # Can only be used for commit specific overrides. Must be used in conjunction with
          # one of `product_id`, `product_tags`, `pricing_group_values`, or
          # `presentation_group_values`. If provided, the override will only apply to
          # credits created by the specified recurring credit ids.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :recurring_credit_ids

          sig { params(recurring_credit_ids: T::Array[String]).void }
          attr_writer :recurring_credit_ids

          sig do
            params(
              billing_frequency:
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
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
            recurring_commit_ids: nil,
            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of `product_id`, `product_tags`, `pricing_group_values`, or
            # `presentation_group_values`. If provided, the override will only apply to
            # credits created by the specified recurring credit ids.
            recurring_credit_ids: nil
          )
          end

          sig do
            override.returns(
              {
                billing_frequency:
                  MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
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
                  MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Override::StartingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Offset relative to contract start date indicating when the override will start
          # applying (inclusive)
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Duration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Override::Duration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Override::Duration::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Offset relative to override start indicating when the override will stop
          # applying (exclusive)
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::Override::Duration::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::Override::Duration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Override::Duration::Unit::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::OrSymbol
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
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::OrSymbol,
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
                  MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::OrSymbol,
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
                  MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FLAT =
              T.let(
                :FLAT,
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
              )
            PERCENTAGE =
              T.let(
                :PERCENTAGE,
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :SUBSCRIPTION,
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
              )
            TIERED =
              T.let(
                :TIERED,
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType::TaggedSymbol
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
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Override::Target)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::PackageCreateParams::Override::Target::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::PackageCreateParams::Override::Target::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Override::Target::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::Override::Tier,
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
              T.all(Symbol, MetronomeSDK::PackageCreateParams::Override::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OVERWRITE =
            T.let(
              :OVERWRITE,
              MetronomeSDK::PackageCreateParams::Override::Type::TaggedSymbol
            )
          MULTIPLIER =
            T.let(
              :MULTIPLIER,
              MetronomeSDK::PackageCreateParams::Override::Type::TaggedSymbol
            )
          TIERED =
            T.let(
              :TIERED,
              MetronomeSDK::PackageCreateParams::Override::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Override::Type::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::RecurringCommit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The amount of commit to grant.
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount
          )
        end
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # Defines the length of the access schedule for each created commit/credit. The
        # value represents the number of units. Unit defaults to "PERIODS", where the
        # length of a period is determined by the recurrence_frequency.
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration
          )
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

        # Determines the start time for the first commit
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset
          )
        end
        attr_reader :starting_offset

        sig do
          params(
            starting_offset:
              MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::OrHash
          ).void
        end
        attr_writer :starting_offset

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
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset
            )
          )
        end
        attr_reader :ending_offset

        sig do
          params(
            ending_offset:
              MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::OrHash
          ).void
        end
        attr_writer :ending_offset

        # The amount the customer should be billed for the commit. Not required.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount
            )
          )
        end
        attr_reader :invoice_amount

        sig do
          params(
            invoice_amount:
              MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount::OrHash
          ).void
        end
        attr_writer :invoice_amount

        # displayed on invoices. will be passed through to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::OrSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::OrSymbol
          ).void
        end
        attr_writer :proration

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::OrSymbol
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
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
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
              MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig
            )
          )
        end
        attr_reader :subscription_config

        sig do
          params(
            subscription_config:
              MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::OrHash
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
              MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::OrHash,
            priority: Float,
            product_id: String,
            starting_offset:
              MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::OrHash,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            description: String,
            ending_offset:
              MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::OrHash,
            invoice_amount:
              MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount::OrHash,
            name: String,
            proration:
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::OrSymbol,
            rate_type:
              MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
            subscription_config:
              MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::OrHash,
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
          # Determines the start time for the first commit
          starting_offset:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. optional
          ending_offset: nil,
          # The amount the customer should be billed for the commit. Not required.
          invoice_amount: nil,
          # displayed on invoices. will be passed through to the individual commits
          name: nil,
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount,
              commit_duration:
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_offset:
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_offset:
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset,
              invoice_amount:
                MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount,
              name: String,
              proration:
                MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
              subscription_config:
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig,
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount,
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::OrSymbol
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
                  MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Determines the start time for the first commit
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EndingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Determines when the contract will stop creating recurring commits. optional
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount,
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCommit::Proration::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCommit::RateType::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig
            )
          end
          attr_reader :apply_seat_increase_config

          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
            ).void
          end
          attr_writer :apply_seat_increase_config

          # ID of the subscription to configure on the recurring commit/credit.
          sig { returns(String) }
          attr_accessor :subscription_id

          # If set to POOLED, allocation added per seat is pooled across the account.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
              )
            )
          end
          attr_reader :allocation

          sig do
            params(
              allocation:
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
            ).void
          end
          attr_writer :allocation

          # Attach a subscription to the recurring commit/credit.
          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
              subscription_id: String,
              allocation:
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            apply_seat_increase_config:,
            # ID of the subscription to configure on the recurring commit/credit.
            subscription_id:,
            # If set to POOLED, allocation added per seat is pooled across the account.
            allocation: nil
          )
          end

          sig do
            override.returns(
              {
                apply_seat_increase_config:
                  MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                subscription_id: String,
                allocation:
                  MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol
              }
            )
          end
          def to_hash
          end

          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
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

          # If set to POOLED, allocation added per seat is pooled across the account.
          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :INDIVIDUAL,
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
              )
            POOLED =
              T.let(
                :POOLED,
                MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::RecurringCredit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The amount of commit to grant.
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount
          )
        end
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # Defines the length of the access schedule for each created commit/credit. The
        # value represents the number of units. Unit defaults to "PERIODS", where the
        # length of a period is determined by the recurrence_frequency.
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration
          )
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

        # Determines the start time for the first commit
        sig do
          returns(
            MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset
          )
        end
        attr_reader :starting_offset

        sig do
          params(
            starting_offset:
              MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::OrHash
          ).void
        end
        attr_writer :starting_offset

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
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset
            )
          )
        end
        attr_reader :ending_offset

        sig do
          params(
            ending_offset:
              MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::OrHash
          ).void
        end
        attr_writer :ending_offset

        # displayed on invoices. will be passed through to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::OrSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::OrSymbol
          ).void
        end
        attr_writer :proration

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::OrSymbol
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
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
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
              MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig
            )
          )
        end
        attr_reader :subscription_config

        sig do
          params(
            subscription_config:
              MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::OrHash
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
              MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::OrHash,
            priority: Float,
            product_id: String,
            starting_offset:
              MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::OrHash,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            description: String,
            ending_offset:
              MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::OrHash,
            name: String,
            proration:
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::OrSymbol,
            rate_type:
              MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float,
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
            subscription_config:
              MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::OrHash,
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
          # Determines the start time for the first commit
          starting_offset:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. optional
          ending_offset: nil,
          # displayed on invoices. will be passed through to the individual commits
          name: nil,
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount,
              commit_duration:
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_offset:
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_offset:
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset,
              name: String,
              proration:
                MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
              subscription_config:
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig,
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount,
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::OrSymbol
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
                  MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Determines the start time for the first commit
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EndingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Determines when the contract will stop creating recurring commits. optional
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCredit::Proration::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCredit::RateType::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig
            )
          end
          attr_reader :apply_seat_increase_config

          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
            ).void
          end
          attr_writer :apply_seat_increase_config

          # ID of the subscription to configure on the recurring commit/credit.
          sig { returns(String) }
          attr_accessor :subscription_id

          # If set to POOLED, allocation added per seat is pooled across the account.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
              )
            )
          end
          attr_reader :allocation

          sig do
            params(
              allocation:
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
            ).void
          end
          attr_writer :allocation

          # Attach a subscription to the recurring commit/credit.
          sig do
            params(
              apply_seat_increase_config:
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
              subscription_id: String,
              allocation:
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            apply_seat_increase_config:,
            # ID of the subscription to configure on the recurring commit/credit.
            subscription_id:,
            # If set to POOLED, allocation added per seat is pooled across the account.
            allocation: nil
          )
          end

          sig do
            override.returns(
              {
                apply_seat_increase_config:
                  MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                subscription_id: String,
                allocation:
                  MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol
              }
            )
          end
          def to_hash
          end

          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
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

          # If set to POOLED, allocation added per seat is pooled across the account.
          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :INDIVIDUAL,
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
              )
            POOLED =
              T.let(
                :POOLED,
                MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PackageCreateParams::ScheduledCharge,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        # Must provide schedule_items.
        sig do
          returns(MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule)
        end
        attr_reader :schedule

        sig do
          params(
            schedule:
              MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::OrHash
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

        sig do
          params(
            product_id: String,
            schedule:
              MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::OrHash,
            custom_fields: T::Hash[Symbol, String],
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          product_id:,
          # Must provide schedule_items.
          schedule:,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          # displayed on invoices
          name: nil
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              schedule:
                MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule,
              custom_fields: T::Hash[Symbol, String],
              name: String
            }
          )
        end
        def to_hash
        end

        class Schedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Either provide amount or provide both unit_price and quantity.
          sig do
            returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem
              ]
            )
          end
          attr_accessor :schedule_items

          # Defaults to USD (cents) if not passed.
          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          # Must provide schedule_items.
          sig do
            params(
              schedule_items:
                T::Array[
                  MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::OrHash
                ],
              credit_type_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Either provide amount or provide both unit_price and quantity.
            schedule_items:,
            # Defaults to USD (cents) if not passed.
            credit_type_id: nil
          )
          end

          sig do
            override.returns(
              {
                schedule_items:
                  T::Array[
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem
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
                  MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Date relative to the contract start date.
            sig do
              returns(
                MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset
              )
            end
            attr_reader :date_offset

            sig do
              params(
                date_offset:
                  MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::OrHash
              ).void
            end
            attr_writer :date_offset

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
                date_offset:
                  MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::OrHash,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Date relative to the contract start date.
              date_offset:,
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
                  date_offset:
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class DateOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::OrSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Date relative to the contract start date.
              sig do
                params(
                  unit:
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                    value: Integer
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
                      MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                QUARTERS =
                  T.let(
                    :QUARTERS,
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :ALL,
            MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Subscription < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PackageCreateParams::Subscription,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::OrSymbol
          )
        end
        attr_accessor :collection_schedule

        # The initial quantity for the subscription. It must be non-negative value.
        sig { returns(Float) }
        attr_accessor :initial_quantity

        sig do
          returns(MetronomeSDK::PackageCreateParams::Subscription::Proration)
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::PackageCreateParams::Subscription::Proration::OrHash
          ).void
        end
        attr_writer :proration

        sig do
          returns(
            MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate
          )
        end
        attr_reader :subscription_rate

        sig do
          params(
            subscription_rate:
              MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::OrHash
          ).void
        end
        attr_writer :subscription_rate

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Lifetime of the subscription from its start. If not provided, subscription
        # inherits contract end date.
        sig do
          returns(
            T.nilable(MetronomeSDK::PackageCreateParams::Subscription::Duration)
          )
        end
        attr_reader :duration

        sig do
          params(
            duration:
              MetronomeSDK::PackageCreateParams::Subscription::Duration::OrHash
          ).void
        end
        attr_writer :duration

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Relative date from contract start date corresponding to the inclusive start time
        # for the subscription. If not provided, defaults to contract start date
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::Subscription::StartingOffset
            )
          )
        end
        attr_reader :starting_offset

        sig do
          params(
            starting_offset:
              MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::OrHash
          ).void
        end
        attr_writer :starting_offset

        # A temporary ID used to reference the subscription in recurring commit/credit
        # subscription configs created within the same payload.
        sig { returns(T.nilable(String)) }
        attr_reader :temporary_id

        sig { params(temporary_id: String).void }
        attr_writer :temporary_id

        sig do
          params(
            collection_schedule:
              MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::OrSymbol,
            initial_quantity: Float,
            proration:
              MetronomeSDK::PackageCreateParams::Subscription::Proration::OrHash,
            subscription_rate:
              MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::OrHash,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            duration:
              MetronomeSDK::PackageCreateParams::Subscription::Duration::OrHash,
            name: String,
            starting_offset:
              MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::OrHash,
            temporary_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          collection_schedule:,
          # The initial quantity for the subscription. It must be non-negative value.
          initial_quantity:,
          proration:,
          subscription_rate:,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          description: nil,
          # Lifetime of the subscription from its start. If not provided, subscription
          # inherits contract end date.
          duration: nil,
          name: nil,
          # Relative date from contract start date corresponding to the inclusive start time
          # for the subscription. If not provided, defaults to contract start date
          starting_offset: nil,
          # A temporary ID used to reference the subscription in recurring commit/credit
          # subscription configs created within the same payload.
          temporary_id: nil
        )
        end

        sig do
          override.returns(
            {
              collection_schedule:
                MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::OrSymbol,
              initial_quantity: Float,
              proration:
                MetronomeSDK::PackageCreateParams::Subscription::Proration,
              subscription_rate:
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              duration:
                MetronomeSDK::PackageCreateParams::Subscription::Duration,
              name: String,
              starting_offset:
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset,
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
                MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADVANCE =
            T.let(
              :ADVANCE,
              MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::TaggedSymbol
            )
          ARREARS =
            T.let(
              :ARREARS,
              MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::Subscription::Proration,
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
                MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol
              )
            )
          end
          attr_reader :invoice_behavior

          sig do
            params(
              invoice_behavior:
                MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol
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
                MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
              is_prorated: T::Boolean
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
            is_prorated: nil
          )
          end

          sig do
            override.returns(
              {
                invoice_behavior:
                  MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::OrSymbol,
                is_prorated: T::Boolean
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
                  MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BILL_IMMEDIATELY =
              T.let(
                :BILL_IMMEDIATELY,
                MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
              )
            BILL_ON_NEXT_COLLECTION_DATE =
              T.let(
                :BILL_ON_NEXT_COLLECTION_DATE,
                MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Frequency to bill subscription with. Together with product_id, must match
          # existing rate on the rate card.
          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol
            )
          end
          attr_accessor :billing_frequency

          # Must be subscription type product
          sig { returns(String) }
          attr_accessor :product_id

          sig do
            params(
              billing_frequency:
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
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
                  MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
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
                  MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Duration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Subscription::Duration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Lifetime of the subscription from its start. If not provided, subscription
          # inherits contract end date.
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # Relative date from contract start date corresponding to the inclusive start time
          # for the subscription. If not provided, defaults to contract start date
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit::TaggedSymbol
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
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::OrSymbol
          )
        end
        attr_accessor :frequency

        # If not provided, defaults to the first day of the month.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::OrSymbol
            )
          )
        end
        attr_reader :day

        sig do
          params(
            day:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::OrSymbol
          ).void
        end
        attr_writer :day

        # The offset at which Metronome should start generating usage invoices, relative
        # to the contract start date. If unspecified, contract start date will be used.
        # This is useful to set if you want to import historical invoices via our 'Create
        # Historical Invoices' API rather than having Metronome automatically generate
        # them.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset
            )
          )
        end
        attr_reader :invoice_generation_starting_at_offset

        sig do
          params(
            invoice_generation_starting_at_offset:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::OrHash
          ).void
        end
        attr_writer :invoice_generation_starting_at_offset

        sig do
          params(
            frequency:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::OrSymbol,
            day:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::OrSymbol,
            invoice_generation_starting_at_offset:
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          frequency:,
          # If not provided, defaults to the first day of the month.
          day: nil,
          # The offset at which Metronome should start generating usage invoices, relative
          # to the contract start date. If unspecified, contract start date will be used.
          # This is useful to set if you want to import historical invoices via our 'Create
          # Historical Invoices' API rather than having Metronome automatically generate
          # them.
          invoice_generation_starting_at_offset: nil
        )
        end

        sig do
          override.returns(
            {
              frequency:
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::OrSymbol,
              day:
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::OrSymbol,
              invoice_generation_starting_at_offset:
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset
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
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency::TaggedSymbol
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
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST_OF_MONTH =
            T.let(
              :FIRST_OF_MONTH,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::TaggedSymbol
            )
          CONTRACT_START =
            T.let(
              :CONTRACT_START,
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class InvoiceGenerationStartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::OrSymbol
            )
          end
          attr_accessor :unit

          sig { returns(Integer) }
          attr_accessor :value

          # The offset at which Metronome should start generating usage invoices, relative
          # to the contract start date. If unspecified, contract start date will be used.
          # This is useful to set if you want to import historical invoices via our 'Create
          # Historical Invoices' API rather than having Metronome automatically generate
          # them.
          sig do
            params(
              unit:
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::OrSymbol,
              value: Integer
            ).returns(T.attached_class)
          end
          def self.new(unit:, value:)
          end

          sig do
            override.returns(
              {
                unit:
                  MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::OrSymbol,
                value: Integer
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
                  MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAYS =
              T.let(
                :DAYS,
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
              )
            WEEKS =
              T.let(
                :WEEKS,
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
              )
            MONTHS =
              T.let(
                :MONTHS,
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
              )
            QUARTERS =
              T.let(
                :QUARTERS,
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
              )
            YEARS =
              T.let(
                :YEARS,
                MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit::TaggedSymbol
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
