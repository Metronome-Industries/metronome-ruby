# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::ContractEditResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::Models::V2::ContractEditResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: MetronomeSDK::Models::V2::ContractEditResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: MetronomeSDK::Models::V2::ContractEditResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V2::ContractEditResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V2::ContractEditResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit
              )
            )
          end
          attr_reader :edit

          sig do
            params(
              edit:
                MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::OrHash
            ).void
          end
          attr_writer :edit

          sig do
            params(
              id: String,
              edit:
                MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, edit: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                edit: MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit
              }
            )
          end
          def to_hash
          end

          class Edit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit
                  ]
                )
              )
            end
            attr_reader :add_commits

            sig do
              params(
                add_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::OrHash
                  ]
              ).void
            end
            attr_writer :add_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit
                  ]
                )
              )
            end
            attr_reader :add_credits

            sig do
              params(
                add_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::OrHash
                  ]
              ).void
            end
            attr_writer :add_credits

            sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
            attr_reader :add_discounts

            sig do
              params(
                add_discounts: T::Array[MetronomeSDK::Discount::OrHash]
              ).void
            end
            attr_writer :add_discounts

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride
                  ]
                )
              )
            end
            attr_reader :add_overrides

            sig do
              params(
                add_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OrHash
                  ]
              ).void
            end
            attr_writer :add_overrides

            sig do
              returns(
                T.nilable(MetronomeSDK::PrepaidBalanceThresholdConfigurationV2)
              )
            end
            attr_reader :add_prepaid_balance_threshold_configuration

            sig do
              params(
                add_prepaid_balance_threshold_configuration:
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit
                  ]
                )
              )
            end
            attr_reader :add_recurring_commits

            sig do
              params(
                add_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::OrHash
                  ]
              ).void
            end
            attr_writer :add_recurring_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit
                  ]
                )
              )
            end
            attr_reader :add_recurring_credits

            sig do
              params(
                add_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::OrHash
                  ]
              ).void
            end
            attr_writer :add_recurring_credits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty
                  ]
                )
              )
            end
            attr_reader :add_reseller_royalties

            sig do
              params(
                add_reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::OrHash
                  ]
              ).void
            end
            attr_writer :add_reseller_royalties

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge
                  ]
                )
              )
            end
            attr_reader :add_scheduled_charges

            sig do
              params(
                add_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::OrHash
                  ]
              ).void
            end
            attr_writer :add_scheduled_charges

            sig do
              returns(T.nilable(MetronomeSDK::SpendThresholdConfigurationV2))
            end
            attr_reader :add_spend_threshold_configuration

            sig do
              params(
                add_spend_threshold_configuration:
                  MetronomeSDK::SpendThresholdConfigurationV2::OrHash
              ).void
            end
            attr_writer :add_spend_threshold_configuration

            # List of subscriptions on the contract.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription
                  ]
                )
              )
            end
            attr_reader :add_subscriptions

            sig do
              params(
                add_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::OrHash
                  ]
              ).void
            end
            attr_writer :add_subscriptions

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter
                  ]
                )
              )
            end
            attr_reader :add_usage_filters

            sig do
              params(
                add_usage_filters:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter::OrHash
                  ]
              ).void
            end
            attr_writer :add_usage_filters

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit
                  ]
                )
              )
            end
            attr_reader :archive_commits

            sig do
              params(
                archive_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit::OrHash
                  ]
              ).void
            end
            attr_writer :archive_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit
                  ]
                )
              )
            end
            attr_reader :archive_credits

            sig do
              params(
                archive_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit::OrHash
                  ]
              ).void
            end
            attr_writer :archive_credits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge
                  ]
                )
              )
            end
            attr_reader :archive_scheduled_charges

            sig do
              params(
                archive_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge::OrHash
                  ]
              ).void
            end
            attr_writer :archive_scheduled_charges

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride
                  ]
                )
              )
            end
            attr_reader :remove_overrides

            sig do
              params(
                remove_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride::OrHash
                  ]
              ).void
            end
            attr_writer :remove_overrides

            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            # Prevents the creation of duplicates. If a request to create a record is made
            # with a previously used uniqueness key, a new record will not be created and the
            # request will fail with a 409 error.
            sig { returns(T.nilable(String)) }
            attr_reader :uniqueness_key

            sig { params(uniqueness_key: String).void }
            attr_writer :uniqueness_key

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit
                  ]
                )
              )
            end
            attr_reader :update_commits

            sig do
              params(
                update_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit
                  ]
                )
              )
            end
            attr_reader :update_credits

            sig do
              params(
                update_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::OrHash
                  ]
              ).void
            end
            attr_writer :update_credits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount
                  ]
                )
              )
            end
            attr_reader :update_discounts

            sig do
              params(
                update_discounts:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::OrHash
                  ]
              ).void
            end
            attr_writer :update_discounts

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration
                )
              )
            end
            attr_reader :update_prepaid_balance_threshold_configuration

            sig do
              params(
                update_prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :update_prepaid_balance_threshold_configuration

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit
                  ]
                )
              )
            end
            attr_reader :update_recurring_commits

            sig do
              params(
                update_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::OrHash
                  ]
              ).void
            end
            attr_writer :update_recurring_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit
                  ]
                )
              )
            end
            attr_reader :update_recurring_credits

            sig do
              params(
                update_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::OrHash
                  ]
              ).void
            end
            attr_writer :update_recurring_credits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice
                  ]
                )
              )
            end
            attr_reader :update_refund_invoices

            sig do
              params(
                update_refund_invoices:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice::OrHash
                  ]
              ).void
            end
            attr_writer :update_refund_invoices

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge
                  ]
                )
              )
            end
            attr_reader :update_scheduled_charges

            sig do
              params(
                update_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::OrHash
                  ]
              ).void
            end
            attr_writer :update_scheduled_charges

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration
                )
              )
            end
            attr_reader :update_spend_threshold_configuration

            sig do
              params(
                update_spend_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :update_spend_threshold_configuration

            # Optional list of subscriptions to update.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription
                  ]
                )
              )
            end
            attr_reader :update_subscriptions

            sig do
              params(
                update_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::OrHash
                  ]
              ).void
            end
            attr_writer :update_subscriptions

            sig do
              params(
                id: String,
                add_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::OrHash
                  ],
                add_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::OrHash
                  ],
                add_discounts: T::Array[MetronomeSDK::Discount::OrHash],
                add_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OrHash
                  ],
                add_prepaid_balance_threshold_configuration:
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::OrHash,
                add_pro_services: T::Array[MetronomeSDK::ProService::OrHash],
                add_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::OrHash
                  ],
                add_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::OrHash
                  ],
                add_reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::OrHash
                  ],
                add_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::OrHash
                  ],
                add_spend_threshold_configuration:
                  MetronomeSDK::SpendThresholdConfigurationV2::OrHash,
                add_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::OrHash
                  ],
                add_usage_filters:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter::OrHash
                  ],
                archive_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit::OrHash
                  ],
                archive_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit::OrHash
                  ],
                archive_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge::OrHash
                  ],
                remove_overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride::OrHash
                  ],
                timestamp: Time,
                uniqueness_key: String,
                update_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::OrHash
                  ],
                update_contract_end_date: Time,
                update_contract_name: T.nilable(String),
                update_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::OrHash
                  ],
                update_discounts:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::OrHash
                  ],
                update_prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::OrHash,
                update_recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::OrHash
                  ],
                update_recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::OrHash
                  ],
                update_refund_invoices:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice::OrHash
                  ],
                update_scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::OrHash
                  ],
                update_spend_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::OrHash,
                update_subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::OrHash
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
              # Prevents the creation of duplicates. If a request to create a record is made
              # with a previously used uniqueness key, a new record will not be created and the
              # request will fail with a 409 error.
              uniqueness_key: nil,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit
                    ],
                  add_credits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit
                    ],
                  add_discounts: T::Array[MetronomeSDK::Discount],
                  add_overrides:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride
                    ],
                  add_prepaid_balance_threshold_configuration:
                    MetronomeSDK::PrepaidBalanceThresholdConfigurationV2,
                  add_pro_services: T::Array[MetronomeSDK::ProService],
                  add_recurring_commits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit
                    ],
                  add_recurring_credits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit
                    ],
                  add_reseller_royalties:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty
                    ],
                  add_scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge
                    ],
                  add_spend_threshold_configuration:
                    MetronomeSDK::SpendThresholdConfigurationV2,
                  add_subscriptions:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription
                    ],
                  add_usage_filters:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter
                    ],
                  archive_commits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit
                    ],
                  archive_credits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit
                    ],
                  archive_scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge
                    ],
                  remove_overrides:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride
                    ],
                  timestamp: Time,
                  uniqueness_key: String,
                  update_commits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit
                    ],
                  update_contract_end_date: Time,
                  update_contract_name: T.nilable(String),
                  update_credits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit
                    ],
                  update_discounts:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount
                    ],
                  update_prepaid_balance_threshold_configuration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration,
                  update_recurring_commits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit
                    ],
                  update_recurring_credits:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit
                    ],
                  update_refund_invoices:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice
                    ],
                  update_scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge
                    ],
                  update_spend_threshold_configuration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration,
                  update_subscriptions:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::TaggedSymbol
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
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
                ).void
              end
              attr_writer :hierarchy_configuration

              # The schedule that the customer will be invoiced for this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::OrSymbol
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
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers:
                    T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
                ).void
              end
              attr_writer :specifiers

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::OrSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::OrSymbol,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
                # Instead, to target usage by product or product tag, pass those values in the
                # body of `specifiers`.
                specifiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product,
                    type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::TaggedSymbol,
                    access_schedule: MetronomeSDK::ScheduleDuration,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    invoice_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule,
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::TaggedSymbol,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifierInput]
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product,
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

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID =
                  T.let(
                    :PREPAID,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::TaggedSymbol
                  )
                POSTPAID =
                  T.let(
                    :POSTPAID,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
                attr_reader :credit_type

                sig do
                  params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
                end
                attr_writer :credit_type

                # If true, this schedule will not generate an invoice.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :do_not_invoice

                sig { params(do_not_invoice: T::Boolean).void }
                attr_writer :do_not_invoice

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                # The schedule that the customer will be invoiced for this commit.
                sig do
                  params(
                    credit_type: MetronomeSDK::CreditTypeData::OrHash,
                    do_not_invoice: T::Boolean,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(
                  credit_type: nil,
                  # If true, this schedule will not generate an invoice.
                  do_not_invoice: nil,
                  schedule_items: nil
                )
                end

                sig do
                  override.returns(
                    {
                      credit_type: MetronomeSDK::CreditTypeData,
                      do_not_invoice: T::Boolean,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(T.nilable(Float)) }
                  attr_reader :amount

                  sig { params(amount: Float).void }
                  attr_writer :amount

                  sig { returns(T.nilable(String)) }
                  attr_accessor :invoice_id

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
                      id: String,
                      timestamp: Time,
                      amount: Float,
                      invoice_id: T.nilable(String),
                      quantity: Float,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    timestamp:,
                    amount: nil,
                    invoice_id: nil,
                    quantity: nil,
                    unit_price: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        timestamp: Time,
                        amount: Float,
                        invoice_id: T.nilable(String),
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class AddCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type::TaggedSymbol
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
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
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

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::OrSymbol
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
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers:
                    T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
                ).void
              end
              attr_writer :specifiers

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type::OrSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::OrSymbol,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
                rate_type: nil,
                rollover_fraction: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
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
                    id: String,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product,
                    type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type::TaggedSymbol,
                    access_schedule: MetronomeSDK::ScheduleDuration,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::TaggedSymbol,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifierInput]
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product,
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

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT =
                  T.let(
                    :CREDIT,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class AddOverride < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Time) }
              attr_accessor :created_at

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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier
                    ]
                  )
                )
              end
              attr_reader :override_specifiers

              sig do
                params(
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::OrHash
                    ]
                ).void
              end
              attr_writer :override_specifiers

              sig { returns(T.nilable(T::Array[MetronomeSDK::OverrideTier])) }
              attr_reader :override_tiers

              sig do
                params(
                  override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash]
                ).void
              end
              attr_writer :override_tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate
                  )
                )
              end
              attr_reader :overwrite_rate

              sig do
                params(
                  overwrite_rate:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product
                  )
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::TaggedSymbol
                  )
                )
              end
              attr_reader :target

              sig do
                params(
                  target:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::OrSymbol
                ).void
              end
              attr_writer :target

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  id: String,
                  created_at: Time,
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::OrHash
                    ],
                  override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash],
                  overwrite_rate:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product::OrHash,
                  target:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::OrSymbol,
                  type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                created_at:,
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
                    created_at: Time,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    multiplier: Float,
                    override_specifiers:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier
                      ],
                    override_tiers: T::Array[MetronomeSDK::OverrideTier],
                    overwrite_rate:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product,
                    target:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::TaggedSymbol,
                    type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    )
                  )
                end
                attr_reader :billing_frequency

                sig do
                  params(
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol
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
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)]
                  ).void
                end
                attr_writer :presentation_group_values

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :pricing_group_values

                sig do
                  params(pricing_group_values: T::Hash[Symbol, String]).void
                end
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

                sig do
                  params(
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::OrSymbol,
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  billing_frequency: nil,
                  commit_ids: nil,
                  presentation_group_values: nil,
                  pricing_group_values: nil,
                  product_id: nil,
                  product_tags: nil,
                  recurring_commit_ids: nil
                )
                end

                sig do
                  override.returns(
                    {
                      billing_frequency:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol,
                      commit_ids: T::Array[String],
                      presentation_group_values:
                        T::Hash[Symbol, T.nilable(String)],
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MONTHLY =
                    T.let(
                      :MONTHLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    )
                  QUARTERLY =
                    T.let(
                      :QUARTERLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    )
                  ANNUAL =
                    T.let(
                      :ANNUAL,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    )
                  WEEKLY =
                    T.let(
                      :WEEKLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::OrSymbol,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAT =
                    T.let(
                      :FLAT,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )
                  PERCENTAGE =
                    T.let(
                      :PERCENTAGE,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )
                  SUBSCRIPTION =
                    T.let(
                      :SUBSCRIPTION,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )
                  TIERED =
                    T.let(
                      :TIERED,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )
                  TIERED_PERCENTAGE =
                    T.let(
                      :TIERED_PERCENTAGE,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )
                  CUSTOM =
                    T.let(
                      :CUSTOM,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product,
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

              module Target
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                OVERWRITE =
                  T.let(
                    :OVERWRITE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                  )
                MULTIPLIER =
                  T.let(
                    :MULTIPLIER,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class AddRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract::OrHash
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
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount
                  )
                )
              end
              attr_reader :invoice_amount

              sig do
                params(
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # Rounding configuration for prorated recurring commit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::OrSymbol
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
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier]))
              end
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
                  T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig)
                )
              end
              attr_reader :subscription_config

              sig do
                params(
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).void
              end
              attr_writer :subscription_config

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::OrSymbol,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::OrHash
                    ),
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
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
                # Rounding configuration for prorated recurring commit amounts.
                proration_rounding: nil,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    invoice_amount:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding
                      ),
                    recurrence_frequency:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                    subscription_config:
                      MetronomeSDK::RecurringCommitSubscriptionConfig
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount,
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
                    {
                      credit_type_id: String,
                      unit_price: Float,
                      quantity: Float
                    }
                  )
                end
                def to_hash
                end
              end

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product,
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

              # Whether the created commits will use the commit rate or list rate
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount,
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
                    {
                      credit_type_id: String,
                      quantity: Float,
                      unit_price: Float
                    }
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice
                    )
                  )
                end
                attr_reader :invoice

                sig do
                  params(
                    invoice:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::OrHash
                  ).void
                end
                attr_writer :invoice

                # Rounding configuration for prorated recurring commit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::OrHash,
                    invoice:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil, invoice: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access,
                      invoice:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class AddRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract::OrHash
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
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # Rounding configuration for prorated recurring credit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::OrSymbol
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
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier]))
              end
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
                  T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig)
                )
              end
              attr_reader :subscription_config

              sig do
                params(
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).void
              end
              attr_writer :subscription_config

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::OrSymbol,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::OrHash
                    ),
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
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
                # Rounding configuration for prorated recurring credit amounts.
                proration_rounding: nil,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding
                      ),
                    recurrence_frequency:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                    subscription_config:
                      MetronomeSDK::RecurringCommitSubscriptionConfig
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount,
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
                    {
                      credit_type_id: String,
                      unit_price: Float,
                      quantity: Float
                    }
                  )
                end
                def to_hash
                end
              end

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product,
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

              # Whether the created commits will use the commit rate or list rate
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                # Rounding configuration for prorated recurring credit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::OrSymbol,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product::OrHash,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product,
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

            class AddSubscription < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Previous, current, and next billing periods for the subscription.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods
                )
              end
              attr_reader :billing_periods

              sig do
                params(
                  billing_periods:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::OrHash
                ).void
              end
              attr_writer :billing_periods

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::TaggedSymbol
                )
              end
              attr_accessor :collection_schedule

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::OrHash
                ).void
              end
              attr_writer :proration

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
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::TaggedSymbol
                )
              end
              attr_accessor :quantity_management_mode

              # List of quantity schedule items for the subscription. Only includes the current
              # quantity and future quantity changes.
              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule
                  ]
                )
              end
              attr_accessor :quantity_schedule

              sig { returns(Time) }
              attr_accessor :starting_at

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate
                )
              end
              attr_reader :subscription_rate

              sig do
                params(
                  subscription_rate:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::OrHash
                ).void
              end
              attr_writer :subscription_rate

              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig
                  )
                )
              end
              attr_reader :billing_cycle_config

              sig do
                params(
                  billing_cycle_config:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::OrHash
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
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig
                  )
                )
              end
              attr_reader :seat_config

              sig do
                params(
                  seat_config:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig::OrHash
                ).void
              end
              attr_writer :seat_config

              sig do
                params(
                  billing_periods:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::OrHash,
                  collection_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::OrSymbol,
                  proration:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::OrHash,
                  quantity_management_mode:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::OrSymbol,
                  quantity_schedule:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule::OrHash
                    ],
                  starting_at: Time,
                  subscription_rate:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::OrHash,
                  id: String,
                  billing_cycle_config:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ending_before: Time,
                  fiat_credit_type_id: String,
                  name: String,
                  seat_config:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Previous, current, and next billing periods for the subscription.
                billing_periods:,
                collection_schedule:,
                proration:,
                # Determines how the subscription's quantity is controlled. Defaults to
                # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
                # directly on the subscription. `initial_quantity` must be provided with this
                # option. Compatible with recurring commits/credits that use POOLED allocation.
                # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
                # user_123) to increment and decrement a subscription quantity, rather than
                # directly providing the quantity. You must use a **SEAT_BASED** subscription to
                # use a linked recurring credit with an allocation per seat. `seat_config` must be
                # provided with this option.
                quantity_management_mode:,
                # List of quantity schedule items for the subscription. Only includes the current
                # quantity and future quantity changes.
                quantity_schedule:,
                starting_at:,
                subscription_rate:,
                id: nil,
                billing_cycle_config: nil,
                # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
                custom_fields: nil,
                description: nil,
                ending_before: nil,
                fiat_credit_type_id: nil,
                name: nil,
                seat_config: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_periods:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods,
                    collection_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::TaggedSymbol,
                    proration:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration,
                    quantity_management_mode:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::TaggedSymbol,
                    quantity_schedule:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule
                      ],
                    starting_at: Time,
                    subscription_rate:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate,
                    id: String,
                    billing_cycle_config:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ending_before: Time,
                    fiat_credit_type_id: String,
                    name: String,
                    seat_config:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig
                  }
                )
              end
              def to_hash
              end

              class BillingPeriods < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current
                    )
                  )
                end
                attr_reader :current

                sig do
                  params(
                    current:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current::OrHash
                  ).void
                end
                attr_writer :current

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next
                    )
                  )
                end
                attr_reader :next_

                sig do
                  params(
                    next_:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next::OrHash
                  ).void
                end
                attr_writer :next_

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous
                    )
                  )
                end
                attr_reader :previous

                sig do
                  params(
                    previous:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous::OrHash
                  ).void
                end
                attr_writer :previous

                # Previous, current, and next billing periods for the subscription.
                sig do
                  params(
                    current:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current::OrHash,
                    next_:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next::OrHash,
                    previous:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(current: nil, next_: nil, previous: nil)
                end

                sig do
                  override.returns(
                    {
                      current:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current,
                      next_:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next,
                      previous:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous
                    }
                  )
                end
                def to_hash
                end

                class Current < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(ending_before: Time, starting_at: Time).returns(
                      T.attached_class
                    )
                  end
                  def self.new(ending_before:, starting_at:)
                  end

                  sig do
                    override.returns({ ending_before: Time, starting_at: Time })
                  end
                  def to_hash
                  end
                end

                class Next < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(ending_before: Time, starting_at: Time).returns(
                      T.attached_class
                    )
                  end
                  def self.new(ending_before:, starting_at:)
                  end

                  sig do
                    override.returns({ ending_before: Time, starting_at: Time })
                  end
                  def to_hash
                  end
                end

                class Previous < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(ending_before: Time, starting_at: Time).returns(
                      T.attached_class
                    )
                  end
                  def self.new(ending_before:, starting_at:)
                  end

                  sig do
                    override.returns({ ending_before: Time, starting_at: Time })
                  end
                  def to_hash
                  end
                end
              end

              module CollectionSchedule
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ADVANCE =
                  T.let(
                    :ADVANCE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::TaggedSymbol
                  )
                ARREARS =
                  T.let(
                    :ARREARS,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                  )
                end
                attr_accessor :invoice_behavior

                sig { returns(T::Boolean) }
                attr_accessor :is_prorated

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding
                    )
                  )
                end
                attr_reader :rounding

                sig do
                  params(
                    rounding:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::OrHash
                  ).void
                end
                attr_writer :rounding

                sig do
                  params(
                    invoice_behavior:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::OrSymbol,
                    is_prorated: T::Boolean,
                    rounding:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(invoice_behavior:, is_prorated:, rounding: nil)
                end

                sig do
                  override.returns(
                    {
                      invoice_behavior:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol,
                      is_prorated: T::Boolean,
                      rounding:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  BILL_IMMEDIATELY =
                    T.let(
                      :BILL_IMMEDIATELY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                    )
                  BILL_ON_NEXT_COLLECTION_DATE =
                    T.let(
                      :BILL_ON_NEXT_COLLECTION_DATE,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SEAT_BASED =
                  T.let(
                    :SEAT_BASED,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::TaggedSymbol
                  )
                QUANTITY_ONLY =
                  T.let(
                    :QUANTITY_ONLY,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                end
                attr_accessor :billing_frequency

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product
                  )
                end
                attr_reader :product

                sig do
                  params(
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product::OrHash
                  ).void
                end
                attr_writer :product

                sig do
                  params(
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::OrSymbol,
                    product:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(billing_frequency:, product:)
                end

                sig do
                  override.returns(
                    {
                      billing_frequency:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
                      product:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MONTHLY =
                    T.let(
                      :MONTHLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    )
                  QUARTERLY =
                    T.let(
                      :QUARTERLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    )
                  ANNUAL =
                    T.let(
                      :ANNUAL,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    )
                  WEEKLY =
                    T.let(
                      :WEEKLY,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product,
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

              class BillingCycleConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # The date this subscription's billing cycle is anchored to.
                sig { returns(Time) }
                attr_accessor :anchor_date

                # Controls whether this subscription consolidates onto usage invoices or gets its
                # own scheduled invoice.
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                  )
                end
                attr_accessor :invoice_placement

                sig do
                  params(
                    anchor_date: Time,
                    invoice_placement:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The date this subscription's billing cycle is anchored to.
                  anchor_date:,
                  # Controls whether this subscription consolidates onto usage invoices or gets its
                  # own scheduled invoice.
                  invoice_placement:
                )
                end

                sig do
                  override.returns(
                    {
                      anchor_date: Time,
                      invoice_placement:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Controls whether this subscription consolidates onto usage invoices or gets its
                # own scheduled invoice.
                module InvoicePlacement
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ON_SCHEDULED_INVOICE =
                    T.let(
                      :ON_SCHEDULED_INVOICE,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                    )
                  ON_USAGE_INVOICE =
                    T.let(
                      :ON_USAGE_INVOICE,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class SeatConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig,
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
            end

            class AddUsageFilter < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::OrHash
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

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Optional configuration for commit hierarchy access control
              sig do
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
                ).void
              end
              attr_writer :hierarchy_configuration

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::OrHash
                ).void
              end
              attr_writer :invoice_schedule

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_accessor :netsuite_sales_order_id

              # If multiple commits are applicable, the one with the lower priority will apply
              # first.
              sig { returns(T.nilable(Float)) }
              attr_accessor :priority

              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If set, the commit's rate type was updated to the specified value.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig { returns(T.nilable(Float)) }
              attr_accessor :rollover_fraction

              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown. This field cannot
              # be used together with `applicable_product_ids` or `applicable_product_tags`.
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
              end
              attr_accessor :specifiers

              sig do
                params(
                  id: String,
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::OrHash,
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::OrHash,
                  name: String,
                  netsuite_sales_order_id: T.nilable(String),
                  priority: T.nilable(Float),
                  product_id: String,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::OrSymbol,
                  rollover_fraction: T.nilable(Float),
                  specifiers:
                    T.nilable(
                      T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
                description: nil,
                # Optional configuration for commit hierarchy access control
                hierarchy_configuration: nil,
                invoice_schedule: nil,
                name: nil,
                netsuite_sales_order_id: nil,
                # If multiple commits are applicable, the one with the lower priority will apply
                # first.
                priority: nil,
                product_id: nil,
                # If set, the commit's rate type was updated to the specified value.
                rate_type: nil,
                rollover_fraction: nil,
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
                    id: String,
                    access_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule,
                    applicable_product_ids: T.nilable(T::Array[String]),
                    applicable_product_tags: T.nilable(T::Array[String]),
                    description: String,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    invoice_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule,
                    name: String,
                    netsuite_sales_order_id: T.nilable(String),
                    priority: T.nilable(Float),
                    product_id: String,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::TaggedSymbol,
                    rollover_fraction: T.nilable(Float),
                    specifiers:
                      T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])
                  }
                )
              end
              def to_hash
              end

              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :add_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :add_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :remove_schedule_items

                sig do
                  params(
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :update_schedule_items

                sig do
                  params(
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :update_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem::OrHash
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem::OrHash
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem::OrHash
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem
                        ],
                      remove_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem
                        ],
                      update_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem,
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

              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :add_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :add_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :remove_schedule_items

                sig do
                  params(
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :update_schedule_items

                sig do
                  params(
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :update_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem::OrHash
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem::OrHash
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem::OrHash
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem
                        ],
                      remove_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                        ],
                      update_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem,
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

              # If set, the commit's rate type was updated to the specified value.
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UpdateCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              # Which products the credit applies to. If applicable_product_ids,
              # applicable_product_tags or specifiers are not provided, the credit applies to
              # all products.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :applicable_product_ids

              # Which tags the credit applies to. If applicable_product_ids,
              # applicable_product_tags or specifiers are not provided, the credit applies to
              # all products.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :applicable_product_tags

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Optional configuration for credit hierarchy access control
              sig do
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
                ).void
              end
              attr_writer :hierarchy_configuration

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_accessor :netsuite_sales_order_id

              # If multiple credits are applicable, the one with the lower priority will apply
              # first.
              sig { returns(T.nilable(Float)) }
              attr_accessor :priority

              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If set, the credit's rate type was updated to the specified value.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig { returns(T.nilable(Float)) }
              attr_accessor :rollover_fraction

              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown. This field cannot
              # be used together with `applicable_product_ids` or `applicable_product_tags`.
              # Instead, to target usage by product or product tag, pass those values in the
              # body of `specifiers`.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
              end
              attr_accessor :specifiers

              sig do
                params(
                  id: String,
                  access_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::OrHash,
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  name: String,
                  netsuite_sales_order_id: T.nilable(String),
                  priority: T.nilable(Float),
                  product_id: String,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::OrSymbol,
                  rollover_fraction: T.nilable(Float),
                  specifiers:
                    T.nilable(
                      T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                access_schedule: nil,
                # Which products the credit applies to. If applicable_product_ids,
                # applicable_product_tags or specifiers are not provided, the credit applies to
                # all products.
                applicable_product_ids: nil,
                # Which tags the credit applies to. If applicable_product_ids,
                # applicable_product_tags or specifiers are not provided, the credit applies to
                # all products.
                applicable_product_tags: nil,
                description: nil,
                # Optional configuration for credit hierarchy access control
                hierarchy_configuration: nil,
                name: nil,
                netsuite_sales_order_id: nil,
                # If multiple credits are applicable, the one with the lower priority will apply
                # first.
                priority: nil,
                product_id: nil,
                # If set, the credit's rate type was updated to the specified value.
                rate_type: nil,
                rollover_fraction: nil,
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
                    id: String,
                    access_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule,
                    applicable_product_ids: T.nilable(T::Array[String]),
                    applicable_product_tags: T.nilable(T::Array[String]),
                    description: String,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    name: String,
                    netsuite_sales_order_id: T.nilable(String),
                    priority: T.nilable(Float),
                    product_id: String,
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::TaggedSymbol,
                    rollover_fraction: T.nilable(Float),
                    specifiers:
                      T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])
                  }
                )
              end
              def to_hash
              end

              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :add_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :add_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :remove_schedule_items

                sig do
                  params(
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :update_schedule_items

                sig do
                  params(
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :update_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem::OrHash
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem::OrHash
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem::OrHash
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem
                        ],
                      remove_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem
                        ],
                      update_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem,
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

              # If set, the credit's rate type was updated to the specified value.
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::TaggedSymbol
                  )
                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UpdateDiscount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule
                  )
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule
                  }
                )
              end
              def to_hash
              end

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule
                    )
                  )
                end
                attr_reader :recurring_schedule

                sig do
                  params(
                    recurring_schedule:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::OrHash
                  ).void
                end
                attr_writer :recurring_schedule

                # Either provide amount or provide both unit_price and quantity.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem::OrHash
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem::OrHash
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                    )
                  end
                  attr_accessor :amount_distribution

                  # RFC 3339 timestamp (exclusive).
                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                      ending_before: Time,
                      frequency:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol,
                        ending_before: Time,
                        frequency:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol,
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DIVIDED =
                      T.let(
                        :DIVIDED,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                      )
                    DIVIDED_ROUNDED =
                      T.let(
                        :DIVIDED_ROUNDED,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                      )
                    EACH =
                      T.let(
                        :EACH,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MONTHLY =
                      T.let(
                        :MONTHLY,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                      )
                    QUARTERLY =
                      T.let(
                        :QUARTERLY,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                      )
                    SEMI_ANNUAL =
                      T.let(
                        :SEMI_ANNUAL,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                      )
                    ANNUAL =
                      T.let(
                        :ANNUAL,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                      )
                    WEEKLY =
                      T.let(
                        :WEEKLY,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit
                  )
                )
              end
              attr_reader :commit

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash
                ).void
              end
              attr_writer :commit

              # If provided, the threshold, recharge-to amount, and the resulting threshold
              # commit amount will be in terms of this credit type instead of the fiat currency.
              sig { returns(T.nilable(String)) }
              attr_accessor :custom_credit_type_id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration
                  )
                )
              end
              attr_reader :discount_configuration

              sig do
                params(
                  discount_configuration:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :discount_configuration

              # When set to false, the contract will not be evaluated against the
              # threshold_amount. Toggling to true will result an immediate evaluation,
              # regardless of prior state.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_enabled

              sig { params(is_enabled: T::Boolean).void }
              attr_writer :is_enabled

              sig { returns(T.nilable(MetronomeSDK::PaymentGateConfigV2)) }
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash
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
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier
                    ]
                  )
                )
              end
              attr_accessor :threshold_balance_specifiers

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit::OrHash,
                  custom_credit_type_id: T.nilable(String),
                  discount_configuration:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::OrHash
                    ),
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::PaymentGateConfigV2::OrHash,
                  recharge_to_amount: Float,
                  threshold_amount: Float,
                  threshold_balance_specifiers:
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::OrHash
                      ]
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                commit: nil,
                # If provided, the threshold, recharge-to amount, and the resulting threshold
                # commit amount will be in terms of this credit type instead of the fiat currency.
                custom_credit_type_id: nil,
                discount_configuration: nil,
                # When set to false, the contract will not be evaluated against the
                # threshold_amount. Toggling to true will result an immediate evaluation,
                # regardless of prior state.
                is_enabled: nil,
                payment_gate_config: nil,
                # Specify the amount the balance should be recharged to.
                recharge_to_amount: nil,
                # Specify the threshold amount for the contract. Each time the contract's balance
                # lowers to this amount, a threshold charge will be initiated.
                threshold_amount: nil,
                threshold_balance_specifiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    commit:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit,
                    custom_credit_type_id: T.nilable(String),
                    discount_configuration:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration
                      ),
                    is_enabled: T::Boolean,
                    payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
                    recharge_to_amount: Float,
                    threshold_amount: Float,
                    threshold_balance_specifiers:
                      T.nilable(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier
                        ]
                      )
                  }
                )
              end
              def to_hash
              end

              class Commit < MetronomeSDK::Models::UpdateBaseThresholdCommit
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit,
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

                # List of filters that determine what kind of customer usage draws down a commit
                # or credit. A customer's usage needs to meet the condition of at least one of the
                # specifiers to contribute to a commit's or credit's drawdown. This field cannot
                # be used together with `applicable_product_ids` or `applicable_product_tags`.
                # Instead, to target usage by product or product tag, pass those values in the
                # body of `specifiers`.
                sig do
                  returns(
                    T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])
                  )
                end
                attr_accessor :specifiers

                sig do
                  params(
                    applicable_product_ids: T.nilable(T::Array[String]),
                    applicable_product_tags: T.nilable(T::Array[String]),
                    specifiers:
                      T.nilable(
                        T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
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
                      specifiers:
                        T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])
                    }
                  )
                end
                def to_hash
                end
              end

              class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Update the discount cap. Set to null to remove an existing cap.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap
                    )
                  )
                end
                attr_reader :cap

                sig do
                  params(
                    cap:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap::OrHash
                      )
                  ).void
                end
                attr_writer :cap

                # The fraction of the original amount that the customer pays after applying the
                # discount. Set to null to remove the discount fraction. For example, 0.85 means
                # the customer pays 85% of the original amount (a 15% discount).
                sig { returns(T.nilable(Float)) }
                attr_accessor :payment_fraction

                sig do
                  params(
                    cap:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap::OrHash
                      ),
                    payment_fraction: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Update the discount cap. Set to null to remove an existing cap.
                  cap: nil,
                  # The fraction of the original amount that the customer pays after applying the
                  # discount. Set to null to remove the discount fraction. For example, 0.85 means
                  # the customer pays 85% of the original amount (a 15% discount).
                  payment_fraction: nil
                )
                end

                sig do
                  override.returns(
                    {
                      cap:
                        T.nilable(
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap
                        ),
                      payment_fraction: T.nilable(Float)
                    }
                  )
                end
                def to_hash
                end

                class Cap < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Accumulated spend ceiling above which the discount stops applying.
                  sig { returns(Float) }
                  attr_accessor :amount

                  # Alias of the spend tracker this cap is measured against.
                  sig { returns(String) }
                  attr_accessor :spend_tracker_alias

                  # Update the discount cap. Set to null to remove an existing cap.
                  sig do
                    params(amount: Float, spend_tracker_alias: String).returns(
                      T.attached_class
                    )
                  end
                  def self.new(
                    # Accumulated spend ceiling above which the discount stops applying.
                    amount:,
                    # Alias of the spend tracker this cap is measured against.
                    spend_tracker_alias:
                  )
                  end

                  sig do
                    override.returns(
                      { amount: Float, spend_tracker_alias: String }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class ThresholdBalanceSpecifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude
                    ]
                  )
                end
                attr_accessor :exclude

                sig do
                  params(
                    exclude:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(exclude:)
                end

                sig do
                  override.returns(
                    {
                      exclude:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude
                        ]
                    }
                  )
                end
                def to_hash
                end

                class Exclude < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter
                      ]
                    )
                  end
                  attr_accessor :custom_field_filters

                  sig do
                    params(
                      custom_field_filters:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::OrHash
                        ]
                    ).returns(T.attached_class)
                  end
                  def self.new(custom_field_filters:)
                  end

                  sig do
                    override.returns(
                      {
                        custom_field_filters:
                          T::Array[
                            MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter
                          ]
                      }
                    )
                  end
                  def to_hash
                  end

                  class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter,
                          MetronomeSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                      )
                    end
                    attr_accessor :entity

                    sig { returns(String) }
                    attr_accessor :key

                    sig { returns(String) }
                    attr_accessor :value

                    sig do
                      params(
                        entity:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol,
                        key: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(entity:, key:, value:)
                    end

                    sig do
                      override.returns(
                        {
                          entity:
                            MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol,
                          key: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Entity
                      extend MetronomeSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      COMMIT =
                        T.let(
                          :Commit,
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                        )
                      CONTRACT_CREDIT =
                        T.let(
                          :ContractCredit,
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                        )
                      CONTRACT_CREDIT_OR_COMMIT =
                        T.let(
                          :ContractCreditOrCommit,
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
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

            class UpdateRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount
                  )
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount
                  )
                )
              end
              attr_reader :invoice_amount

              sig do
                params(
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount::OrHash
                ).void
              end
              attr_writer :invoice_amount

              # Rounding configuration for prorated recurring commit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount::OrHash,
                  ending_before: Time,
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount::OrHash,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::OrHash
                    ),
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                access_amount: nil,
                ending_before: nil,
                invoice_amount: nil,
                # Rounding configuration for prorated recurring commit amounts.
                proration_rounding: nil,
                rate_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount,
                    ending_before: Time,
                    invoice_amount:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding
                      ),
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount,
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

              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice
                    )
                  )
                end
                attr_reader :invoice

                sig do
                  params(
                    invoice:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::OrHash
                  ).void
                end
                attr_writer :invoice

                # Rounding configuration for prorated recurring commit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::OrHash,
                    invoice:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil, invoice: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access,
                      invoice:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::TaggedSymbol
                  )
                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UpdateRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount
                  )
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              # Rounding configuration for prorated recurring credit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount::OrHash,
                  ending_before: Time,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::OrHash
                    ),
                  rate_type:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                access_amount: nil,
                ending_before: nil,
                # Rounding configuration for prorated recurring credit amounts.
                proration_rounding: nil,
                rate_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount,
                    ending_before: Time,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding
                      ),
                    rate_type:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount,
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

              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                # Rounding configuration for prorated recurring credit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::TaggedSymbol
                  )
                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UpdateRefundInvoice < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::OrHash
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::OrHash,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :add_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :add_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :remove_schedule_items

                sig do
                  params(
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_schedule_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :update_schedule_items

                sig do
                  params(
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :update_schedule_items

                sig do
                  params(
                    add_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem::OrHash
                      ],
                    remove_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem::OrHash
                      ],
                    update_schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem::OrHash
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
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                        ],
                      remove_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                        ],
                      update_schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem,
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
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem,
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
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(T.nilable(MetronomeSDK::UpdateBaseThresholdCommit))
              end
              attr_reader :commit

              sig do
                params(
                  commit: MetronomeSDK::UpdateBaseThresholdCommit::OrHash
                ).void
              end
              attr_writer :commit

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration
                  )
                )
              end
              attr_reader :discount_configuration

              sig do
                params(
                  discount_configuration:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :discount_configuration

              # When set to false, the contract will not be evaluated against the
              # threshold_amount. Toggling to true will result an immediate evaluation,
              # regardless of prior state.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_enabled

              sig { params(is_enabled: T::Boolean).void }
              attr_writer :is_enabled

              sig { returns(T.nilable(MetronomeSDK::PaymentGateConfigV2)) }
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash
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
                  commit: MetronomeSDK::UpdateBaseThresholdCommit::OrHash,
                  discount_configuration:
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::OrHash
                    ),
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::PaymentGateConfigV2::OrHash,
                  threshold_amount: Float
                ).returns(T.attached_class)
              end
              def self.new(
                commit: nil,
                discount_configuration: nil,
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
                    commit: MetronomeSDK::UpdateBaseThresholdCommit,
                    discount_configuration:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration
                      ),
                    is_enabled: T::Boolean,
                    payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
                    threshold_amount: Float
                  }
                )
              end
              def to_hash
              end

              class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Update the discount cap. Set to null to remove an existing cap.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap
                    )
                  )
                end
                attr_reader :cap

                sig do
                  params(
                    cap:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap::OrHash
                      )
                  ).void
                end
                attr_writer :cap

                # The fraction of the original amount that the customer pays after applying the
                # discount. Set to null to remove the discount fraction. For example, 0.85 means
                # the customer pays 85% of the original amount (a 15% discount).
                sig { returns(T.nilable(Float)) }
                attr_accessor :payment_fraction

                sig do
                  params(
                    cap:
                      T.nilable(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap::OrHash
                      ),
                    payment_fraction: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Update the discount cap. Set to null to remove an existing cap.
                  cap: nil,
                  # The fraction of the original amount that the customer pays after applying the
                  # discount. Set to null to remove the discount fraction. For example, 0.85 means
                  # the customer pays 85% of the original amount (a 15% discount).
                  payment_fraction: nil
                )
                end

                sig do
                  override.returns(
                    {
                      cap:
                        T.nilable(
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap
                        ),
                      payment_fraction: T.nilable(Float)
                    }
                  )
                end
                def to_hash
                end

                class Cap < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Accumulated spend ceiling above which the discount stops applying.
                  sig { returns(Float) }
                  attr_accessor :amount

                  # Alias of the spend tracker this cap is measured against.
                  sig { returns(String) }
                  attr_accessor :spend_tracker_alias

                  # Update the discount cap. Set to null to remove an existing cap.
                  sig do
                    params(amount: Float, spend_tracker_alias: String).returns(
                      T.attached_class
                    )
                  end
                  def self.new(
                    # Accumulated spend ceiling above which the discount stops applying.
                    amount:,
                    # Alias of the spend tracker this cap is measured against.
                    spend_tracker_alias:
                  )
                  end

                  sig do
                    override.returns(
                      { amount: Float, spend_tracker_alias: String }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class UpdateSubscription < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription,
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
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate
                    ]
                  )
                )
              end
              attr_reader :quantity_updates

              sig do
                params(
                  quantity_updates:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate::OrHash
                    ]
                ).void
              end
              attr_writer :quantity_updates

              # Manage subscription seats for subscriptions in SEAT_BASED mode.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates
                  )
                )
              end
              attr_reader :seat_updates

              sig do
                params(
                  seat_updates:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::OrHash
                ).void
              end
              attr_writer :seat_updates

              sig do
                params(
                  id: String,
                  ending_before: Time,
                  quantity_updates:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate::OrHash
                    ],
                  seat_updates:
                    MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                ending_before: nil,
                quantity_updates: nil,
                # Manage subscription seats for subscriptions in SEAT_BASED mode.
                seat_updates: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    ending_before: Time,
                    quantity_updates:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate
                      ],
                    seat_updates:
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates
                  }
                )
              end
              def to_hash
              end

              class QuantityUpdate < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate,
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
                    {
                      starting_at: Time,
                      quantity: Float,
                      quantity_delta: Float
                    }
                  )
                end
                def to_hash
                end
              end

              class SeatUpdates < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Adds seat IDs to the subscription. If there are unassigned seats, the new seat
                # IDs will fill these unassigned seats and not increase the total subscription
                # quantity. Otherwise, if there are more new seat IDs than unassigned seats, the
                # total subscription quantity will increase.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID
                      ]
                    )
                  )
                end
                attr_reader :add_seat_ids

                sig do
                  params(
                    add_seat_ids:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID::OrHash
                      ]
                  ).void
                end
                attr_writer :add_seat_ids

                # Adds unassigned seats to the subscription. This will increase the total
                # subscription quantity.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat
                      ]
                    )
                  )
                end
                attr_reader :add_unassigned_seats

                sig do
                  params(
                    add_unassigned_seats:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat::OrHash
                      ]
                  ).void
                end
                attr_writer :add_unassigned_seats

                # Removes seat IDs from the subscription, if possible. If a seat ID is removed,
                # the total subscription quantity will decrease. Otherwise, if the seat ID is not
                # found on the subscription, this is a no-op.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID
                      ]
                    )
                  )
                end
                attr_reader :remove_seat_ids

                sig do
                  params(
                    remove_seat_ids:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_seat_ids

                # Removes unassigned seats from the subscription. This will decrease the total
                # subscription quantity if there are are unassigned seats.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat
                      ]
                    )
                  )
                end
                attr_reader :remove_unassigned_seats

                sig do
                  params(
                    remove_unassigned_seats:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat::OrHash
                      ]
                  ).void
                end
                attr_writer :remove_unassigned_seats

                # Manage subscription seats for subscriptions in SEAT_BASED mode.
                sig do
                  params(
                    add_seat_ids:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID::OrHash
                      ],
                    add_unassigned_seats:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat::OrHash
                      ],
                    remove_seat_ids:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID::OrHash
                      ],
                    remove_unassigned_seats:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Adds seat IDs to the subscription. If there are unassigned seats, the new seat
                  # IDs will fill these unassigned seats and not increase the total subscription
                  # quantity. Otherwise, if there are more new seat IDs than unassigned seats, the
                  # total subscription quantity will increase.
                  add_seat_ids: nil,
                  # Adds unassigned seats to the subscription. This will increase the total
                  # subscription quantity.
                  add_unassigned_seats: nil,
                  # Removes seat IDs from the subscription, if possible. If a seat ID is removed,
                  # the total subscription quantity will decrease. Otherwise, if the seat ID is not
                  # found on the subscription, this is a no-op.
                  remove_seat_ids: nil,
                  # Removes unassigned seats from the subscription. This will decrease the total
                  # subscription quantity if there are are unassigned seats.
                  remove_unassigned_seats: nil
                )
                end

                sig do
                  override.returns(
                    {
                      add_seat_ids:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID
                        ],
                      add_unassigned_seats:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat
                        ],
                      remove_seat_ids:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID
                        ],
                      remove_unassigned_seats:
                        T::Array[
                          MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat
                        ]
                    }
                  )
                end
                def to_hash
                end

                class AddSeatID < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :seat_ids

                  # Assigned seats will be added/removed starting at this date.
                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      seat_ids: T::Array[String],
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    seat_ids:,
                    # Assigned seats will be added/removed starting at this date.
                    starting_at:
                  )
                  end

                  sig do
                    override.returns(
                      { seat_ids: T::Array[String], starting_at: Time }
                    )
                  end
                  def to_hash
                  end
                end

                class AddUnassignedSeat < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # The number of unassigned seats on the subscription will increase/decrease by
                  # this delta. Must be greater than 0.
                  sig { returns(Float) }
                  attr_accessor :quantity

                  # Unassigned seats will be updated starting at this date.
                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(quantity: Float, starting_at: Time).returns(
                      T.attached_class
                    )
                  end
                  def self.new(
                    # The number of unassigned seats on the subscription will increase/decrease by
                    # this delta. Must be greater than 0.
                    quantity:,
                    # Unassigned seats will be updated starting at this date.
                    starting_at:
                  )
                  end

                  sig do
                    override.returns({ quantity: Float, starting_at: Time })
                  end
                  def to_hash
                  end
                end

                class RemoveSeatID < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :seat_ids

                  # Assigned seats will be added/removed starting at this date.
                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      seat_ids: T::Array[String],
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    seat_ids:,
                    # Assigned seats will be added/removed starting at this date.
                    starting_at:
                  )
                  end

                  sig do
                    override.returns(
                      { seat_ids: T::Array[String], starting_at: Time }
                    )
                  end
                  def to_hash
                  end
                end

                class RemoveUnassignedSeat < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # The number of unassigned seats on the subscription will increase/decrease by
                  # this delta. Must be greater than 0.
                  sig { returns(Float) }
                  attr_accessor :quantity

                  # Unassigned seats will be updated starting at this date.
                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(quantity: Float, starting_at: Time).returns(
                      T.attached_class
                    )
                  end
                  def self.new(
                    # The number of unassigned seats on the subscription will increase/decrease by
                    # this delta. Must be greater than 0.
                    quantity:,
                    # Unassigned seats will be updated starting at this date.
                    starting_at:
                  )
                  end

                  sig do
                    override.returns({ quantity: Float, starting_at: Time })
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
  end
end
