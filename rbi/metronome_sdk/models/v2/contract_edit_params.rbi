# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::ContractEditParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the contract being edited
        sig { returns(String) }
        attr_accessor :contract_id

        # ID of the customer whose contract is being edited
        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V2::ContractEditParams::AddCommit])
          )
        end
        attr_reader :add_commits

        sig do
          params(
            add_commits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCommit::OrHash]
          ).void
        end
        attr_writer :add_commits

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V2::ContractEditParams::AddCredit])
          )
        end
        attr_reader :add_credits

        sig do
          params(
            add_credits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCredit::OrHash]
          ).void
        end
        attr_writer :add_credits

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddDiscount]
            )
          )
        end
        attr_reader :add_discounts

        sig do
          params(
            add_discounts:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddDiscount::OrHash
              ]
          ).void
        end
        attr_writer :add_discounts

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddOverride]
            )
          )
        end
        attr_reader :add_overrides

        sig do
          params(
            add_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddOverride::OrHash
              ]
          ).void
        end
        attr_writer :add_overrides

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration
            )
          )
        end
        attr_reader :add_prepaid_balance_threshold_configuration

        sig do
          params(
            add_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :add_prepaid_balance_threshold_configuration

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddProfessionalService
              ]
            )
          )
        end
        attr_reader :add_professional_services

        sig do
          params(
            add_professional_services:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddProfessionalService::OrHash
              ]
          ).void
        end
        attr_writer :add_professional_services

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddRecurringCommit]
            )
          )
        end
        attr_reader :add_recurring_commits

        sig do
          params(
            add_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::OrHash
              ]
          ).void
        end
        attr_writer :add_recurring_commits

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddRecurringCredit]
            )
          )
        end
        attr_reader :add_recurring_credits

        sig do
          params(
            add_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::OrHash
              ]
          ).void
        end
        attr_writer :add_recurring_credits

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty]
            )
          )
        end
        attr_reader :add_reseller_royalties

        sig do
          params(
            add_reseller_royalties:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::OrHash
              ]
          ).void
        end
        attr_writer :add_reseller_royalties

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddScheduledCharge]
            )
          )
        end
        attr_reader :add_scheduled_charges

        sig do
          params(
            add_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::OrHash
              ]
          ).void
        end
        attr_writer :add_scheduled_charges

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration
            )
          )
        end
        attr_reader :add_spend_threshold_configuration

        sig do
          params(
            add_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :add_spend_threshold_configuration

        # Optional list of
        # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
        # to add to the contract.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::AddSubscription]
            )
          )
        end
        attr_reader :add_subscriptions

        sig do
          params(
            add_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddSubscription::OrHash
              ]
          ).void
        end
        attr_writer :add_subscriptions

        # If true, allows setting the contract end date earlier than the end_timestamp of
        # existing finalized invoices. Finalized invoices will be unchanged; if you want
        # to incorporate the new end date, you can void and regenerate finalized usage
        # invoices. Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_contract_ending_before_finalized_invoice

        sig do
          params(
            allow_contract_ending_before_finalized_invoice: T::Boolean
          ).void
        end
        attr_writer :allow_contract_ending_before_finalized_invoice

        # IDs of commits to archive
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::ArchiveCommit]
            )
          )
        end
        attr_reader :archive_commits

        sig do
          params(
            archive_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCommit::OrHash
              ]
          ).void
        end
        attr_writer :archive_commits

        # IDs of credits to archive
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::ArchiveCredit]
            )
          )
        end
        attr_reader :archive_credits

        sig do
          params(
            archive_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCredit::OrHash
              ]
          ).void
        end
        attr_writer :archive_credits

        # IDs of scheduled charges to archive
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge
              ]
            )
          )
        end
        attr_reader :archive_scheduled_charges

        sig do
          params(
            archive_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge::OrHash
              ]
          ).void
        end
        attr_writer :archive_scheduled_charges

        # IDs of overrides to remove
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::RemoveOverride]
            )
          )
        end
        attr_reader :remove_overrides

        sig do
          params(
            remove_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::RemoveOverride::OrHash
              ]
          ).void
        end
        attr_writer :remove_overrides

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::UpdateCommit]
            )
          )
        end
        attr_reader :update_commits

        sig do
          params(
            update_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::OrHash
              ]
          ).void
        end
        attr_writer :update_commits

        # RFC 3339 timestamp indicating when the contract will end (exclusive).
        sig { returns(T.nilable(Time)) }
        attr_accessor :update_contract_end_date

        # Value to update the contract name to. If not provided, the contract name will
        # remain unchanged.
        sig { returns(T.nilable(String)) }
        attr_accessor :update_contract_name

        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::UpdateCredit]
            )
          )
        end
        attr_reader :update_credits

        sig do
          params(
            update_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::OrHash
              ]
          ).void
        end
        attr_writer :update_credits

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration
            )
          )
        end
        attr_reader :update_prepaid_balance_threshold_configuration

        sig do
          params(
            update_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :update_prepaid_balance_threshold_configuration

        # Edits to these recurring commits will only affect commits whose access schedules
        # has not started. Expired commits, and commits with an active access schedule
        # will remain unchanged.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit
              ]
            )
          )
        end
        attr_reader :update_recurring_commits

        sig do
          params(
            update_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::OrHash
              ]
          ).void
        end
        attr_writer :update_recurring_commits

        # Edits to these recurring credits will only affect credits whose access schedules
        # has not started. Expired credits, and credits with an active access schedule
        # will remain unchanged.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit
              ]
            )
          )
        end
        attr_reader :update_recurring_credits

        sig do
          params(
            update_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::OrHash
              ]
          ).void
        end
        attr_writer :update_recurring_credits

        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge
              ]
            )
          )
        end
        attr_reader :update_scheduled_charges

        sig do
          params(
            update_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::OrHash
              ]
          ).void
        end
        attr_writer :update_scheduled_charges

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration
            )
          )
        end
        attr_reader :update_spend_threshold_configuration

        sig do
          params(
            update_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::OrHash
          ).void
        end
        attr_writer :update_spend_threshold_configuration

        # Optional list of subscriptions to update.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditParams::UpdateSubscription]
            )
          )
        end
        attr_reader :update_subscriptions

        sig do
          params(
            update_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateSubscription::OrHash
              ]
          ).void
        end
        attr_writer :update_subscriptions

        sig do
          params(
            contract_id: String,
            customer_id: String,
            add_commits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCommit::OrHash],
            add_credits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCredit::OrHash],
            add_discounts:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddDiscount::OrHash
              ],
            add_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddOverride::OrHash
              ],
            add_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::OrHash,
            add_professional_services:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddProfessionalService::OrHash
              ],
            add_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::OrHash
              ],
            add_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::OrHash
              ],
            add_reseller_royalties:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::OrHash
              ],
            add_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::OrHash
              ],
            add_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::OrHash,
            add_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddSubscription::OrHash
              ],
            allow_contract_ending_before_finalized_invoice: T::Boolean,
            archive_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCommit::OrHash
              ],
            archive_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCredit::OrHash
              ],
            archive_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge::OrHash
              ],
            remove_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::RemoveOverride::OrHash
              ],
            update_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::OrHash
              ],
            update_contract_end_date: T.nilable(Time),
            update_contract_name: T.nilable(String),
            update_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::OrHash
              ],
            update_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::OrHash,
            update_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::OrHash
              ],
            update_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::OrHash
              ],
            update_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::OrHash
              ],
            update_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::OrHash,
            update_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateSubscription::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the contract being edited
          contract_id:,
          # ID of the customer whose contract is being edited
          customer_id:,
          add_commits: nil,
          add_credits: nil,
          add_discounts: nil,
          add_overrides: nil,
          add_prepaid_balance_threshold_configuration: nil,
          # This field's availability is dependent on your client's configuration.
          add_professional_services: nil,
          add_recurring_commits: nil,
          add_recurring_credits: nil,
          add_reseller_royalties: nil,
          add_scheduled_charges: nil,
          add_spend_threshold_configuration: nil,
          # Optional list of
          # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
          # to add to the contract.
          add_subscriptions: nil,
          # If true, allows setting the contract end date earlier than the end_timestamp of
          # existing finalized invoices. Finalized invoices will be unchanged; if you want
          # to incorporate the new end date, you can void and regenerate finalized usage
          # invoices. Defaults to true.
          allow_contract_ending_before_finalized_invoice: nil,
          # IDs of commits to archive
          archive_commits: nil,
          # IDs of credits to archive
          archive_credits: nil,
          # IDs of scheduled charges to archive
          archive_scheduled_charges: nil,
          # IDs of overrides to remove
          remove_overrides: nil,
          update_commits: nil,
          # RFC 3339 timestamp indicating when the contract will end (exclusive).
          update_contract_end_date: nil,
          # Value to update the contract name to. If not provided, the contract name will
          # remain unchanged.
          update_contract_name: nil,
          update_credits: nil,
          update_prepaid_balance_threshold_configuration: nil,
          # Edits to these recurring commits will only affect commits whose access schedules
          # has not started. Expired commits, and commits with an active access schedule
          # will remain unchanged.
          update_recurring_commits: nil,
          # Edits to these recurring credits will only affect credits whose access schedules
          # has not started. Expired credits, and credits with an active access schedule
          # will remain unchanged.
          update_recurring_credits: nil,
          update_scheduled_charges: nil,
          update_spend_threshold_configuration: nil,
          # Optional list of subscriptions to update.
          update_subscriptions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              add_commits:
                T::Array[MetronomeSDK::V2::ContractEditParams::AddCommit],
              add_credits:
                T::Array[MetronomeSDK::V2::ContractEditParams::AddCredit],
              add_discounts:
                T::Array[MetronomeSDK::V2::ContractEditParams::AddDiscount],
              add_overrides:
                T::Array[MetronomeSDK::V2::ContractEditParams::AddOverride],
              add_prepaid_balance_threshold_configuration:
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration,
              add_professional_services:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddProfessionalService
                ],
              add_recurring_commits:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit
                ],
              add_recurring_credits:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit
                ],
              add_reseller_royalties:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty
                ],
              add_scheduled_charges:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge
                ],
              add_spend_threshold_configuration:
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration,
              add_subscriptions:
                T::Array[MetronomeSDK::V2::ContractEditParams::AddSubscription],
              allow_contract_ending_before_finalized_invoice: T::Boolean,
              archive_commits:
                T::Array[MetronomeSDK::V2::ContractEditParams::ArchiveCommit],
              archive_credits:
                T::Array[MetronomeSDK::V2::ContractEditParams::ArchiveCredit],
              archive_scheduled_charges:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge
                ],
              remove_overrides:
                T::Array[MetronomeSDK::V2::ContractEditParams::RemoveOverride],
              update_commits:
                T::Array[MetronomeSDK::V2::ContractEditParams::UpdateCommit],
              update_contract_end_date: T.nilable(Time),
              update_contract_name: T.nilable(String),
              update_credits:
                T::Array[MetronomeSDK::V2::ContractEditParams::UpdateCredit],
              update_prepaid_balance_threshold_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration,
              update_recurring_commits:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit
                ],
              update_recurring_credits:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit
                ],
              update_scheduled_charges:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge
                ],
              update_spend_threshold_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration,
              update_subscriptions:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateSubscription
                ],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AddCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddCommit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddCommit::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          # commits only one schedule item is allowed and amount must match invoice_schedule
          # total.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule
              )
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::OrHash
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
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig
              )
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::OrSymbol
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
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddCommit::Type::OrSymbol,
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::OrHash,
              amount: Float,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::OrHash,
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::OrHash,
              priority: Float,
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier::OrHash
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
            # Which products the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_tags: nil,
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
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule,
                amount: Float,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration,
                invoice_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: String,
                payment_gate_config:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig,
                priority: Float,
                rate_type:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID =
              T.let(
                :PREPAID,
                MetronomeSDK::V2::ContractEditParams::AddCommit::Type::TaggedSymbol
              )
            POSTPAID =
              T.let(
                :POSTPAID,
                MetronomeSDK::V2::ContractEditParams::AddCommit::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Type::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem
                ]
              )
            end
            attr_accessor :schedule_items

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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem::OrHash
                  ],
                credit_type_id: String
              ).returns(T.attached_class)
            end
            def self.new(schedule_items:, credit_type_id: nil)
            end

            sig do
              override.returns(
                {
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem,
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

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for commit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::HierarchyConfiguration::ChildAccess::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule,
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem::OrHash
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem::OrHash
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem,
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PrecalculatedTaxConfig
                )
              )
            end
            attr_reader :precalculated_tax_config

            sig do
              params(
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
              ).void
            end
            attr_writer :precalculated_tax_config

            # Only applicable if using STRIPE as your payment gateway type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            # optionally payment gate this commit
            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::OrSymbol
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
              # Only applicable if using STRIPE as your payment gateway type.
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PrecalculatedTaxConfig,
                  stripe_config:
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PrecalculatedTaxConfig,
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::TaggedSymbol
                )
              ANROK =
                T.let(
                  :ANROK,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::TaggedSymbol
                )
              PRECALCULATED =
                T.let(
                  :PRECALCULATED,
                  MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCommit::RateType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier,
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

        class AddCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddCredit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Schedule for distributing the credit to the customer.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::OrHash
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

          # Optional configuration for credit hierarchy access control
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          sig do
            params(
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::OrHash,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::OrSymbol,
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier::OrHash
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
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
            specifiers: nil
          )
          end

          sig do
            override.returns(
              {
                access_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule,
                product_id: String,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::OrSymbol,
                specifiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier
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
                  MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem
                ]
              )
            end
            attr_accessor :schedule_items

            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Schedule for distributing the credit to the customer.
            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem::OrHash
                  ],
                credit_type_id: String
              ).returns(T.attached_class)
            end
            def self.new(schedule_items:, credit_type_id: nil)
            end

            sig do
              override.returns(
                {
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem,
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

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for credit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddCredit::HierarchyConfiguration::ChildAccess::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V2::ContractEditParams::AddCredit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddCredit::RateType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier,
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

        class AddDiscount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddDiscount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule)
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::OrHash,
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
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule,
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
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule,
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
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem::OrHash
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
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem::OrHash
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
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem
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
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem,
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

        class AddOverride < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddOverride,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # RFC 3339 timestamp indicating when the override will start applying (inclusive)
          sig { returns(Time) }
          attr_accessor :starting_at

          # tags identifying products whose rates are being overridden
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
          # passing `commit_ids`.
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier
                ]
              )
            )
          end
          attr_reader :override_specifiers

          sig do
            params(
              override_specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::OrHash
                ]
            ).void
          end
          attr_writer :override_specifiers

          # Required for OVERWRITE type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate
              )
            )
          end
          attr_reader :overwrite_rate

          sig do
            params(
              overwrite_rate:
                MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::OrHash
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

          # ID of the product whose rate is being overridden
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
                MetronomeSDK::V2::ContractEditParams::AddOverride::Target::OrSymbol
              )
            )
          end
          attr_reader :target

          sig do
            params(
              target:
                MetronomeSDK::V2::ContractEditParams::AddOverride::Target::OrSymbol
            ).void
          end
          attr_writer :target

          # Required for TIERED type. Must have at least one tier.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Tier
                ]
              )
            )
          end
          attr_reader :tiers

          sig do
            params(
              tiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Tier::OrHash
                ]
            ).void
          end
          attr_writer :tiers

          # Overwrites are prioritized over multipliers and tiered overrides.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::OrSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::OrHash
                ],
              overwrite_rate:
                MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::OrHash,
              priority: Float,
              product_id: String,
              target:
                MetronomeSDK::V2::ContractEditParams::AddOverride::Target::OrSymbol,
              tiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Tier::OrHash
                ],
              type:
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # RFC 3339 timestamp indicating when the override will start applying (inclusive)
            starting_at:,
            # tags identifying products whose rates are being overridden
            applicable_product_tags: nil,
            # RFC 3339 timestamp indicating when the override will stop applying (exclusive)
            ending_before: nil,
            entitled: nil,
            # Indicates whether the override should only apply to commits. Defaults to
            # `false`. If `true`, you can specify relevant commits in `override_specifiers` by
            # passing `commit_ids`.
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
            # ID of the product whose rate is being overridden
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
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier
                  ],
                overwrite_rate:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate,
                priority: Float,
                product_id: String,
                target:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Target::OrSymbol,
                tiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::Tier
                  ],
                type:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol
                )
              )
            end
            attr_reader :billing_frequency

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol
              ).void
            end
            attr_writer :billing_frequency

            # If provided, the override will only apply to the specified commits. Can only be
            # used for commit specific overrides. If not provided, the override will apply to
            # all commits.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :commit_ids

            sig { params(commit_ids: T::Array[String]).void }
            attr_writer :commit_ids

            # A map of group names to values. The override will only apply to line items with
            # the specified presentation group values. Can only be used for multiplier
            # overrides.
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
            # presentation_group_values. If provided, the override will only apply to commits
            # created by the specified recurring credit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_credit_ids

            sig { params(recurring_credit_ids: T::Array[String]).void }
            attr_writer :recurring_credit_ids

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol,
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
              # If provided, the override will only apply to the specified commits. Can only be
              # used for commit specific overrides. If not provided, the override will apply to
              # all commits.
              commit_ids: nil,
              # A map of group names to values. The override will only apply to line items with
              # the specified presentation group values. Can only be used for multiplier
              # overrides.
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
              # presentation_group_values. If provided, the override will only apply to commits
              # created by the specified recurring credit ids.
              recurring_credit_ids: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_frequency:
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol,
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
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::OrSymbol
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
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::Tier::OrHash
                  ]
              ).void
            end
            attr_writer :tiers

            # Required for OVERWRITE type.
            sig do
              params(
                rate_type:
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::OrSymbol,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                quantity: Float,
                tiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::Tier::OrHash
                  ]
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
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::OrSymbol,
                  credit_type_id: String,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::Tier
                    ]
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
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::Tier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :price

              sig { returns(T.nilable(Float)) }
              attr_reader :size

              sig { params(size: Float).void }
              attr_writer :size

              sig do
                params(price: Float, size: Float).returns(T.attached_class)
              end
              def self.new(price:, size: nil)
              end

              sig { override.returns({ price: Float, size: Float }) }
              def to_hash
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Target
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V2::ContractEditParams::AddOverride::Target::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V2::ContractEditParams::AddOverride::Target::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Target::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Tier,
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
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OVERWRITE =
              T.let(
                :OVERWRITE,
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::TaggedSymbol
              )
            MULTIPLIER =
              T.let(
                :MULTIPLIER,
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::TaggedSymbol
              )
            TIERED =
              T.let(
                :TIERED,
                MetronomeSDK::V2::ContractEditParams::AddOverride::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddOverride::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class AddPrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::OrHash
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
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # Specify the amount the balance should be recharged to.
          sig { returns(Float) }
          attr_accessor :recharge_to_amount

          # Specify the threshold amount for the contract. Each time the contract's balance
          # lowers to this amount, a threshold charge will be initiated.
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
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::OrHash,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
            # Specify the threshold amount for the contract. Each time the contract's balance
            # lowers to this amount, a threshold charge will be initiated.
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
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit,
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
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
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
                      MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier,
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
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                )
              )
            end
            attr_reader :precalculated_tax_config

            sig do
              params(
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
              ).void
            end
            attr_writer :precalculated_tax_config

            # Only applicable if using STRIPE as your payment gateway type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
              # Only applicable if using STRIPE as your payment gateway type.
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  stripe_config:
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :invoice_metadata

              sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
              attr_writer :invoice_metadata

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              ANROK =
                T.let(
                  :ANROK,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              PRECALCULATED =
                T.let(
                  :PRECALCULATED,
                  MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class AddProfessionalService < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddProfessionalService,
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

        class AddRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The amount of commit to grant.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          # Defines the length of the access schedule for each created commit/credit. The
          # value represents the number of units. Unit defaults to "PERIODS", where the
          # length of a period is determined by the recurrence_frequency.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration
            )
          end
          attr_reader :commit_duration

          sig do
            params(
              commit_duration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::OrHash
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

          # Optional configuration for recurring credit hierarchy access control
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

          # The amount the customer should be billed for the commit. Not required.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount
              )
            )
          end
          attr_reader :invoice_amount

          sig do
            params(
              invoice_amount:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::OrSymbol
              )
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::OrSymbol
            ).void
          end
          attr_writer :proration

          # Whether the created commits will use the commit rate or list rate
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::OrSymbol
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::OrSymbol
              )
            )
          end
          attr_reader :recurrence_frequency

          sig do
            params(
              recurrence_frequency:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::OrSymbol
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
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          # Attach a subscription to the recurring commit/credit.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig
              )
            )
          end
          attr_reader :subscription_config

          sig do
            params(
              subscription_config:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount::OrHash,
              commit_duration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::OrHash,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::OrHash,
              invoice_amount:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier::OrHash
                ],
              subscription_config:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::OrHash,
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
            # Optional configuration for recurring credit hierarchy access control
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
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount,
                commit_duration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration,
                priority: Float,
                product_id: String,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                ending_before: Time,
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration,
                invoice_amount:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::OrSymbol,
                rate_type:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier
                  ],
                subscription_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig,
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount,
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::OrSymbol
                )
              )
            end
            attr_reader :unit

            sig do
              params(
                unit:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::OrSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(value:, unit: nil)
            end

            sig do
              override.returns(
                {
                  value: Float,
                  unit:
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIODS =
                T.let(
                  :PERIODS,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for recurring credit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Variants
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount,
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::TaggedSymbol
              )
            FIRST =
              T.let(
                :FIRST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::TaggedSymbol
              )
            LAST =
              T.let(
                :LAST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::TaggedSymbol
              )
            FIRST_AND_LAST =
              T.let(
                :FIRST_AND_LAST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier,
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

          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig
              )
            end
            attr_reader :apply_seat_increase_config

            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::OrSymbol
                )
              )
            end
            attr_reader :allocation

            sig do
              params(
                allocation:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::OrSymbol
              ).void
            end
            attr_writer :allocation

            # Attach a subscription to the recurring commit/credit.
            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                subscription_id: String,
                allocation:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
                  subscription_id: String,
                  allocation:
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::OrSymbol
                }
              )
            end
            def to_hash
            end

            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig,
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POOLED =
                T.let(
                  :POOLED,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::SubscriptionConfig::Allocation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class AddRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The amount of commit to grant.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          # Defines the length of the access schedule for each created commit/credit. The
          # value represents the number of units. Unit defaults to "PERIODS", where the
          # length of a period is determined by the recurrence_frequency.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration
            )
          end
          attr_reader :commit_duration

          sig do
            params(
              commit_duration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::OrHash
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

          # Optional configuration for recurring credit hierarchy access control
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::OrSymbol
              )
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::OrSymbol
            ).void
          end
          attr_writer :proration

          # Whether the created commits will use the commit rate or list rate
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::OrSymbol
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::OrSymbol
              )
            )
          end
          attr_reader :recurrence_frequency

          sig do
            params(
              recurrence_frequency:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::OrSymbol
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
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          # Attach a subscription to the recurring commit/credit.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig
              )
            )
          end
          attr_reader :subscription_config

          sig do
            params(
              subscription_config:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount::OrHash,
              commit_duration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::OrHash,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::OrSymbol,
              rate_type:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::OrSymbol,
              recurrence_frequency:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier::OrHash
                ],
              subscription_config:
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::OrHash,
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
            # Optional configuration for recurring credit hierarchy access control
            hierarchy_configuration: nil,
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
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount,
                commit_duration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration,
                priority: Float,
                product_id: String,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                ending_before: Time,
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::OrSymbol,
                rate_type:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier
                  ],
                subscription_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig,
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount,
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::OrSymbol
                )
              )
            end
            attr_reader :unit

            sig do
              params(
                unit:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::OrSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(value:, unit: nil)
            end

            sig do
              override.returns(
                {
                  value: Float,
                  unit:
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIODS =
                T.let(
                  :PERIODS,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for recurring credit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Variants
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::TaggedSymbol
              )
            FIRST =
              T.let(
                :FIRST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::TaggedSymbol
              )
            LAST =
              T.let(
                :LAST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::TaggedSymbol
              )
            FIRST_AND_LAST =
              T.let(
                :FIRST_AND_LAST,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier,
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

          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig
              )
            end
            attr_reader :apply_seat_increase_config

            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash
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
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::OrSymbol
                )
              )
            end
            attr_reader :allocation

            sig do
              params(
                allocation:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::OrSymbol
              ).void
            end
            attr_writer :allocation

            # Attach a subscription to the recurring commit/credit.
            sig do
              params(
                apply_seat_increase_config:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
                subscription_id: String,
                allocation:
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
                  subscription_id: String,
                  allocation:
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::OrSymbol
                }
              )
            end
            def to_hash
            end

            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig,
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
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POOLED =
                T.let(
                  :POOLED,
                  MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::SubscriptionConfig::Allocation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::OrSymbol
            )
          end
          attr_accessor :reseller_type

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
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions
              )
            )
          end
          attr_reader :aws_options

          sig do
            params(
              aws_options:
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions::OrHash
            ).void
          end
          attr_writer :aws_options

          # Use null to indicate that the existing end timestamp should be removed.
          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          sig { returns(T.nilable(Float)) }
          attr_reader :fraction

          sig { params(fraction: Float).void }
          attr_writer :fraction

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions
              )
            )
          end
          attr_reader :gcp_options

          sig do
            params(
              gcp_options:
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions::OrHash
            ).void
          end
          attr_writer :gcp_options

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
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::OrSymbol,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_options:
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions::OrHash,
              ending_before: T.nilable(Time),
              fraction: Float,
              gcp_options:
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions::OrHash,
              netsuite_reseller_id: String,
              reseller_contract_value: Float,
              starting_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            reseller_type:,
            # Must provide at least one of applicable_product_ids or applicable_product_tags.
            applicable_product_ids: nil,
            # Must provide at least one of applicable_product_ids or applicable_product_tags.
            applicable_product_tags: nil,
            aws_options: nil,
            # Use null to indicate that the existing end timestamp should be removed.
            ending_before: nil,
            fraction: nil,
            gcp_options: nil,
            netsuite_reseller_id: nil,
            reseller_contract_value: nil,
            starting_at: nil
          )
          end

          sig do
            override.returns(
              {
                reseller_type:
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::OrSymbol,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                aws_options:
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions,
                ending_before: T.nilable(Time),
                fraction: Float,
                gcp_options:
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions,
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
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS =
              T.let(
                :AWS,
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::TaggedSymbol
              )
            AWS_PRO_SERVICE =
              T.let(
                :AWS_PRO_SERVICE,
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP =
              T.let(
                :GCP,
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP_PRO_SERVICE =
              T.let(
                :GCP_PRO_SERVICE,
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions,
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
                  MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions,
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

        class AddScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule
            )
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::OrHash,
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
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule,
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
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule,
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
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem::OrHash
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
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem::OrHash
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
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem
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
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem,
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

        class AddSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit::OrHash
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
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit::OrHash,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig,
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
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit,
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
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                )
              )
            end
            attr_reader :precalculated_tax_config

            sig do
              params(
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
              ).void
            end
            attr_writer :precalculated_tax_config

            # Only applicable if using STRIPE as your payment gateway type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
              # Only applicable if using STRIPE as your payment gateway type.
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
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  stripe_config:
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :invoice_metadata

              sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
              attr_writer :invoice_metadata

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              ANROK =
                T.let(
                  :ANROK,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              PRECALCULATED =
                T.let(
                  :PRECALCULATED,
                  MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class AddSubscription < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::AddSubscription,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::OrSymbol
            )
          end
          attr_accessor :collection_schedule

          sig { returns(Float) }
          attr_accessor :initial_quantity

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration
            )
          end
          attr_reader :proration

          sig do
            params(
              proration:
                MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::OrHash
            ).void
          end
          attr_writer :proration

          sig do
            returns(
              MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate
            )
          end
          attr_reader :subscription_rate

          sig do
            params(
              subscription_rate:
                MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::OrHash
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

          # A temporary ID used to reference the subscription in recurring commit/credit
          # subscription configs created within the same payload.
          sig { returns(T.nilable(String)) }
          attr_reader :temporary_id

          sig { params(temporary_id: String).void }
          attr_writer :temporary_id

          sig do
            params(
              collection_schedule:
                MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::OrSymbol,
              initial_quantity: Float,
              proration:
                MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::OrHash,
              subscription_rate:
                MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::OrHash,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              ending_before: Time,
              name: String,
              starting_at: Time,
              temporary_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            collection_schedule:,
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::OrSymbol,
                initial_quantity: Float,
                proration:
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration,
                subscription_rate:
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                name: String,
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADVANCE =
              T.let(
                :ADVANCE,
                MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::TaggedSymbol
              )
            ARREARS =
              T.let(
                :ARREARS,
                MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration,
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::OrSymbol
                )
              )
            end
            attr_reader :invoice_behavior

            sig do
              params(
                invoice_behavior:
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::OrSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::OrSymbol,
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
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::OrSymbol,
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
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILL_IMMEDIATELY =
                T.let(
                  :BILL_IMMEDIATELY,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              BILL_ON_NEXT_COLLECTION_DATE =
                T.let(
                  :BILL_ON_NEXT_COLLECTION_DATE,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
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
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Frequency to bill subscription with. Together with product_id, must match
            # existing rate on the rate card.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::OrSymbol
              )
            end
            attr_accessor :billing_frequency

            # Must be subscription type product
            sig { returns(String) }
            attr_accessor :product_id

            sig do
              params(
                billing_frequency:
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::OrSymbol,
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
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::OrSymbol,
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
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class ArchiveCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::ArchiveCommit,
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

        class ArchiveCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::ArchiveCredit,
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

        class ArchiveScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge,
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

        class RemoveOverride < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::RemoveOverride,
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

        class UpdateCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateCommit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :commit_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule
              )
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          # Which products the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applicable_product_ids

          # Which tags the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applicable_product_tags

          # Optional configuration for commit hierarchy access control
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::OrHash
            ).void
          end
          attr_writer :invoice_schedule

          sig { returns(T.nilable(String)) }
          attr_accessor :netsuite_sales_order_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :priority

          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :rollover_fraction

          sig do
            params(
              commit_id: String,
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::OrHash,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::OrHash,
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::OrHash,
              netsuite_sales_order_id: T.nilable(String),
              priority: T.nilable(Float),
              product_id: String,
              rollover_fraction: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            commit_id:,
            access_schedule: nil,
            # Which products the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_tags: nil,
            # Optional configuration for commit hierarchy access control
            hierarchy_configuration: nil,
            invoice_schedule: nil,
            netsuite_sales_order_id: nil,
            priority: nil,
            product_id: nil,
            rollover_fraction: nil
          )
          end

          sig do
            override.returns(
              {
                commit_id: String,
                access_schedule:
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule,
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration,
                invoice_schedule:
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule,
                netsuite_sales_order_id: T.nilable(String),
                priority: T.nilable(Float),
                product_id: String,
                rollover_fraction: T.nilable(Float)
              }
            )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem
                  ]
                )
              )
            end
            attr_reader :add_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :add_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem
                  ]
                )
              )
            end
            attr_reader :remove_schedule_items

            sig do
              params(
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :remove_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem
                  ]
                )
              )
            end
            attr_reader :update_schedule_items

            sig do
              params(
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :update_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              add_schedule_items: nil,
              remove_schedule_items: nil,
              update_schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              sig { returns(Time) }
              attr_accessor :ending_before

              sig { returns(Time) }
              attr_accessor :starting_at

              sig do
                params(
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(amount:, ending_before:, starting_at:)
              end

              sig do
                override.returns(
                  { amount: Float, ending_before: Time, starting_at: Time }
                )
              end
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem,
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

            class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

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
                  id: String,
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                amount: nil,
                ending_before: nil,
                starting_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    ending_before: Time,
                    starting_at: Time
                  }
                )
              end
              def to_hash
              end
            end
          end

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for commit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::HierarchyConfiguration::ChildAccess::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem
                  ]
                )
              )
            end
            attr_reader :add_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :add_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                  ]
                )
              )
            end
            attr_reader :remove_schedule_items

            sig do
              params(
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :remove_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
              )
            end
            attr_reader :update_schedule_items

            sig do
              params(
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :update_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              add_schedule_items: nil,
              remove_schedule_items: nil,
              update_schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Time) }
              attr_accessor :timestamp

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

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
                timestamp:,
                amount: nil,
                quantity: nil,
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

            class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem,
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

            class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              sig { returns(T.nilable(Time)) }
              attr_reader :timestamp

              sig { params(timestamp: Time).void }
              attr_writer :timestamp

              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              sig do
                params(
                  id: String,
                  amount: Float,
                  quantity: Float,
                  timestamp: Time,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                amount: nil,
                quantity: nil,
                timestamp: nil,
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    quantity: Float,
                    timestamp: Time,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class UpdateCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateCredit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :credit_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule
              )
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          # Which products the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applicable_product_ids

          # Which tags the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applicable_product_tags

          # Optional configuration for commit hierarchy access control
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration
              )
            )
          end
          attr_reader :hierarchy_configuration

          sig do
            params(
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::OrHash
            ).void
          end
          attr_writer :hierarchy_configuration

          sig { returns(T.nilable(String)) }
          attr_accessor :netsuite_sales_order_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :priority

          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          sig do
            params(
              credit_id: String,
              access_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::OrHash,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              hierarchy_configuration:
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::OrHash,
              netsuite_sales_order_id: T.nilable(String),
              priority: T.nilable(Float),
              product_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            credit_id:,
            access_schedule: nil,
            # Which products the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_tags: nil,
            # Optional configuration for commit hierarchy access control
            hierarchy_configuration: nil,
            netsuite_sales_order_id: nil,
            priority: nil,
            product_id: nil
          )
          end

          sig do
            override.returns(
              {
                credit_id: String,
                access_schedule:
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule,
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                hierarchy_configuration:
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration,
                netsuite_sales_order_id: T.nilable(String),
                priority: T.nilable(Float),
                product_id: String
              }
            )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem
                  ]
                )
              )
            end
            attr_reader :add_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :add_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem
                  ]
                )
              )
            end
            attr_reader :remove_schedule_items

            sig do
              params(
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :remove_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem
                  ]
                )
              )
            end
            attr_reader :update_schedule_items

            sig do
              params(
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :update_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              add_schedule_items: nil,
              remove_schedule_items: nil,
              update_schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              sig { returns(Time) }
              attr_accessor :ending_before

              sig { returns(Time) }
              attr_accessor :starting_at

              sig do
                params(
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(amount:, ending_before:, starting_at:)
              end

              sig do
                override.returns(
                  { amount: Float, ending_before: Time, starting_at: Time }
                )
              end
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem,
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

            class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

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
                  id: String,
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                amount: nil,
                ending_before: nil,
                starting_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    ending_before: Time,
                    starting_at: Time
                  }
                )
              end
              def to_hash
              end
            end
          end

          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type,
                  MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                )
              )
            end
            attr_accessor :child_access

            # Optional configuration for commit hierarchy access control
            sig do
              params(
                child_access:
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::OrHash,
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(child_access:)
            end

            sig do
              override.returns(
                {
                  child_access:
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
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
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type,
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2
                  )
                end

              class Type < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    type:
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(type:)
                end

                sig do
                  override.returns(
                    {
                      type:
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ALL =
                    T.let(
                      :ALL,
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :contract_ids

                sig do
                  returns(
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    contract_ids: T::Array[String],
                    type:
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(contract_ids:, type:)
                end

                sig do
                  override.returns(
                    {
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT_IDS =
                    T.let(
                      :CONTRACT_IDS,
                      MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdateCredit::HierarchyConfiguration::ChildAccess::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end

        class UpdatePrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit
              )
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash
            ).void
          end
          attr_writer :commit

          # If provided, the threshold, recharge-to amount, and the resulting threshold
          # commit amount will be in terms of this credit type instead of the fiat currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :custom_credit_type_id

          # When set to false, the contract will not be evaluated against the
          # threshold_amount. Toggling to true will result an immediate evaluation,
          # regardless of prior state.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_enabled

          sig { params(is_enabled: T::Boolean).void }
          attr_writer :is_enabled

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig
              )
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # Specify the amount the balance should be recharged to.
          sig { returns(T.nilable(Float)) }
          attr_reader :recharge_to_amount

          sig { params(recharge_to_amount: Float).void }
          attr_writer :recharge_to_amount

          # Specify the threshold amount for the contract. Each time the contract's balance
          # lowers to this amount, a threshold charge will be initiated.
          sig { returns(T.nilable(Float)) }
          attr_reader :threshold_amount

          sig { params(threshold_amount: Float).void }
          attr_writer :threshold_amount

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash,
              custom_credit_type_id: T.nilable(String),
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
              recharge_to_amount: Float,
              threshold_amount: Float
            ).returns(T.attached_class)
          end
          def self.new(
            commit: nil,
            # If provided, the threshold, recharge-to amount, and the resulting threshold
            # commit amount will be in terms of this credit type instead of the fiat currency.
            custom_credit_type_id: nil,
            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            is_enabled: nil,
            payment_gate_config: nil,
            # Specify the amount the balance should be recharged to.
            recharge_to_amount: nil,
            # Specify the threshold amount for the contract. Each time the contract's balance
            # lowers to this amount, a threshold charge will be initiated.
            threshold_amount: nil
          )
          end

          sig do
            override.returns(
              {
                commit:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit,
                custom_credit_type_id: T.nilable(String),
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Which products the threshold commit applies to. If both applicable_product_ids
            # and applicable_product_tags are not provided, the commit applies to all
            # products.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :applicable_product_ids

            # Which tags the threshold commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :applicable_product_tags

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

            # The commit product that will be used to generate the line item for commit
            # payment.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            # Instead, to target usage by product or product tag, pass those values in the
            # body of `specifiers`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier
                  ]
                )
              )
            end
            attr_accessor :specifiers

            sig do
              params(
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                description: String,
                name: String,
                product_id: String,
                specifiers:
                  T.nilable(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
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
              # The commit product that will be used to generate the line item for commit
              # payment.
              product_id: nil,
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown. This field cannot
              # be used together with `applicable_product_ids` or `applicable_product_tags`.
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  description: String,
                  name: String,
                  product_id: String,
                  specifiers:
                    T.nilable(
                      T::Array[
                        MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier,
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
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                )
              )
            end
            attr_reader :precalculated_tax_config

            sig do
              params(
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
              ).void
            end
            attr_writer :precalculated_tax_config

            # Only applicable if using STRIPE as your payment gateway type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
              # Only applicable if using STRIPE as your payment gateway type.
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
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  stripe_config:
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :invoice_metadata

              sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
              attr_writer :invoice_metadata

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              ANROK =
                T.let(
                  :ANROK,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              PRECALCULATED =
                T.let(
                  :PRECALCULATED,
                  MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class UpdateRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :recurring_commit_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount
              )
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount
              )
            )
          end
          attr_reader :invoice_amount

          sig do
            params(
              invoice_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount::OrHash
            ).void
          end
          attr_writer :invoice_amount

          sig do
            params(
              recurring_commit_id: String,
              access_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount::OrHash,
              ending_before: T.nilable(Time),
              invoice_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            recurring_commit_id:,
            access_amount: nil,
            ending_before: nil,
            invoice_amount: nil
          )
          end

          sig do
            override.returns(
              {
                recurring_commit_id: String,
                access_amount:
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount,
                ending_before: T.nilable(Time),
                invoice_amount:
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount
              }
            )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(quantity: Float, unit_price: Float).returns(
                T.attached_class
              )
            end
            def self.new(quantity: nil, unit_price: nil)
            end

            sig { override.returns({ quantity: Float, unit_price: Float }) }
            def to_hash
            end
          end

          class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(quantity: Float, unit_price: Float).returns(
                T.attached_class
              )
            end
            def self.new(quantity: nil, unit_price: nil)
            end

            sig { override.returns({ quantity: Float, unit_price: Float }) }
            def to_hash
            end
          end
        end

        class UpdateRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :recurring_credit_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount
              )
            )
          end
          attr_reader :access_amount

          sig do
            params(
              access_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount::OrHash
            ).void
          end
          attr_writer :access_amount

          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          sig do
            params(
              recurring_credit_id: String,
              access_amount:
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount::OrHash,
              ending_before: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            recurring_credit_id:,
            access_amount: nil,
            ending_before: nil
          )
          end

          sig do
            override.returns(
              {
                recurring_credit_id: String,
                access_amount:
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount,
                ending_before: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(quantity: Float, unit_price: Float).returns(
                T.attached_class
              )
            end
            def self.new(quantity: nil, unit_price: nil)
            end

            sig { override.returns({ quantity: Float, unit_price: Float }) }
            def to_hash
            end
          end
        end

        class UpdateScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :scheduled_charge_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::OrHash
            ).void
          end
          attr_writer :invoice_schedule

          sig { returns(T.nilable(String)) }
          attr_accessor :netsuite_sales_order_id

          sig do
            params(
              scheduled_charge_id: String,
              invoice_schedule:
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::OrHash,
              netsuite_sales_order_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            scheduled_charge_id:,
            invoice_schedule: nil,
            netsuite_sales_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                scheduled_charge_id: String,
                invoice_schedule:
                  MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule,
                netsuite_sales_order_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                  ]
                )
              )
            end
            attr_reader :add_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :add_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                  ]
                )
              )
            end
            attr_reader :remove_schedule_items

            sig do
              params(
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :remove_schedule_items

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
              )
            end
            attr_reader :update_schedule_items

            sig do
              params(
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :update_schedule_items

            sig do
              params(
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              add_schedule_items: nil,
              remove_schedule_items: nil,
              update_schedule_items: nil
            )
            end

            sig do
              override.returns(
                {
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                    ]
                }
              )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Time) }
              attr_accessor :timestamp

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

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
                timestamp:,
                amount: nil,
                quantity: nil,
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

            class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem,
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

            class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              sig { returns(T.nilable(Time)) }
              attr_reader :timestamp

              sig { params(timestamp: Time).void }
              attr_writer :timestamp

              sig { returns(T.nilable(Float)) }
              attr_reader :unit_price

              sig { params(unit_price: Float).void }
              attr_writer :unit_price

              sig do
                params(
                  id: String,
                  amount: Float,
                  quantity: Float,
                  timestamp: Time,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                amount: nil,
                quantity: nil,
                timestamp: nil,
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    quantity: Float,
                    timestamp: Time,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class UpdateSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit
              )
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit::OrHash
            ).void
          end
          attr_writer :commit

          # When set to false, the contract will not be evaluated against the
          # threshold_amount. Toggling to true will result an immediate evaluation,
          # regardless of prior state.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_enabled

          sig { params(is_enabled: T::Boolean).void }
          attr_writer :is_enabled

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig
              )
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::OrHash
            ).void
          end
          attr_writer :payment_gate_config

          # Specify the threshold amount for the contract. Each time the contract's usage
          # hits this amount, a threshold charge will be initiated.
          sig { returns(T.nilable(Float)) }
          attr_reader :threshold_amount

          sig { params(threshold_amount: Float).void }
          attr_writer :threshold_amount

          sig do
            params(
              commit:
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit::OrHash,
              is_enabled: T::Boolean,
              payment_gate_config:
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::OrHash,
              threshold_amount: Float
            ).returns(T.attached_class)
          end
          def self.new(
            commit: nil,
            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            is_enabled: nil,
            payment_gate_config: nil,
            # Specify the threshold amount for the contract. Each time the contract's usage
            # hits this amount, a threshold charge will be initiated.
            threshold_amount: nil
          )
          end

          sig do
            override.returns(
              {
                commit:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig,
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
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

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

            # The commit product that will be used to generate the line item for commit
            # payment.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            sig do
              params(
                description: String,
                name: String,
                product_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              description: nil,
              # Specify the name of the line item for the threshold charge. If left blank, it
              # will default to the commit product name.
              name: nil,
              # The commit product that will be used to generate the line item for commit
              # payment.
              product_id: nil
            )
            end

            sig do
              override.returns(
                { description: String, name: String, product_id: String }
              )
            end
            def to_hash
            end
          end

          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using PRECALCULATED as your tax type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                )
              )
            end
            attr_reader :precalculated_tax_config

            sig do
              params(
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
              ).void
            end
            attr_writer :precalculated_tax_config

            # Only applicable if using STRIPE as your payment gateway type.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                precalculated_tax_config:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                stripe_config:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
              # Only applicable if using STRIPE as your payment gateway type.
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
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                  stripe_config:
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              # your payment type.
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :invoice_metadata

              sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
              attr_writer :invoice_metadata

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                      MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              ANROK =
                T.let(
                  :ANROK,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )
              PRECALCULATED =
                T.let(
                  :PRECALCULATED,
                  MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class UpdateSubscription < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditParams::UpdateSubscription,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :subscription_id

          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          # Quantity changes are applied on the effective date based on the order which they
          # are sent. For example, if I scheduled the quantity to be 12 on May 21 and then
          # scheduled a quantity delta change of -1, the result from that day would be 11.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate
                ]
              )
            )
          end
          attr_reader :quantity_updates

          sig do
            params(
              quantity_updates:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate::OrHash
                ]
            ).void
          end
          attr_writer :quantity_updates

          sig do
            params(
              subscription_id: String,
              ending_before: T.nilable(Time),
              quantity_updates:
                T::Array[
                  MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            subscription_id:,
            ending_before: nil,
            # Quantity changes are applied on the effective date based on the order which they
            # are sent. For example, if I scheduled the quantity to be 12 on May 21 and then
            # scheduled a quantity delta change of -1, the result from that day would be 11.
            quantity_updates: nil
          )
          end

          sig do
            override.returns(
              {
                subscription_id: String,
                ending_before: T.nilable(Time),
                quantity_updates:
                  T::Array[
                    MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate
                  ]
              }
            )
          end
          def to_hash
          end

          class QuantityUpdate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :starting_at

            # The new quantity for the subscription. Must be provided if quantity_delta is not
            # provided. Must be non-negative.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            # The delta to add to the subscription's quantity. Must be provided if quantity is
            # not provided. Can't be zero. It also can't result in a negative quantity on the
            # subscription.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity_delta

            sig { params(quantity_delta: Float).void }
            attr_writer :quantity_delta

            sig do
              params(
                starting_at: Time,
                quantity: Float,
                quantity_delta: Float
              ).returns(T.attached_class)
            end
            def self.new(
              starting_at:,
              # The new quantity for the subscription. Must be provided if quantity_delta is not
              # provided. Must be non-negative.
              quantity: nil,
              # The delta to add to the subscription's quantity. Must be provided if quantity is
              # not provided. Can't be zero. It also can't result in a negative quantity on the
              # subscription.
              quantity_delta: nil
            )
            end

            sig do
              override.returns(
                { starting_at: Time, quantity: Float, quantity_delta: Float }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
