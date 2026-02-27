# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PackageRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::PackageRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::Models::V1::PackageRetrieveResponse::Data) }
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::PackageRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit
              ]
            )
          end
          attr_accessor :commits

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :created_by

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override
              ]
            )
          end
          attr_accessor :overrides

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge
              ]
            )
          end
          attr_accessor :scheduled_charges

          sig do
            returns(
              MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule
            )
          end
          attr_reader :usage_statement_schedule

          sig do
            params(
              usage_statement_schedule:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::OrHash
            ).void
          end
          attr_writer :usage_statement_schedule

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Alias
                ]
              )
            )
          end
          attr_reader :aliases

          sig do
            params(
              aliases:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Alias::OrHash
                ]
            ).void
          end
          attr_writer :aliases

          sig { returns(T.nilable(Time)) }
          attr_reader :archived_at

          sig { params(archived_at: Time).void }
          attr_writer :archived_at

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            )
          end
          attr_reader :billing_provider

          sig do
            params(
              billing_provider:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::OrSymbol
            ).void
          end
          attr_writer :billing_provider

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit
                ]
              )
            )
          end
          attr_reader :credits

          sig do
            params(
              credits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::OrHash
                ]
            ).void
          end
          attr_writer :credits

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration
              )
            )
          end
          attr_reader :duration

          sig do
            params(
              duration:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::OrHash
            ).void
          end
          attr_writer :duration

          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )
            )
          end
          attr_reader :multiplier_override_prioritization

          sig do
            params(
              multiplier_override_prioritization:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::OrSymbol
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

          sig do
            returns(
              T.nilable(MetronomeSDK::PrepaidBalanceThresholdConfiguration)
            )
          end
          attr_reader :prepaid_balance_threshold_configuration

          sig do
            params(
              prepaid_balance_threshold_configuration:
                MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :prepaid_balance_threshold_configuration

          sig { returns(T.nilable(String)) }
          attr_reader :rate_card_id

          sig { params(rate_card_id: String).void }
          attr_writer :rate_card_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit
                ]
              )
            )
          end
          attr_reader :recurring_commits

          sig do
            params(
              recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::OrHash
                ]
            ).void
          end
          attr_writer :recurring_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit
                ]
              )
            )
          end
          attr_reader :recurring_credits

          sig do
            params(
              recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::OrHash
                ]
            ).void
          end
          attr_writer :recurring_credits

          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )
            )
          end
          attr_reader :scheduled_charges_on_usage_invoices

          sig do
            params(
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol
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
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription
                ]
              )
            )
          end
          attr_reader :subscriptions

          sig do
            params(
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::OrHash
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
              commits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::OrHash
                ],
              created_at: Time,
              created_by: String,
              overrides:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OrHash
                ],
              scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::OrHash
                ],
              usage_statement_schedule:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::OrHash,
              aliases:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Alias::OrHash
                ],
              archived_at: Time,
              billing_provider:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::OrSymbol,
              credits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::OrHash
                ],
              delivery_method:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::OrSymbol,
              duration:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::OrHash,
              multiplier_override_prioritization:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::OrSymbol,
              name: String,
              net_payment_terms_days: Float,
              prepaid_balance_threshold_configuration:
                MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
              rate_card_id: String,
              recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::OrHash
                ],
              recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::OrHash
                ],
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::SpendThresholdConfiguration::OrHash,
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::OrHash
                ],
              uniqueness_key: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            commits:,
            created_at:,
            created_by:,
            overrides:,
            scheduled_charges:,
            usage_statement_schedule:,
            aliases: nil,
            archived_at: nil,
            billing_provider: nil,
            credits: nil,
            delivery_method: nil,
            duration: nil,
            # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            # prices automatically. EXPLICIT prioritization requires specifying priorities for
            # each multiplier; the one with the lowest priority value will be prioritized
            # first.
            multiplier_override_prioritization: nil,
            name: nil,
            net_payment_terms_days: nil,
            prepaid_balance_threshold_configuration: nil,
            rate_card_id: nil,
            recurring_commits: nil,
            recurring_credits: nil,
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
            uniqueness_key: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                commits:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit
                  ],
                created_at: Time,
                created_by: String,
                overrides:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override
                  ],
                scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge
                  ],
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule,
                aliases:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Alias
                  ],
                archived_at: Time,
                billing_provider:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol,
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit
                  ],
                delivery_method:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol,
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration,
                multiplier_override_prioritization:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol,
                name: String,
                net_payment_terms_days: Float,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::PrepaidBalanceThresholdConfiguration,
                rate_card_id: String,
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit
                  ],
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit
                  ],
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::SpendThresholdConfiguration,
                subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription
                  ],
                uniqueness_key: String
              }
            )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits purposed with
            # this commit.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::OrHash
              ).void
            end
            attr_writer :access_schedule

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_ids

            sig { params(applicable_product_ids: T::Array[String]).void }
            attr_writer :applicable_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # The schedule that the customer will be invoiced for this commit.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule
                )
              )
            end
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::OrSymbol
              ).void
            end
            attr_writer :rate_type

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

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Product::OrHash,
                type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::OrHash,
                name: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              type:,
              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              custom_fields: nil,
              description: nil,
              # The schedule that the customer will be invoiced for this commit.
              invoice_schedule: nil,
              name: nil,
              # If multiple credits or commits are applicable, the one with the lower priority
              # will apply first.
              priority: nil,
              rate_type: nil,
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
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Product,
                  type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::TaggedSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_schedule:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule,
                  name: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Product,
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

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID =
                T.let(
                  :PREPAID,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::TaggedSymbol
                )
              POSTPAID =
                T.let(
                  :POSTPAID,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(MetronomeSDK::CreditTypeData) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              sig do
                params(
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(credit_type:, schedule_items:)
              end

              sig do
                override.returns(
                  {
                    credit_type: MetronomeSDK::CreditTypeData,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem
                      ]
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(Float) }
                attr_accessor :amount

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration
                  )
                end
                attr_reader :duration

                sig do
                  params(
                    duration:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::OrHash
                  ).void
                end
                attr_writer :duration

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset
                  )
                end
                attr_reader :starting_at_offset

                sig do
                  params(
                    starting_at_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
                  ).void
                end
                attr_writer :starting_at_offset

                sig do
                  params(
                    id: String,
                    amount: Float,
                    duration:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::OrHash,
                    starting_at_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(id:, amount:, duration:, starting_at_offset:)
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      amount: Float,
                      duration:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration,
                      starting_at_offset:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset
                    }
                  )
                end
                def to_hash
                end

                class Duration < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(MetronomeSDK::CreditTypeData) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

              # If true, this schedule will not generate an invoice.
              sig { returns(T::Boolean) }
              attr_accessor :do_not_invoice

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              # The schedule that the customer will be invoiced for this commit.
              sig do
                params(
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  do_not_invoice: T::Boolean,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                credit_type:,
                # If true, this schedule will not generate an invoice.
                do_not_invoice:,
                schedule_items:
              )
              end

              sig do
                override.returns(
                  {
                    credit_type: MetronomeSDK::CreditTypeData,
                    do_not_invoice: T::Boolean,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem
                      ]
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset
                  )
                end
                attr_reader :date_offset

                sig do
                  params(
                    date_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::OrHash
                  ).void
                end
                attr_writer :date_offset

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                sig do
                  params(
                    id: String,
                    date_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::OrHash,
                    quantity: Float,
                    unit_price: Float
                  ).returns(T.attached_class)
                end
                def self.new(id:, date_offset:, quantity:, unit_price:)
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      date_offset:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset,
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
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
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
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Override < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier
                ]
              )
            end
            attr_accessor :override_specifiers

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::OrHash
              ).void
            end
            attr_writer :duration

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :entitled

            sig { params(entitled: T::Boolean).void }
            attr_writer :entitled

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_commit_specific

            sig { params(is_commit_specific: T::Boolean).void }
            attr_writer :is_commit_specific

            sig { returns(T.nilable(Float)) }
            attr_reader :multiplier

            sig { params(multiplier: Float).void }
            attr_writer :multiplier

            sig { returns(T.nilable(T::Array[MetronomeSDK::OverrideTier])) }
            attr_reader :override_tiers

            sig do
              params(
                override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash]
              ).void
            end
            attr_writer :override_tiers

            sig { returns(T.nilable(MetronomeSDK::OverwriteRate)) }
            attr_reader :overwrite_rate

            sig do
              params(overwrite_rate: MetronomeSDK::OverwriteRate::OrHash).void
            end
            attr_writer :overwrite_rate

            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Product
                )
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::TaggedSymbol
                )
              )
            end
            attr_reader :target

            sig do
              params(
                target:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::OrSymbol
              ).void
            end
            attr_writer :target

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                id: String,
                override_specifiers:
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::OrHash
                  ],
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::OrHash,
                applicable_product_tags: T::Array[String],
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::OrHash,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash],
                overwrite_rate: MetronomeSDK::OverwriteRate::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Product::OrHash,
                target:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::OrSymbol,
                type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              override_specifiers:,
              starting_at_offset:,
              applicable_product_tags: nil,
              duration: nil,
              entitled: nil,
              is_commit_specific: nil,
              multiplier: nil,
              override_tiers: nil,
              overwrite_rate: nil,
              priority: nil,
              product: nil,
              target: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier
                    ],
                  starting_at_offset:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset,
                  applicable_product_tags: T::Array[String],
                  duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  multiplier: Float,
                  override_tiers: T::Array[MetronomeSDK::OverrideTier],
                  overwrite_rate: MetronomeSDK::OverwriteRate,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Product,
                  target:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::TaggedSymbol,
                  type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :billing_frequency

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::OrSymbol
                ).void
              end
              attr_writer :billing_frequency

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :commit_template_ids

              sig { params(commit_template_ids: T::Array[String]).void }
              attr_writer :commit_template_ids

              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_reader :presentation_group_values

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)]
                ).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :recurring_commit_template_ids

              sig do
                params(recurring_commit_template_ids: T::Array[String]).void
              end
              attr_writer :recurring_commit_template_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :recurring_credit_template_ids

              sig do
                params(recurring_credit_template_ids: T::Array[String]).void
              end
              attr_writer :recurring_credit_template_ids

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                  commit_template_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_template_ids: T::Array[String],
                  recurring_credit_template_ids: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                billing_frequency: nil,
                commit_template_ids: nil,
                presentation_group_values: nil,
                pricing_group_values: nil,
                product_id: nil,
                product_tags: nil,
                recurring_commit_template_ids: nil,
                recurring_credit_template_ids: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol,
                    commit_template_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_template_ids: T::Array[String],
                    recurring_credit_template_ids: T::Array[String]
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::StartingAtOffset::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Duration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Product,
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

            module Target
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Target::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OVERWRITE =
                T.let(
                  :OVERWRITE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              MULTIPLIER =
                T.let(
                  :MULTIPLIER,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Override::Type::TaggedSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule
              )
            end
            attr_reader :schedule

            sig do
              params(
                schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::OrHash
              ).void
            end
            attr_writer :schedule

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Product::OrHash,
                schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::OrHash,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              schedule:,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              custom_fields: nil,
              description: nil,
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Product,
                  schedule:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  name: String
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Product,
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

            class Schedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(MetronomeSDK::CreditTypeData) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              sig do
                params(
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(credit_type:, schedule_items:)
              end

              sig do
                override.returns(
                  {
                    credit_type: MetronomeSDK::CreditTypeData,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem
                      ]
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset
                  )
                end
                attr_reader :date_offset

                sig do
                  params(
                    date_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::OrHash
                  ).void
                end
                attr_writer :date_offset

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                sig do
                  params(
                    id: String,
                    date_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::OrHash,
                    quantity: Float,
                    unit_price: Float
                  ).returns(T.attached_class)
                end
                def self.new(id:, date_offset:, quantity:, unit_price:)
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      date_offset:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset,
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
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit::TaggedSymbol
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

          class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
              )
            end
            attr_accessor :frequency

            sig do
              params(
                frequency:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(frequency:)
            end

            sig do
              override.returns(
                {
                  frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Alias < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Alias,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig do
              params(
                name: String,
                ending_before: Time,
                starting_at: Time
              ).returns(T.attached_class)
            end
            def self.new(name:, ending_before: nil, starting_at: nil)
            end

            sig do
              override.returns(
                { name: String, ending_before: Time, starting_at: Time }
              )
            end
            def to_hash
            end
          end

          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )
            METRONOME =
              T.let(
                :metronome,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Credit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::OrHash
              ).void
            end
            attr_writer :access_schedule

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_ids

            sig { params(applicable_product_ids: T::Array[String]).void }
            attr_writer :applicable_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::OrSymbol
              ).void
            end
            attr_writer :rate_type

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

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::Product::OrHash,
                access_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                name: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::OrSymbol,
                specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              custom_fields: nil,
              description: nil,
              name: nil,
              priority: nil,
              rate_type: nil,
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
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::Product,
                  access_schedule:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  name: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::TaggedSymbol,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::Product,
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

            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(MetronomeSDK::CreditTypeData) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              sig do
                params(
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(credit_type:, schedule_items:)
              end

              sig do
                override.returns(
                  {
                    credit_type: MetronomeSDK::CreditTypeData,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem
                      ]
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(Float) }
                attr_accessor :amount

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration
                  )
                end
                attr_reader :duration

                sig do
                  params(
                    duration:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::OrHash
                  ).void
                end
                attr_writer :duration

                sig do
                  returns(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset
                  )
                end
                attr_reader :starting_at_offset

                sig do
                  params(
                    starting_at_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
                  ).void
                end
                attr_writer :starting_at_offset

                sig do
                  params(
                    id: String,
                    amount: Float,
                    duration:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::OrHash,
                    starting_at_offset:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(id:, amount:, duration:, starting_at_offset:)
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      amount: Float,
                      duration:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration,
                      starting_at_offset:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset
                    }
                  )
                end
                def to_hash
                end

                class Duration < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::Duration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                    )
                  end
                  attr_accessor :unit

                  sig { returns(Integer) }
                  attr_accessor :value

                  sig do
                    params(
                      unit:
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::OrSymbol,
                      value: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(unit:, value:)
                  end

                  sig do
                    override.returns(
                      {
                        unit:
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol,
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
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DAYS =
                      T.let(
                        :DAYS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    WEEKS =
                      T.let(
                        :WEEKS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    MONTHS =
                      T.let(
                        :MONTHS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )
                    YEARS =
                      T.let(
                        :YEARS,
                        MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit::TaggedSymbol
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
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Credit::RateType::TaggedSymbol
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
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::DeliveryMethod::TaggedSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
              )
            end
            attr_accessor :unit

            sig { returns(Integer) }
            attr_accessor :value

            sig do
              params(
                unit:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::OrSymbol,
                value: Integer
              ).returns(T.attached_class)
            end
            def self.new(unit:, value:)
            end

            sig do
              override.returns(
                {
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DAYS =
                T.let(
                  :DAYS,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
                )
              WEEKS =
                T.let(
                  :WEEKS,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
                )
              MONTHS =
                T.let(
                  :MONTHS,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
                )
              YEARS =
                T.let(
                  :YEARS,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Duration::Unit::TaggedSymbol
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
          # first.
          module MultiplierOverridePrioritization
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOWEST_MULTIPLIER =
              T.let(
                :LOWEST_MULTIPLIER,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )
            EXPLICIT =
              T.let(
                :EXPLICIT,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time each of the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
              )
            end
            attr_accessor :rate_type

            # Offset relative to the contract start date that determines the start time for
            # the first commit
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

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

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Offset relative to the recurring credit start that determines when the contract
            # will stop creating recurring commits. optional
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::OrHash
              ).void
            end
            attr_writer :duration

            # The amount the customer should be billed for the commit.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::InvoiceAmount
                )
              )
            end
            attr_reader :invoice_amount

            sig do
              params(
                invoice_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::InvoiceAmount::OrHash
              ).void
            end
            attr_writer :invoice_amount

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::OrSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::OrSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig
                )
              )
            end
            attr_reader :subscription_config

            sig do
              params(
                subscription_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::OrHash
              ).void
            end
            attr_writer :subscription_config

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::OrSymbol,
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::OrHash,
                invoice_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::InvoiceAmount::OrHash,
                name: String,
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                subscription_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # The amount of commit to grant.
              access_amount:,
              # The amount of time each of the created commits will be valid for
              commit_duration:,
              priority:,
              product:,
              # Whether the created commits will use the commit rate or list rate
              rate_type:,
              # Offset relative to the contract start date that determines the start time for
              # the first commit
              starting_at_offset:,
              # Will be passed down to the individual commits
              applicable_product_ids: nil,
              # Will be passed down to the individual commits
              applicable_product_tags: nil,
              description: nil,
              # Offset relative to the recurring credit start that determines when the contract
              # will stop creating recurring commits. optional
              duration: nil,
              # The amount the customer should be billed for the commit.
              invoice_amount: nil,
              name: nil,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Product,
                  rate_type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol,
                  starting_at_offset:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration,
                  invoice_amount:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
                  name: String,
                  proration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                  subscription_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::AccessAmount,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time each of the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Product,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the contract start date that determines the start time for
              # the first commit
              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::StartingAtOffset::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the recurring credit start that determines when the contract
              # will stop creating recurring commits. optional
              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Duration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :credit_type_id

              sig { returns(Float) }
              attr_accessor :quantity

              sig { returns(Float) }
              attr_accessor :unit_price

              # The amount the customer should be billed for the commit.
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                )
              end
              attr_accessor :allocation

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig
                )
              end
              attr_reader :apply_seat_increase_config

              sig do
                params(
                  apply_seat_increase_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
                ).void
              end
              attr_writer :apply_seat_increase_config

              sig { returns(String) }
              attr_accessor :subscription_template_id

              # Attach a subscription to the recurring commit/credit.
              sig do
                params(
                  allocation:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::OrSymbol,
                  apply_seat_increase_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                  subscription_template_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                allocation:,
                apply_seat_increase_config:,
                subscription_template_id:
              )
              end

              sig do
                override.returns(
                  {
                    allocation:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol,
                    apply_seat_increase_config:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                    subscription_template_id: String
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INDIVIDUAL =
                  T.let(
                    :INDIVIDUAL,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                  )
                POOLED =
                  T.let(
                    :POOLED,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Indicates whether a mid-period seat increase should be prorated.
                sig { returns(T::Boolean) }
                attr_accessor :is_prorated

                sig do
                  params(is_prorated: T::Boolean).returns(T.attached_class)
                end
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time each of the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
              )
            end
            attr_accessor :rate_type

            # Offset relative to the contract start date that determines the start time for
            # the first commit
            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

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

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Offset relative to the recurring credit start that determines when the contract
            # will stop creating recurring commits. optional
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::OrHash
              ).void
            end
            attr_writer :duration

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::OrSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::OrSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig
                )
              )
            end
            attr_reader :subscription_config

            sig do
              params(
                subscription_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::OrHash
              ).void
            end
            attr_writer :subscription_config

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::OrSymbol,
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::OrHash,
                name: String,
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                subscription_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # The amount of commit to grant.
              access_amount:,
              # The amount of time each of the created commits will be valid for
              commit_duration:,
              priority:,
              product:,
              # Whether the created commits will use the commit rate or list rate
              rate_type:,
              # Offset relative to the contract start date that determines the start time for
              # the first commit
              starting_at_offset:,
              # Will be passed down to the individual commits
              applicable_product_ids: nil,
              # Will be passed down to the individual commits
              applicable_product_tags: nil,
              description: nil,
              # Offset relative to the recurring credit start that determines when the contract
              # will stop creating recurring commits. optional
              duration: nil,
              name: nil,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Product,
                  rate_type:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol,
                  starting_at_offset:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration,
                  name: String,
                  proration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                  subscription_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::AccessAmount,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time each of the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Product,
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the contract start date that determines the start time for
              # the first commit
              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::StartingAtOffset::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              # Offset relative to the recurring credit start that determines when the contract
              # will stop creating recurring commits. optional
              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Duration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                )
              end
              attr_accessor :allocation

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig
                )
              end
              attr_reader :apply_seat_increase_config

              sig do
                params(
                  apply_seat_increase_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
                ).void
              end
              attr_writer :apply_seat_increase_config

              sig { returns(String) }
              attr_accessor :subscription_template_id

              # Attach a subscription to the recurring commit/credit.
              sig do
                params(
                  allocation:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::OrSymbol,
                  apply_seat_increase_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                  subscription_template_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                allocation:,
                apply_seat_increase_config:,
                subscription_template_id:
              )
              end

              sig do
                override.returns(
                  {
                    allocation:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol,
                    apply_seat_increase_config:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                    subscription_template_id: String
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INDIVIDUAL =
                  T.let(
                    :INDIVIDUAL,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                  )
                POOLED =
                  T.let(
                    :POOLED,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Indicates whether a mid-period seat increase should be prorated.
                sig { returns(T::Boolean) }
                attr_accessor :is_prorated

                sig do
                  params(is_prorated: T::Boolean).returns(T.attached_class)
                end
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
              )
            end
            attr_accessor :collection_schedule

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::OrHash
              ).void
            end
            attr_writer :proration

            sig do
              returns(
                MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate
              )
            end
            attr_reader :subscription_rate

            sig do
              params(
                subscription_rate:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::OrHash
              ).void
            end
            attr_writer :subscription_rate

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::OrHash
              ).void
            end
            attr_writer :duration

            sig { returns(T.nilable(String)) }
            attr_reader :fiat_credit_type_id

            sig { params(fiat_credit_type_id: String).void }
            attr_writer :fiat_credit_type_id

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
            # directly providing the quantity. You must use a SEAT_BASED subscription to use a
            # linked recurring credit with an allocation per seat. `seat_config` must be
            # provided with this option.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::TaggedSymbol
                )
              )
            end
            attr_reader :quantity_management_mode

            sig do
              params(
                quantity_management_mode:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::OrSymbol
              ).void
            end
            attr_writer :quantity_management_mode

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SeatConfig
                )
              )
            end
            attr_reader :seat_config

            sig do
              params(
                seat_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SeatConfig::OrHash
              ).void
            end
            attr_writer :seat_config

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset
                )
              )
            end
            attr_reader :starting_at_offset

            sig do
              params(
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::OrHash
              ).void
            end
            attr_writer :starting_at_offset

            sig do
              params(
                collection_schedule:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::OrSymbol,
                proration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::OrHash,
                subscription_rate:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::OrHash,
                id: String,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                duration:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::OrHash,
                fiat_credit_type_id: String,
                initial_quantity: Float,
                name: String,
                quantity_management_mode:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::OrSymbol,
                seat_config:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SeatConfig::OrHash,
                starting_at_offset:
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              collection_schedule:,
              proration:,
              subscription_rate:,
              id: nil,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              custom_fields: nil,
              description: nil,
              duration: nil,
              fiat_credit_type_id: nil,
              initial_quantity: nil,
              name: nil,
              # Determines how the subscription's quantity is controlled. Defaults to
              # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
              # directly on the subscription. `initial_quantity` must be provided with this
              # option. Compatible with recurring commits/credits that use POOLED allocation.
              # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
              # user_123) to increment and decrement a subscription quantity, rather than
              # directly providing the quantity. You must use a SEAT_BASED subscription to use a
              # linked recurring credit with an allocation per seat. `seat_config` must be
              # provided with this option.
              quantity_management_mode: nil,
              seat_config: nil,
              starting_at_offset: nil
            )
            end

            sig do
              override.returns(
                {
                  collection_schedule:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol,
                  proration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration,
                  subscription_rate:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate,
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  duration:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration,
                  fiat_credit_type_id: String,
                  initial_quantity: Float,
                  name: String,
                  quantity_management_mode:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::TaggedSymbol,
                  seat_config:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SeatConfig,
                  starting_at_offset:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ADVANCE =
                T.let(
                  :ADVANCE,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )
              ARREARS =
                T.let(
                  :ARREARS,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              end
              attr_accessor :invoice_behavior

              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig do
                params(
                  invoice_behavior:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(invoice_behavior:, is_prorated:)
              end

              sig do
                override.returns(
                  {
                    invoice_behavior:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BILL_IMMEDIATELY =
                  T.let(
                    :BILL_IMMEDIATELY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )
                BILL_ON_NEXT_COLLECTION_DATE =
                  T.let(
                    :BILL_ON_NEXT_COLLECTION_DATE,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              end
              attr_accessor :billing_frequency

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
                  product:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).returns(T.attached_class)
              end
              def self.new(billing_frequency:, product:)
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
                    product:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::Product
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SubscriptionRate::Product,
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

            class Duration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::Duration::Unit::TaggedSymbol
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
            # directly providing the quantity. You must use a SEAT_BASED subscription to use a
            # linked recurring credit with an allocation per seat. `seat_config` must be
            # provided with this option.
            module QuantityManagementMode
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SEAT_BASED =
                T.let(
                  :SEAT_BASED,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::TaggedSymbol
                )
              QUANTITY_ONLY =
                T.let(
                  :QUANTITY_ONLY,
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::QuantityManagementMode::TaggedSymbol
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
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::SeatConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The property name, sent on usage events, that identifies the seat ID associated
              # with the usage event. For example, the property name might be seat_id or
              # user_id. The property must be set as a group key on billable metrics and a
              # presentation/pricing group key on contract products. This allows linked
              # recurring credits with an allocation per seat to be consumed by only one seat's
              # usage.
              sig { returns(String) }
              attr_accessor :seat_group_key

              sig { params(seat_group_key: String).returns(T.attached_class) }
              def self.new(
                # The property name, sent on usage events, that identifies the seat ID associated
                # with the usage event. For example, the property name might be seat_id or
                # user_id. The property must be set as a group key on billable metrics and a
                # presentation/pricing group key on contract products. This allows linked
                # recurring credits with an allocation per seat to be consumed by only one seat's
                # usage.
                seat_group_key:
              )
              end

              sig { override.returns({ seat_group_key: String }) }
              def to_hash
              end
            end

            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
                )
              end
              attr_accessor :unit

              sig { returns(Integer) }
              attr_accessor :value

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::OrSymbol,
                  value: Integer
                ).returns(T.attached_class)
              end
              def self.new(unit:, value:)
              end

              sig do
                override.returns(
                  {
                    unit:
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAYS =
                  T.let(
                    :DAYS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
                  )
                WEEKS =
                  T.let(
                    :WEEKS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
                  )
                MONTHS =
                  T.let(
                    :MONTHS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
                  )
                YEARS =
                  T.let(
                    :YEARS,
                    MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::PackageRetrieveResponse::Data::Subscription::StartingAtOffset::Unit::TaggedSymbol
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
end
