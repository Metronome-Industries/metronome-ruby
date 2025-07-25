# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractGetEditHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::ContractGetEditHistoryResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit
                ]
              )
            )
          end
          attr_reader :add_commits

          sig do
            params(
              add_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::OrHash
                ]
            ).void
          end
          attr_writer :add_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit
                ]
              )
            )
          end
          attr_reader :add_credits

          sig do
            params(
              add_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::OrHash
                ]
            ).void
          end
          attr_writer :add_credits

          sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
          attr_reader :add_discounts

          sig do
            params(add_discounts: T::Array[MetronomeSDK::Discount::OrHash]).void
          end
          attr_writer :add_discounts

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride
                ]
              )
            )
          end
          attr_reader :add_overrides

          sig do
            params(
              add_overrides:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OrHash
                ]
            ).void
          end
          attr_writer :add_overrides

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration
              )
            )
          end
          attr_reader :add_prepaid_balance_threshold_configuration

          sig do
            params(
              add_prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :add_prepaid_balance_threshold_configuration

          sig { returns(T.nilable(T::Array[MetronomeSDK::ProService])) }
          attr_reader :add_pro_services

          sig do
            params(
              add_pro_services: T::Array[MetronomeSDK::ProService::OrHash]
            ).void
          end
          attr_writer :add_pro_services

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit
                ]
              )
            )
          end
          attr_reader :add_recurring_commits

          sig do
            params(
              add_recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::OrHash
                ]
            ).void
          end
          attr_writer :add_recurring_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit
                ]
              )
            )
          end
          attr_reader :add_recurring_credits

          sig do
            params(
              add_recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::OrHash
                ]
            ).void
          end
          attr_writer :add_recurring_credits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty
                ]
              )
            )
          end
          attr_reader :add_reseller_royalties

          sig do
            params(
              add_reseller_royalties:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::OrHash
                ]
            ).void
          end
          attr_writer :add_reseller_royalties

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge
                ]
              )
            )
          end
          attr_reader :add_scheduled_charges

          sig do
            params(
              add_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::OrHash
                ]
            ).void
          end
          attr_writer :add_scheduled_charges

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration
              )
            )
          end
          attr_reader :add_spend_threshold_configuration

          sig do
            params(
              add_spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :add_spend_threshold_configuration

          # List of subscriptions on the contract.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription
                ]
              )
            )
          end
          attr_reader :add_subscriptions

          sig do
            params(
              add_subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::OrHash
                ]
            ).void
          end
          attr_writer :add_subscriptions

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter
                ]
              )
            )
          end
          attr_reader :add_usage_filters

          sig do
            params(
              add_usage_filters:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter::OrHash
                ]
            ).void
          end
          attr_writer :add_usage_filters

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit
                ]
              )
            )
          end
          attr_reader :archive_commits

          sig do
            params(
              archive_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit::OrHash
                ]
            ).void
          end
          attr_writer :archive_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit
                ]
              )
            )
          end
          attr_reader :archive_credits

          sig do
            params(
              archive_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit::OrHash
                ]
            ).void
          end
          attr_writer :archive_credits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge
                ]
              )
            )
          end
          attr_reader :archive_scheduled_charges

          sig do
            params(
              archive_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge::OrHash
                ]
            ).void
          end
          attr_writer :archive_scheduled_charges

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride
                ]
              )
            )
          end
          attr_reader :remove_overrides

          sig do
            params(
              remove_overrides:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride::OrHash
                ]
            ).void
          end
          attr_writer :remove_overrides

          sig { returns(T.nilable(Time)) }
          attr_reader :timestamp

          sig { params(timestamp: Time).void }
          attr_writer :timestamp

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit
                ]
              )
            )
          end
          attr_reader :update_commits

          sig do
            params(
              update_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::OrHash
                ]
            ).void
          end
          attr_writer :update_commits

          sig { returns(T.nilable(Time)) }
          attr_reader :update_contract_end_date

          sig { params(update_contract_end_date: Time).void }
          attr_writer :update_contract_end_date

          # Value to update the contract name to. If not provided, the contract name will
          # remain unchanged.
          sig { returns(T.nilable(String)) }
          attr_accessor :update_contract_name

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit
                ]
              )
            )
          end
          attr_reader :update_credits

          sig do
            params(
              update_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::OrHash
                ]
            ).void
          end
          attr_writer :update_credits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount
                ]
              )
            )
          end
          attr_reader :update_discounts

          sig do
            params(
              update_discounts:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::OrHash
                ]
            ).void
          end
          attr_writer :update_discounts

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration
              )
            )
          end
          attr_reader :update_prepaid_balance_threshold_configuration

          sig do
            params(
              update_prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :update_prepaid_balance_threshold_configuration

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit
                ]
              )
            )
          end
          attr_reader :update_recurring_commits

          sig do
            params(
              update_recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::OrHash
                ]
            ).void
          end
          attr_writer :update_recurring_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit
                ]
              )
            )
          end
          attr_reader :update_recurring_credits

          sig do
            params(
              update_recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::OrHash
                ]
            ).void
          end
          attr_writer :update_recurring_credits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice
                ]
              )
            )
          end
          attr_reader :update_refund_invoices

          sig do
            params(
              update_refund_invoices:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice::OrHash
                ]
            ).void
          end
          attr_writer :update_refund_invoices

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge
                ]
              )
            )
          end
          attr_reader :update_scheduled_charges

          sig do
            params(
              update_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::OrHash
                ]
            ).void
          end
          attr_writer :update_scheduled_charges

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration
              )
            )
          end
          attr_reader :update_spend_threshold_configuration

          sig do
            params(
              update_spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :update_spend_threshold_configuration

          # Optional list of subscriptions to update.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription
                ]
              )
            )
          end
          attr_reader :update_subscriptions

          sig do
            params(
              update_subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::OrHash
                ]
            ).void
          end
          attr_writer :update_subscriptions

          sig do
            params(
              id: String,
              add_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::OrHash
                ],
              add_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::OrHash
                ],
              add_discounts: T::Array[MetronomeSDK::Discount::OrHash],
              add_overrides:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OrHash
                ],
              add_prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::OrHash,
              add_pro_services: T::Array[MetronomeSDK::ProService::OrHash],
              add_recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::OrHash
                ],
              add_recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::OrHash
                ],
              add_reseller_royalties:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::OrHash
                ],
              add_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::OrHash
                ],
              add_spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::OrHash,
              add_subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::OrHash
                ],
              add_usage_filters:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter::OrHash
                ],
              archive_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit::OrHash
                ],
              archive_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit::OrHash
                ],
              archive_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge::OrHash
                ],
              remove_overrides:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride::OrHash
                ],
              timestamp: Time,
              update_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::OrHash
                ],
              update_contract_end_date: Time,
              update_contract_name: T.nilable(String),
              update_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::OrHash
                ],
              update_discounts:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::OrHash
                ],
              update_prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::OrHash,
              update_recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::OrHash
                ],
              update_recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::OrHash
                ],
              update_refund_invoices:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice::OrHash
                ],
              update_scheduled_charges:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::OrHash
                ],
              update_spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::OrHash,
              update_subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            add_commits: nil,
            add_credits: nil,
            add_discounts: nil,
            add_overrides: nil,
            add_prepaid_balance_threshold_configuration: nil,
            add_pro_services: nil,
            add_recurring_commits: nil,
            add_recurring_credits: nil,
            add_reseller_royalties: nil,
            add_scheduled_charges: nil,
            add_spend_threshold_configuration: nil,
            # List of subscriptions on the contract.
            add_subscriptions: nil,
            add_usage_filters: nil,
            archive_commits: nil,
            archive_credits: nil,
            archive_scheduled_charges: nil,
            remove_overrides: nil,
            timestamp: nil,
            update_commits: nil,
            update_contract_end_date: nil,
            # Value to update the contract name to. If not provided, the contract name will
            # remain unchanged.
            update_contract_name: nil,
            update_credits: nil,
            update_discounts: nil,
            update_prepaid_balance_threshold_configuration: nil,
            update_recurring_commits: nil,
            update_recurring_credits: nil,
            update_refund_invoices: nil,
            update_scheduled_charges: nil,
            update_spend_threshold_configuration: nil,
            # Optional list of subscriptions to update.
            update_subscriptions: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                add_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit
                  ],
                add_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit
                  ],
                add_discounts: T::Array[MetronomeSDK::Discount],
                add_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride
                  ],
                add_prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration,
                add_pro_services: T::Array[MetronomeSDK::ProService],
                add_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit
                  ],
                add_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit
                  ],
                add_reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty
                  ],
                add_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge
                  ],
                add_spend_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration,
                add_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription
                  ],
                add_usage_filters:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter
                  ],
                archive_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit
                  ],
                archive_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit
                  ],
                archive_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge
                  ],
                remove_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride
                  ],
                timestamp: Time,
                update_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit
                  ],
                update_contract_end_date: Time,
                update_contract_name: T.nilable(String),
                update_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit
                  ],
                update_discounts:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount
                  ],
                update_prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration,
                update_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit
                  ],
                update_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit
                  ],
                update_refund_invoices:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice
                  ],
                update_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge
                  ],
                update_spend_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration,
                update_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription
                  ]
              }
            )
          end
          def to_hash
          end

          class AddCommit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits purposed with
            # this commit.
            sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
            attr_reader :access_schedule

            sig do
              params(
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash
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

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Optional configuration for commit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            # The schedule that the customer will be invoiced for this commit.
            sig { returns(T.nilable(MetronomeSDK::SchedulePointInTime)) }
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::OrSymbol
              ).void
            end
            attr_writer :rate_type

            sig { returns(T.nilable(Float)) }
            attr_reader :rollover_fraction

            sig { params(rollover_fraction: Float).void }
            attr_writer :rollover_fraction

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :salesforce_opportunity_id

            sig { params(salesforce_opportunity_id: String).void }
            attr_writer :salesforce_opportunity_id

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product::OrHash,
                type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::OrSymbol,
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::OrHash,
                invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::OrSymbol,
                rollover_fraction: Float,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Specifier::OrHash
                  ]
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
              description: nil,
              # Optional configuration for commit hierarchy access control
              hierarchy_configuration: nil,
              # The schedule that the customer will be invoiced for this commit.
              invoice_schedule: nil,
              name: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_sales_order_id: nil,
              # If multiple credits or commits are applicable, the one with the lower priority
              # will apply first.
              priority: nil,
              rate_type: nil,
              rollover_fraction: nil,
              # This field's availability is dependent on your client's configuration.
              salesforce_opportunity_id: nil,
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
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product,
                  type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::TaggedSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration,
                  invoice_schedule: MetronomeSDK::SchedulePointInTime,
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::TaggedSymbol,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID =
                T.let(
                  :PREPAID,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::TaggedSymbol
                )
              POSTPAID =
                T.let(
                  :POSTPAID,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for commit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::HierarchyConfiguration::ChildAccess::Variants
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Specifier,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits.
            sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
            attr_reader :access_schedule

            sig do
              params(
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash
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

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Optional configuration for recurring credit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :salesforce_opportunity_id

            sig { params(salesforce_opportunity_id: String).void }
            attr_writer :salesforce_opportunity_id

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product::OrHash,
                type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type::OrSymbol,
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::OrHash,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Specifier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              type:,
              # The schedule that the customer will gain access to the credits.
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              description: nil,
              # Optional configuration for recurring credit hierarchy access control
              hierarchy_configuration: nil,
              name: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_sales_order_id: nil,
              # If multiple credits or commits are applicable, the one with the lower priority
              # will apply first.
              priority: nil,
              # This field's availability is dependent on your client's configuration.
              salesforce_opportunity_id: nil,
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
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product,
                  type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type::TaggedSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration,
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for recurring credit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::HierarchyConfiguration::ChildAccess::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Specifier,
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

          class AddOverride < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

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

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier
                  ]
                )
              )
            end
            attr_reader :override_specifiers

            sig do
              params(
                override_specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::OrHash
                  ]
              ).void
            end
            attr_writer :override_specifiers

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier
                  ]
                )
              )
            end
            attr_reader :override_tiers

            sig do
              params(
                override_tiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier::OrHash
                  ]
              ).void
            end
            attr_writer :override_tiers

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate
                )
              )
            end
            attr_reader :overwrite_rate

            sig do
              params(
                overwrite_rate:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::OrHash
              ).void
            end
            attr_writer :overwrite_rate

            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product
                )
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::TaggedSymbol
                )
              )
            end
            attr_reader :target

            sig do
              params(
                target:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::OrSymbol
              ).void
            end
            attr_writer :target

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                id: String,
                starting_at: Time,
                applicable_product_tags: T::Array[String],
                ending_before: Time,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::OrHash
                  ],
                override_tiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier::OrHash
                  ],
                overwrite_rate:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product::OrHash,
                target:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::OrSymbol,
                type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              starting_at:,
              applicable_product_tags: nil,
              ending_before: nil,
              entitled: nil,
              is_commit_specific: nil,
              multiplier: nil,
              override_specifiers: nil,
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
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier
                    ],
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier
                    ],
                  overwrite_rate:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product,
                  target:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::TaggedSymbol,
                  type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :billing_frequency

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol
                ).void
              end
              attr_writer :billing_frequency

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :commit_ids

              sig { params(commit_ids: T::Array[String]).void }
              attr_writer :commit_ids

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
              attr_reader :recurring_commit_ids

              sig { params(recurring_commit_ids: T::Array[String]).void }
              attr_writer :recurring_commit_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :recurring_credit_ids

              sig { params(recurring_credit_ids: T::Array[String]).void }
              attr_writer :recurring_credit_ids

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String],
                  recurring_credit_ids: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                billing_frequency: nil,
                commit_ids: nil,
                presentation_group_values: nil,
                pricing_group_values: nil,
                product_id: nil,
                product_tags: nil,
                recurring_commit_ids: nil,
                recurring_credit_ids: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol,
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier,
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

            class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

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

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::OrSymbol,
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Tier::OrHash]
                ).returns(T.attached_class)
              end
              def self.new(
                rate_type:,
                credit_type: nil,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol,
                    credit_type: MetronomeSDK::CreditTypeData,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OVERWRITE =
                T.let(
                  :OVERWRITE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
                )
              MULTIPLIER =
                T.let(
                  :MULTIPLIER,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier
                    ]
                  )
                )
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using PRECALCULATED as your tax type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                  )
                )
              end
              attr_reader :precalculated_tax_config

              sig do
                params(
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
                ).void
              end
              attr_writer :precalculated_tax_config

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    precalculated_tax_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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

                sig do
                  override.returns({ tax_amount: Float, tax_name: String })
                end
                def to_hash
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                ANROK =
                  T.let(
                    :ANROK,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                PRECALCULATED =
                  T.let(
                    :PRECALCULATED,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class AddRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            # Will be passed down to the individual commits
            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract::OrHash
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

            # Optional configuration for recurring credit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            # The amount the customer should be billed for the commit. Not required.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount
                )
              )
            end
            attr_reader :invoice_amount

            sig do
              params(
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::OrSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::OrSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::OrSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract::OrHash,
                description: String,
                ending_before: Time,
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::OrHash,
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount::OrHash,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Specifier::OrHash
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
              # Optional configuration for recurring credit hierarchy access control
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::TaggedSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration,
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Specifier
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for recurring credit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::HierarchyConfiguration::ChildAccess::Variants
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Specifier,
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

          class AddRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            # Will be passed down to the individual commits
            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract::OrHash
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

            # Optional configuration for recurring credit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::OrSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::OrSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::OrSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract::OrHash,
                description: String,
                ending_before: Time,
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::OrHash,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Specifier::OrHash
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
              # Optional configuration for recurring credit hierarchy access control
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::TaggedSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Specifier
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for recurring credit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::HierarchyConfiguration::ChildAccess::Variants
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Specifier,
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

          class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
              )
            end
            attr_accessor :reseller_type

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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::OrSymbol,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
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
              applicable_product_ids: nil,
              applicable_product_tags: nil,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS =
                T.let(
                  :AWS,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
                )
              AWS_PRO_SERVICE =
                T.let(
                  :AWS_PRO_SERVICE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP =
                T.let(
                  :GCP,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP_PRO_SERVICE =
                T.let(
                  :GCP_PRO_SERVICE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class AddScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product::OrHash
              ).void
            end
            attr_writer :product

            sig { returns(MetronomeSDK::SchedulePointInTime) }
            attr_reader :schedule

            sig do
              params(schedule: MetronomeSDK::SchedulePointInTime::OrHash).void
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
                id: String,
                product:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product::OrHash,
                schedule: MetronomeSDK::SchedulePointInTime::OrHash,
                name: String,
                netsuite_sales_order_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
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
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product,
                  schedule: MetronomeSDK::SchedulePointInTime,
                  name: String,
                  netsuite_sales_order_id: String
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product,
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
          end

          class AddSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::Commit,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using PRECALCULATED as your tax type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                  )
                )
              end
              attr_reader :precalculated_tax_config

              sig do
                params(
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
                ).void
              end
              attr_writer :precalculated_tax_config

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    precalculated_tax_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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

                sig do
                  override.returns({ tax_amount: Float, tax_name: String })
                end
                def to_hash
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                ANROK =
                  T.let(
                    :ANROK,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                PRECALCULATED =
                  T.let(
                    :PRECALCULATED,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::TaggedSymbol
              )
            end
            attr_accessor :collection_schedule

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::OrHash
              ).void
            end
            attr_writer :proration

            # List of quantity schedule items for the subscription. Only includes the current
            # quantity and future quantity changes.
            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule
                ]
              )
            end
            attr_accessor :quantity_schedule

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate
              )
            end
            attr_reader :subscription_rate

            sig do
              params(
                subscription_rate:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::OrSymbol,
                proration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::OrHash,
                quantity_schedule:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule::OrHash
                  ],
                starting_at: Time,
                subscription_rate:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::OrHash,
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
              # List of quantity schedule items for the subscription. Only includes the current
              # quantity and future quantity changes.
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::TaggedSymbol,
                  proration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration,
                  quantity_schedule:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule
                    ],
                  starting_at: Time,
                  subscription_rate:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ADVANCE =
                T.let(
                  :ADVANCE,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::TaggedSymbol
                )
              ARREARS =
                T.let(
                  :ARREARS,
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              end
              attr_accessor :invoice_behavior

              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig do
                params(
                  invoice_behavior:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(invoice_behavior:, is_prorated:)
              end

              sig do
                override.returns(
                  {
                    invoice_behavior:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BILL_IMMEDIATELY =
                  T.let(
                    :BILL_IMMEDIATELY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                  )
                BILL_ON_NEXT_COLLECTION_DATE =
                  T.let(
                    :BILL_ON_NEXT_COLLECTION_DATE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              end
              attr_accessor :billing_frequency

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::OrSymbol,
                  product:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product::OrHash
                ).returns(T.attached_class)
              end
              def self.new(billing_frequency:, product:)
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
                    product:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product,
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

          class AddUsageFilter < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :group_key

            sig { returns(T::Array[String]) }
            attr_accessor :group_values

            # This will match contract starting_at value if usage filter is active from the
            # beginning of the contract.
            sig { returns(Time) }
            attr_accessor :starting_at

            # This will match contract ending_before value if usage filter is active until the
            # end of the contract. It will be undefined if the contract is open-ended.
            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              params(
                group_key: String,
                group_values: T::Array[String],
                starting_at: Time,
                ending_before: Time
              ).returns(T.attached_class)
            end
            def self.new(
              group_key:,
              group_values:,
              # This will match contract starting_at value if usage filter is active from the
              # beginning of the contract.
              starting_at:,
              # This will match contract ending_before value if usage filter is active until the
              # end of the contract. It will be undefined if the contract is open-ended.
              ending_before: nil
            )
            end

            sig do
              override.returns(
                {
                  group_key: String,
                  group_values: T::Array[String],
                  starting_at: Time,
                  ending_before: Time
                }
              )
            end
            def to_hash
            end
          end

          class ArchiveCommit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule
                )
              )
            end
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_accessor :netsuite_sales_order_id

            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :rollover_fraction

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::Specifier
                  ]
                )
              )
            end
            attr_accessor :specifiers

            sig do
              params(
                id: String,
                access_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::OrHash,
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::OrHash,
                invoice_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::OrHash,
                name: String,
                netsuite_sales_order_id: T.nilable(String),
                product_id: String,
                rollover_fraction: T.nilable(Float),
                specifiers:
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::Specifier::OrHash
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
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
              name: nil,
              netsuite_sales_order_id: nil,
              product_id: nil,
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
                  id: String,
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule,
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration,
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule,
                  name: String,
                  netsuite_sales_order_id: T.nilable(String),
                  product_id: String,
                  rollover_fraction: T.nilable(Float),
                  specifiers:
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::Specifier
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              attr_reader :add_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :add_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              attr_reader :remove_schedule_items

              sig do
                params(
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :remove_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              attr_reader :update_schedule_items

              sig do
                params(
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :update_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem,
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

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(T.nilable(Float)) }
                attr_reader :amount

                sig { params(amount: Float).void }
                attr_writer :amount

                # RFC 3339 timestamp (exclusive)
                sig { returns(T.nilable(Time)) }
                attr_reader :ending_before

                sig { params(ending_before: Time).void }
                attr_writer :ending_before

                # RFC 3339 timestamp (inclusive)
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
                  # RFC 3339 timestamp (exclusive)
                  ending_before: nil,
                  # RFC 3339 timestamp (inclusive)
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for commit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::HierarchyConfiguration::ChildAccess::Variants
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              attr_reader :add_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :add_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              attr_reader :remove_schedule_items

              sig do
                params(
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :remove_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              attr_reader :update_schedule_items

              sig do
                params(
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :update_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem,
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

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::Specifier,
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

          class UpdateCredit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::OrHash
              ).void
            end
            attr_writer :access_schedule

            # Optional configuration for credit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_accessor :netsuite_sales_order_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :rollover_fraction

            sig do
              params(
                id: String,
                access_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::OrHash,
                hierarchy_configuration:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::OrHash,
                name: String,
                netsuite_sales_order_id: T.nilable(String),
                rollover_fraction: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              access_schedule: nil,
              # Optional configuration for credit hierarchy access control
              hierarchy_configuration: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration,
                  name: String,
                  netsuite_sales_order_id: T.nilable(String),
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              attr_reader :add_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :add_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              attr_reader :remove_schedule_items

              sig do
                params(
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :remove_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              attr_reader :update_schedule_items

              sig do
                params(
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :update_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem,
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

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(T.nilable(Float)) }
                attr_reader :amount

                sig { params(amount: Float).void }
                attr_writer :amount

                # RFC 3339 timestamp (exclusive)
                sig { returns(T.nilable(Time)) }
                attr_reader :ending_before

                sig { params(ending_before: Time).void }
                attr_writer :ending_before

                # RFC 3339 timestamp (inclusive)
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
                  # RFC 3339 timestamp (exclusive)
                  ending_before: nil,
                  # RFC 3339 timestamp (inclusive)
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for credit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
                    )
                  end

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NONE =
                      T.let(
                        :NONE,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::HierarchyConfiguration::ChildAccess::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end
          end

          class UpdateDiscount < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # Must provide either schedule_items or recurring_schedule.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule
                )
              )
            end
            attr_reader :schedule

            sig do
              params(
                schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::OrHash
              ).void
            end
            attr_writer :schedule

            sig do
              params(
                id: String,
                custom_fields: T::Hash[Symbol, String],
                name: String,
                netsuite_sales_order_id: String,
                schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              custom_fields: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              # Must provide either schedule_items or recurring_schedule.
              schedule: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String,
                  schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule
                }
              )
            end
            def to_hash
            end

            class Schedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Defaults to USD if not passed. Only USD is supported at this time.
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule
                  )
                )
              end
              attr_reader :recurring_schedule

              sig do
                params(
                  recurring_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::OrHash
                ).void
              end
              attr_writer :recurring_schedule

              # Either provide amount or provide both unit_price and quantity.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem
                    ]
                  )
                )
              end
              attr_reader :schedule_items

              sig do
                params(
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :schedule_items

              # Must provide either schedule_items or recurring_schedule.
              sig do
                params(
                  credit_type_id: String,
                  recurring_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::OrHash,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Defaults to USD if not passed. Only USD is supported at this time.
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                end
                attr_accessor :amount_distribution

                # RFC 3339 timestamp (exclusive).
                sig { returns(Time) }
                attr_accessor :ending_before

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol,
                      ending_before: Time,
                      frequency:
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  DIVIDED =
                    T.let(
                      :DIVIDED,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    )
                  DIVIDED_ROUNDED =
                    T.let(
                      :DIVIDED_ROUNDED,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    )
                  EACH =
                    T.let(
                      :EACH,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MONTHLY =
                    T.let(
                      :MONTHLY,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    )
                  QUARTERLY =
                    T.let(
                      :QUARTERLY,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    )
                  SEMI_ANNUAL =
                    T.let(
                      :SEMI_ANNUAL,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    )
                  ANNUAL =
                    T.let(
                      :ANNUAL,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    )
                  WEEKLY =
                    T.let(
                      :WEEKLY,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem,
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

          class UpdatePrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit
                )
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig
                )
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash,
                custom_credit_type_id: T.nilable(String),
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit,
                  custom_credit_type_id: T.nilable(String),
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit,
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
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
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
                          MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using PRECALCULATED as your tax type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                  )
                )
              end
              attr_reader :precalculated_tax_config

              sig do
                params(
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
                ).void
              end
              attr_writer :precalculated_tax_config

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    precalculated_tax_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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

                sig do
                  override.returns({ tax_amount: Float, tax_name: String })
                end
                def to_hash
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                ANROK =
                  T.let(
                    :ANROK,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                PRECALCULATED =
                  T.let(
                    :PRECALCULATED,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount
                )
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount
                )
              )
            end
            attr_reader :invoice_amount

            sig do
              params(
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount::OrHash
              ).void
            end
            attr_writer :invoice_amount

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount::OrHash,
                ending_before: Time,
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              access_amount: nil,
              ending_before: nil,
              invoice_amount: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount,
                  ending_before: Time,
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount
                )
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount::OrHash,
                ending_before: Time
              ).returns(T.attached_class)
            end
            def self.new(id:, access_amount: nil, ending_before: nil)
            end

            sig do
              override.returns(
                {
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount,
                  ending_before: Time
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount,
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

          class UpdateRefundInvoice < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :date

            sig { returns(String) }
            attr_accessor :invoice_id

            sig do
              params(date: Time, invoice_id: String).returns(T.attached_class)
            end
            def self.new(date:, invoice_id:)
            end

            sig { override.returns({ date: Time, invoice_id: String }) }
            def to_hash
            end
          end

          class UpdateScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule
                )
              )
            end
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_accessor :netsuite_sales_order_id

            sig do
              params(
                id: String,
                invoice_schedule:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::OrHash,
                name: String,
                netsuite_sales_order_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              invoice_schedule: nil,
              name: nil,
              netsuite_sales_order_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule,
                  name: String,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              attr_reader :add_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :add_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              attr_reader :remove_schedule_items

              sig do
                params(
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :remove_schedule_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              attr_reader :update_schedule_items

              sig do
                params(
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :update_schedule_items

              sig do
                params(
                  add_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                    ],
                  remove_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                    ],
                  update_schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem,
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem,
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::Commit
                )
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig
                )
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::Commit,
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using PRECALCULATED as your tax type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig
                  )
                )
              end
              attr_reader :precalculated_tax_config

              sig do
                params(
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
                ).void
              end
              attr_writer :precalculated_tax_config

              # Only applicable if using STRIPE as your payment gateway type.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  precalculated_tax_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    precalculated_tax_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig,
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

                sig do
                  override.returns({ tax_amount: Float, tax_name: String })
                end
                def to_hash
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                ANROK =
                  T.let(
                    :ANROK,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                PRECALCULATED =
                  T.let(
                    :PRECALCULATED,
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate
                  ]
                )
              )
            end
            attr_reader :quantity_updates

            sig do
              params(
                quantity_updates:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate::OrHash
                  ]
              ).void
            end
            attr_writer :quantity_updates

            sig do
              params(
                id: String,
                ending_before: Time,
                quantity_updates:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(id:, ending_before: nil, quantity_updates: nil)
            end

            sig do
              override.returns(
                {
                  id: String,
                  ending_before: Time,
                  quantity_updates:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate
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
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

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
              def self.new(starting_at:, quantity: nil, quantity_delta: nil)
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
end
