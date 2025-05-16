# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::Models::V1::ContractRetrieveResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::ContractRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment
              ]
            )
          end
          attr_accessor :amendments

          sig do
            returns(
              MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current
            )
          end
          attr_reader :current

          sig do
            params(
              current:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::OrHash
            ).void
          end
          attr_writer :current

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial
            )
          end
          attr_reader :initial

          sig do
            params(
              initial:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::OrHash
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
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration
              )
            )
          end
          attr_reader :customer_billing_provider_configuration

          sig do
            params(
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::OrHash
            ).void
          end
          attr_writer :customer_billing_provider_configuration

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration
              )
            )
          end
          attr_reader :prepaid_balance_threshold_configuration

          sig do
            params(
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash
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
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )
            )
          end
          attr_reader :scheduled_charges_on_usage_invoices

          sig do
            params(
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol
            ).void
          end
          attr_writer :scheduled_charges_on_usage_invoices

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration
              )
            )
          end
          attr_reader :spend_threshold_configuration

          sig do
            params(
              spend_threshold_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :spend_threshold_configuration

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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::OrHash
                ],
              current:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::OrHash,
              customer_id: String,
              initial:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::OrHash,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::OrHash,
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash,
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::OrHash,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment
                  ],
                current:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current,
                customer_id: String,
                initial:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial,
                archived_at: Time,
                custom_fields: T::Hash[Symbol, String],
                customer_billing_provider_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration,
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override
                ]
              )
            end
            attr_accessor :overrides

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge
                ]
              )
            end
            attr_accessor :scheduled_charges

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit
                  ]
                )
              )
            end
            attr_reader :credits

            sig do
              params(
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::OrHash
                  ]
              ).void
            end
            attr_writer :credits

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount
                  ]
                )
              )
            end
            attr_reader :discounts

            sig do
              params(
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::OrHash
                  ]
              ).void
            end
            attr_writer :discounts

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ProfessionalService
                  ]
                )
              )
            end
            attr_reader :professional_services

            sig do
              params(
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ProfessionalService::OrHash
                  ]
              ).void
            end
            attr_writer :professional_services

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty
                  ]
                )
              )
            end
            attr_reader :reseller_royalties

            sig do
              params(
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::OrHash
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
                commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::OrHash
                  ],
                created_at: Time,
                created_by: String,
                overrides:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OrHash
                  ],
                scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::OrHash
                  ],
                starting_at: Time,
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::OrHash
                  ],
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::OrHash
                  ],
                netsuite_sales_order_id: String,
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ProfessionalService::OrHash
                  ],
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::OrHash
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
                  commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit
                    ],
                  created_at: Time,
                  created_by: String,
                  overrides:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override
                    ],
                  scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge
                    ],
                  starting_at: Time,
                  credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit
                    ],
                  discounts:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount
                    ],
                  netsuite_sales_order_id: String,
                  professional_services:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ProfessionalService
                    ],
                  reseller_royalties:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty
                    ],
                  salesforce_opportunity_id: String
                }
              )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              # (DEPRECATED) Use access_schedule + invoice_schedule instead.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              # commit is not archived.
              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # The contract that this commit will be billed on.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceContract
                  )
                )
              end
              attr_reader :invoice_contract

              sig do
                params(
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceContract::OrHash
                ).void
              end
              attr_writer :invoice_contract

              # The schedule that the customer will be invoiced for this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::OrHash
                ).void
              end
              attr_writer :invoice_schedule

              # A list of ordered events that impact the balance of a commit. For example, an
              # invoice deduction or a rollover.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RolledOverFrom
                  )
                )
              end
              attr_reader :rolled_over_from

              sig do
                params(
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RolledOverFrom::OrHash
                ).void
              end
              attr_writer :rolled_over_from

              sig { returns(T.nilable(Float)) }
              attr_reader :rollover_fraction

              sig { params(rollover_fraction: Float).void }
              attr_writer :rollover_fraction

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::OrHash,
                  amount: Float,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  archived_at: Time,
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceContract::OrHash,
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::OrHash,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::OrSymbol,
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RolledOverFrom::OrHash,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                access_schedule: nil,
                # (DEPRECATED) Use access_schedule + invoice_schedule instead.
                amount: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
                # commit is not archived.
                archived_at: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # The contract that this commit will be billed on.
                invoice_contract: nil,
                # The schedule that the customer will be invoiced for this commit.
                invoice_schedule: nil,
                # A list of ordered events that impact the balance of a commit. For example, an
                # invoice deduction or a rollover.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                rolled_over_from: nil,
                rollover_fraction: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule,
                    amount: Float,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    archived_at: Time,
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    invoice_contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceContract,
                    invoice_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::TaggedSymbol,
                    rolled_over_from:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RolledOverFrom,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID =
                  T.let(
                    :PREPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::TaggedSymbol
                  )
                POSTPAID =
                  T.let(
                    :POSTPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Contract,
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

              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceContract,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                # The contract that this commit will be billed on.
                sig { params(id: String).returns(T.attached_class) }
                def self.new(id:)
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                # The schedule that the customer will be invoiced for this commit.
                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_SEGMENT_START =
                      T.let(
                        :PREPAID_COMMIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_ROLLOVER =
                      T.let(
                        :PREPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_EXPIRATION =
                      T.let(
                        :PREPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CANCELED =
                      T.let(
                        :PREPAID_COMMIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CREDITED =
                      T.let(
                        :PREPAID_COMMIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_INITIAL_BALANCE =
                      T.let(
                        :POSTPAID_COMMIT_INITIAL_BALANCE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_ROLLOVER =
                      T.let(
                        :POSTPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, invoice_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_TRUEUP =
                      T.let(
                        :POSTPAID_COMMIT_TRUEUP,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_MANUAL =
                      T.let(
                        :PREPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_MANUAL =
                      T.let(
                        :POSTPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_EXPIRATION =
                      T.let(
                        :POSTPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Commit::RolledOverFrom,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :commit_id

                sig { returns(String) }
                attr_accessor :contract_id

                sig do
                  params(commit_id: String, contract_id: String).returns(
                    T.attached_class
                  )
                end
                def self.new(commit_id:, contract_id:)
                end

                sig do
                  override.returns({ commit_id: String, contract_id: String })
                end
                def to_hash
                end
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override,
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

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

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

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              sig { returns(T.nilable(Float)) }
              attr_reader :multiplier

              sig { params(multiplier: Float).void }
              attr_writer :multiplier

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideSpecifier
                    ]
                  )
                )
              end
              attr_reader :override_specifiers

              sig do
                params(
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideSpecifier::OrHash
                    ]
                ).void
              end
              attr_writer :override_specifiers

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideTier
                    ]
                  )
                )
              end
              attr_reader :override_tiers

              sig do
                params(
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideTier::OrHash
                    ]
                ).void
              end
              attr_writer :override_tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate
                  )
                )
              end
              attr_reader :overwrite_rate

              sig do
                params(
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::OrHash
                ).void
              end
              attr_writer :overwrite_rate

              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              sig { returns(T.nilable(Float)) }
              attr_reader :priority

              sig { params(priority: Float).void }
              attr_writer :priority

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Product
                  )
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Product::OrHash
                ).void
              end
              attr_writer :product

              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::TaggedSymbol
                  )
                )
              end
              attr_reader :target

              sig do
                params(
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::OrSymbol
                ).void
              end
              attr_writer :target

              # Only set for TIERED rate_type.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Tier::OrHash
                    ]
                ).void
              end
              attr_writer :tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :value

              sig { params(value: T::Hash[Symbol, T.anything]).void }
              attr_writer :value

              sig do
                params(
                  id: String,
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::CreditType::OrHash,
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  is_prorated: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideSpecifier::OrHash
                    ],
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideTier::OrHash
                    ],
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::OrHash,
                  price: Float,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Product::OrHash,
                  quantity: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::OrSymbol,
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::OrSymbol,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Tier::OrHash
                    ],
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::OrSymbol,
                  value: T::Hash[Symbol, T.anything]
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                starting_at:,
                applicable_product_tags: nil,
                credit_type: nil,
                ending_before: nil,
                entitled: nil,
                is_commit_specific: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                multiplier: nil,
                override_specifiers: nil,
                override_tiers: nil,
                overwrite_rate: nil,
                # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                price: nil,
                priority: nil,
                product: nil,
                # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                quantity: nil,
                rate_type: nil,
                target: nil,
                # Only set for TIERED rate_type.
                tiers: nil,
                type: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::CreditType,
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    is_prorated: T::Boolean,
                    multiplier: Float,
                    override_specifiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideSpecifier
                      ],
                    override_tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideTier
                      ],
                    overwrite_rate:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate,
                    price: Float,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Product,
                    quantity: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol,
                    target:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::TaggedSymbol,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Tier
                      ],
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol,
                    value: T::Hash[Symbol, T.anything]
                  }
                )
              end
              def to_hash
              end

              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::CreditType,
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

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideSpecifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

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

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :recurring_credit_ids

                sig { params(recurring_credit_ids: T::Array[String]).void }
                attr_writer :recurring_credit_ids

                sig do
                  params(
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String],
                    recurring_credit_ids: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
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
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverrideTier,
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
                  params(multiplier: Float, size: Float).returns(
                    T.attached_class
                  )
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                end
                attr_accessor :rate_type

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::CreditType::OrHash
                  ).void
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
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::Tier
                      ]
                    )
                  )
                end
                attr_reader :tiers

                sig do
                  params(
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::Tier::OrHash
                      ]
                  ).void
                end
                attr_writer :tiers

                sig do
                  params(
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::OrSymbol,
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::CreditType::OrHash,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    quantity: Float,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::Tier::OrHash
                      ]
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol,
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::CreditType,
                      custom_rate: T::Hash[Symbol, T.anything],
                      is_prorated: T::Boolean,
                      price: Float,
                      quantity: Float,
                      tiers:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::Tier
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAT =
                    T.let(
                      :FLAT,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  PERCENTAGE =
                    T.let(
                      :PERCENTAGE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  SUBSCRIPTION =
                    T.let(
                      :SUBSCRIPTION,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  TIERED =
                    T.let(
                      :TIERED,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  CUSTOM =
                    T.let(
                      :CUSTOM,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::RateType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::CreditType,
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

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::OverwriteRate::Tier,
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

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Product,
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

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Target
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Target::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Tier,
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

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                OVERWRITE =
                  T.let(
                    :OVERWRITE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol
                  )
                MULTIPLIER =
                  T.let(
                    :MULTIPLIER,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Override::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

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
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::OrHash,
                  archived_at: Time,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                archived_at: nil,
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
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule,
                    archived_at: Time,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class Credit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # A list of ordered events that impact the balance of a credit. For example, an
              # invoice deduction or an expiration.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::OrHash,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::OrSymbol,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits.
                access_schedule: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # A list of ordered events that impact the balance of a credit. For example, an
                # invoice deduction or an expiration.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::TaggedSymbol,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT =
                  T.let(
                    :CREDIT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Contract,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_SEGMENT_START =
                      T.let(
                        :CREDIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_EXPIRATION =
                      T.let(
                        :CREDIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CANCELED =
                      T.let(
                        :CREDIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CREDITED =
                      T.let(
                        :CREDIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_MANUAL =
                      T.let(
                        :CREDIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Credit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                custom_fields: nil,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::Discount::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ProfessionalService,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

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
                  id: String,
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
                id:,
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
                    id: String,
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

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::OrSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty::ResellerType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Current < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override
                ]
              )
            end
            attr_accessor :overrides

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge
                ]
              )
            end
            attr_accessor :scheduled_charges

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition
                ]
              )
            end
            attr_accessor :transitions

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule
              )
            end
            attr_reader :usage_statement_schedule

            sig do
              params(
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::OrHash
              ).void
            end
            attr_writer :usage_statement_schedule

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit
                  ]
                )
              )
            end
            attr_reader :credits

            sig do
              params(
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::OrHash
                  ]
              ).void
            end
            attr_writer :credits

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount
                  ]
                )
              )
            end
            attr_reader :discounts

            sig do
              params(
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::OrHash
                  ]
              ).void
            end
            attr_writer :discounts

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration
                )
              )
            end
            attr_reader :prepaid_balance_threshold_configuration

            sig do
              params(
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :prepaid_balance_threshold_configuration

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ProfessionalService
                  ]
                )
              )
            end
            attr_reader :professional_services

            sig do
              params(
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ProfessionalService::OrHash
                  ]
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
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit
                  ]
                )
              )
            end
            attr_reader :recurring_commits

            sig do
              params(
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit
                  ]
                )
              )
            end
            attr_reader :recurring_credits

            sig do
              params(
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_credits

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty
                  ]
                )
              )
            end
            attr_reader :reseller_royalties

            sig do
              params(
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )
              )
            end
            attr_reader :scheduled_charges_on_usage_invoices

            sig do
              params(
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::OrSymbol
              ).void
            end
            attr_writer :scheduled_charges_on_usage_invoices

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration
                )
              )
            end
            attr_reader :spend_threshold_configuration

            sig do
              params(
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :spend_threshold_configuration

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(Float)) }
            attr_reader :total_contract_value

            sig { params(total_contract_value: Float).void }
            attr_writer :total_contract_value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter
                )
              )
            end
            attr_reader :usage_filter

            sig do
              params(
                usage_filter:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::OrHash
              ).void
            end
            attr_writer :usage_filter

            sig do
              params(
                commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::OrHash
                  ],
                created_at: Time,
                created_by: String,
                overrides:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OrHash
                  ],
                scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::OrHash
                  ],
                starting_at: Time,
                transitions:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::OrHash
                  ],
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::OrHash,
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::OrHash
                  ],
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::OrHash
                  ],
                ending_before: Time,
                name: String,
                net_payment_terms_days: Float,
                netsuite_sales_order_id: String,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::OrHash,
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ProfessionalService::OrHash
                  ],
                rate_card_id: String,
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::OrHash
                  ],
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::OrHash
                  ],
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::OrHash
                  ],
                salesforce_opportunity_id: String,
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::OrSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::OrHash,
                total_contract_value: Float,
                usage_filter:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::OrHash
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
                  commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit
                    ],
                  created_at: Time,
                  created_by: String,
                  overrides:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override
                    ],
                  scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge
                    ],
                  starting_at: Time,
                  transitions:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition
                    ],
                  usage_statement_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule,
                  credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit
                    ],
                  discounts:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount
                    ],
                  ending_before: Time,
                  name: String,
                  net_payment_terms_days: Float,
                  netsuite_sales_order_id: String,
                  prepaid_balance_threshold_configuration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration,
                  professional_services:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ProfessionalService
                    ],
                  rate_card_id: String,
                  recurring_commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit
                    ],
                  recurring_credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit
                    ],
                  reseller_royalties:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty
                    ],
                  salesforce_opportunity_id: String,
                  scheduled_charges_on_usage_invoices:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                  spend_threshold_configuration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration,
                  total_contract_value: Float,
                  usage_filter:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter
                }
              )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              # (DEPRECATED) Use access_schedule + invoice_schedule instead.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              # commit is not archived.
              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # The contract that this commit will be billed on.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceContract
                  )
                )
              end
              attr_reader :invoice_contract

              sig do
                params(
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceContract::OrHash
                ).void
              end
              attr_writer :invoice_contract

              # The schedule that the customer will be invoiced for this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::OrHash
                ).void
              end
              attr_writer :invoice_schedule

              # A list of ordered events that impact the balance of a commit. For example, an
              # invoice deduction or a rollover.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RolledOverFrom
                  )
                )
              end
              attr_reader :rolled_over_from

              sig do
                params(
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RolledOverFrom::OrHash
                ).void
              end
              attr_writer :rolled_over_from

              sig { returns(T.nilable(Float)) }
              attr_reader :rollover_fraction

              sig { params(rollover_fraction: Float).void }
              attr_writer :rollover_fraction

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::OrHash,
                  amount: Float,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  archived_at: Time,
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceContract::OrHash,
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::OrHash,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::OrSymbol,
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RolledOverFrom::OrHash,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                access_schedule: nil,
                # (DEPRECATED) Use access_schedule + invoice_schedule instead.
                amount: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
                # commit is not archived.
                archived_at: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # The contract that this commit will be billed on.
                invoice_contract: nil,
                # The schedule that the customer will be invoiced for this commit.
                invoice_schedule: nil,
                # A list of ordered events that impact the balance of a commit. For example, an
                # invoice deduction or a rollover.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                rolled_over_from: nil,
                rollover_fraction: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule,
                    amount: Float,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    archived_at: Time,
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    invoice_contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceContract,
                    invoice_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::TaggedSymbol,
                    rolled_over_from:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RolledOverFrom,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID =
                  T.let(
                    :PREPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::TaggedSymbol
                  )
                POSTPAID =
                  T.let(
                    :POSTPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Contract,
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

              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceContract,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                # The contract that this commit will be billed on.
                sig { params(id: String).returns(T.attached_class) }
                def self.new(id:)
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                # The schedule that the customer will be invoiced for this commit.
                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_SEGMENT_START =
                      T.let(
                        :PREPAID_COMMIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_ROLLOVER =
                      T.let(
                        :PREPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_EXPIRATION =
                      T.let(
                        :PREPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CANCELED =
                      T.let(
                        :PREPAID_COMMIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CREDITED =
                      T.let(
                        :PREPAID_COMMIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_INITIAL_BALANCE =
                      T.let(
                        :POSTPAID_COMMIT_INITIAL_BALANCE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_ROLLOVER =
                      T.let(
                        :POSTPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, invoice_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_TRUEUP =
                      T.let(
                        :POSTPAID_COMMIT_TRUEUP,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_MANUAL =
                      T.let(
                        :PREPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_MANUAL =
                      T.let(
                        :POSTPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_EXPIRATION =
                      T.let(
                        :POSTPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Commit::RolledOverFrom,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :commit_id

                sig { returns(String) }
                attr_accessor :contract_id

                sig do
                  params(commit_id: String, contract_id: String).returns(
                    T.attached_class
                  )
                end
                def self.new(commit_id:, contract_id:)
                end

                sig do
                  override.returns({ commit_id: String, contract_id: String })
                end
                def to_hash
                end
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override,
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

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

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

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              sig { returns(T.nilable(Float)) }
              attr_reader :multiplier

              sig { params(multiplier: Float).void }
              attr_writer :multiplier

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideSpecifier
                    ]
                  )
                )
              end
              attr_reader :override_specifiers

              sig do
                params(
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideSpecifier::OrHash
                    ]
                ).void
              end
              attr_writer :override_specifiers

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideTier
                    ]
                  )
                )
              end
              attr_reader :override_tiers

              sig do
                params(
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideTier::OrHash
                    ]
                ).void
              end
              attr_writer :override_tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate
                  )
                )
              end
              attr_reader :overwrite_rate

              sig do
                params(
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::OrHash
                ).void
              end
              attr_writer :overwrite_rate

              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              sig { returns(T.nilable(Float)) }
              attr_reader :priority

              sig { params(priority: Float).void }
              attr_writer :priority

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Product
                  )
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Product::OrHash
                ).void
              end
              attr_writer :product

              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::TaggedSymbol
                  )
                )
              end
              attr_reader :target

              sig do
                params(
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::OrSymbol
                ).void
              end
              attr_writer :target

              # Only set for TIERED rate_type.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Tier::OrHash
                    ]
                ).void
              end
              attr_writer :tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :value

              sig { params(value: T::Hash[Symbol, T.anything]).void }
              attr_writer :value

              sig do
                params(
                  id: String,
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::CreditType::OrHash,
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  is_prorated: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideSpecifier::OrHash
                    ],
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideTier::OrHash
                    ],
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::OrHash,
                  price: Float,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Product::OrHash,
                  quantity: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::OrSymbol,
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::OrSymbol,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Tier::OrHash
                    ],
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::OrSymbol,
                  value: T::Hash[Symbol, T.anything]
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                starting_at:,
                applicable_product_tags: nil,
                credit_type: nil,
                ending_before: nil,
                entitled: nil,
                is_commit_specific: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                multiplier: nil,
                override_specifiers: nil,
                override_tiers: nil,
                overwrite_rate: nil,
                # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                price: nil,
                priority: nil,
                product: nil,
                # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                quantity: nil,
                rate_type: nil,
                target: nil,
                # Only set for TIERED rate_type.
                tiers: nil,
                type: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::CreditType,
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    is_prorated: T::Boolean,
                    multiplier: Float,
                    override_specifiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideSpecifier
                      ],
                    override_tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideTier
                      ],
                    overwrite_rate:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate,
                    price: Float,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Product,
                    quantity: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol,
                    target:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::TaggedSymbol,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Tier
                      ],
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol,
                    value: T::Hash[Symbol, T.anything]
                  }
                )
              end
              def to_hash
              end

              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::CreditType,
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

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideSpecifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

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

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :recurring_credit_ids

                sig { params(recurring_credit_ids: T::Array[String]).void }
                attr_writer :recurring_credit_ids

                sig do
                  params(
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String],
                    recurring_credit_ids: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
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
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverrideTier,
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
                  params(multiplier: Float, size: Float).returns(
                    T.attached_class
                  )
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                end
                attr_accessor :rate_type

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::CreditType::OrHash
                  ).void
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
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::Tier
                      ]
                    )
                  )
                end
                attr_reader :tiers

                sig do
                  params(
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::Tier::OrHash
                      ]
                  ).void
                end
                attr_writer :tiers

                sig do
                  params(
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::OrSymbol,
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::CreditType::OrHash,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    quantity: Float,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::Tier::OrHash
                      ]
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol,
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::CreditType,
                      custom_rate: T::Hash[Symbol, T.anything],
                      is_prorated: T::Boolean,
                      price: Float,
                      quantity: Float,
                      tiers:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::Tier
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAT =
                    T.let(
                      :FLAT,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  PERCENTAGE =
                    T.let(
                      :PERCENTAGE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  SUBSCRIPTION =
                    T.let(
                      :SUBSCRIPTION,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  TIERED =
                    T.let(
                      :TIERED,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  CUSTOM =
                    T.let(
                      :CUSTOM,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::RateType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::CreditType,
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

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::OverwriteRate::Tier,
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

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Product,
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

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Target
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Target::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Tier,
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

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                OVERWRITE =
                  T.let(
                    :OVERWRITE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol
                  )
                MULTIPLIER =
                  T.let(
                    :MULTIPLIER,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Override::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

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
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::OrHash,
                  archived_at: Time,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                archived_at: nil,
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
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule,
                    archived_at: Time,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :from_contract_id

              sig { returns(String) }
              attr_accessor :to_contract_id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  from_contract_id: String,
                  to_contract_id: String,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUPERSEDE =
                  T.let(
                    :SUPERSEDE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::TaggedSymbol
                  )
                RENEWAL =
                  T.let(
                    :RENEWAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Transition::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Contract usage statements follow a selected cadence based on this date.
              sig { returns(Time) }
              attr_accessor :billing_anchor_date

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              end
              attr_accessor :frequency

              sig do
                params(
                  billing_anchor_date: Time,
                  frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageStatementSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # A list of ordered events that impact the balance of a credit. For example, an
              # invoice deduction or an expiration.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::OrHash,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::OrSymbol,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits.
                access_schedule: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # A list of ordered events that impact the balance of a credit. For example, an
                # invoice deduction or an expiration.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::TaggedSymbol,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT =
                  T.let(
                    :CREDIT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Contract,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_SEGMENT_START =
                      T.let(
                        :CREDIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_EXPIRATION =
                      T.let(
                        :CREDIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CANCELED =
                      T.let(
                        :CREDIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CREDITED =
                      T.let(
                        :CREDIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_MANUAL =
                      T.let(
                        :CREDIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Credit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                custom_fields: nil,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::Discount::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit
                )
              end
              attr_reader :commit

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
                )
              end
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    payment_gate_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit,
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

                sig do
                  params(
                    product_id: String,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    name: String
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
                  name: nil
                )
                end

                sig do
                  override.returns(
                    {
                      product_id: String,
                      applicable_product_ids: T::Array[String],
                      applicable_product_tags: T::Array[String],
                      description: String,
                      name: String
                    }
                  )
                end
                def to_hash
                end
              end

              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                end
                attr_accessor :payment_gate_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                    )
                  )
                end
                attr_reader :stripe_config

                sig do
                  params(
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                  ).void
                end
                attr_writer :stripe_config

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  )
                end
                attr_reader :tax_type

                sig do
                  params(
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                  ).void
                end
                attr_writer :tax_type

                sig do
                  params(
                    payment_gate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                      stripe_config:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      tax_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  EXTERNAL =
                    T.let(
                      :EXTERNAL,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # If left blank, will default to INVOICE
                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  end
                  attr_accessor :payment_type

                  # Only applicable if using Stripe as your payment gateway through Metronome.
                  sig do
                    params(
                      payment_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    INVOICE =
                      T.let(
                        :INVOICE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )
                    PAYMENT_INTENT =
                      T.let(
                        :PAYMENT_INTENT,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ProfessionalService,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

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
                  id: String,
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
                id:,
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
                    id: String,
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

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Contract::OrHash
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

              # The amount the customer should be billed for the commit. Not required.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::InvoiceAmount
                  )
                )
              end
              attr_reader :invoice_amount

              sig do
                params(
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::InvoiceAmount::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::OrSymbol
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

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::InvoiceAmount::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::OrSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float
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
                # be created aligned with the recurring commit's start_date rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    invoice_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol,
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                # The amount of commit to grant.
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

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Contract,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::InvoiceAmount,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Contract::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::OrSymbol
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

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::OrSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float
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
                # be created aligned with the recurring commit's start_date rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol,
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                # The amount of commit to grant.
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

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Contract,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :fraction

              sig { returns(String) }
              attr_accessor :netsuite_reseller_id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::OrSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::Commit
                )
              end
              attr_reader :commit

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig
                )
              end
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::Commit::OrHash,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    payment_gate_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::Commit,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                end
                attr_accessor :payment_gate_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                    )
                  )
                end
                attr_reader :stripe_config

                sig do
                  params(
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                  ).void
                end
                attr_writer :stripe_config

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  )
                end
                attr_reader :tax_type

                sig do
                  params(
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                  ).void
                end
                attr_writer :tax_type

                sig do
                  params(
                    payment_gate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                      stripe_config:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      tax_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  EXTERNAL =
                    T.let(
                      :EXTERNAL,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # If left blank, will default to INVOICE
                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  end
                  attr_accessor :payment_type

                  # Only applicable if using Stripe as your payment gateway through Metronome.
                  sig do
                    params(
                      payment_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    INVOICE =
                      T.let(
                        :INVOICE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )
                    PAYMENT_INTENT =
                      T.let(
                        :PAYMENT_INTENT,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Current
                  )
                )
              end
              attr_reader :current

              sig do
                params(
                  current:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Current::OrHash
                    )
                ).void
              end
              attr_writer :current

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Initial
                )
              end
              attr_reader :initial

              sig do
                params(
                  initial:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Initial::OrHash
                ).void
              end
              attr_writer :initial

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Update
                  ]
                )
              end
              attr_accessor :updates

              sig do
                params(
                  current:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Current::OrHash
                    ),
                  initial:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Initial::OrHash,
                  updates:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Update::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(current:, initial:, updates:)
              end

              sig do
                override.returns(
                  {
                    current:
                      T.nilable(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Current
                      ),
                    initial:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Initial,
                    updates:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Update
                      ]
                  }
                )
              end
              def to_hash
              end

              class Current < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Current,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :group_key

                sig { returns(T::Array[String]) }
                attr_accessor :group_values

                sig { returns(T.nilable(Time)) }
                attr_reader :starting_at

                sig { params(starting_at: Time).void }
                attr_writer :starting_at

                sig do
                  params(
                    group_key: String,
                    group_values: T::Array[String],
                    starting_at: Time
                  ).returns(T.attached_class)
                end
                def self.new(group_key:, group_values:, starting_at: nil)
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

              class Initial < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Initial,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :group_key

                sig { returns(T::Array[String]) }
                attr_accessor :group_values

                sig { returns(T.nilable(Time)) }
                attr_reader :starting_at

                sig { params(starting_at: Time).void }
                attr_writer :starting_at

                sig do
                  params(
                    group_key: String,
                    group_values: T::Array[String],
                    starting_at: Time
                  ).returns(T.attached_class)
                end
                def self.new(group_key:, group_values:, starting_at: nil)
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

              class Update < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Current::UsageFilter::Update,
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

          class Initial < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override
                ]
              )
            end
            attr_accessor :overrides

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge
                ]
              )
            end
            attr_accessor :scheduled_charges

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition
                ]
              )
            end
            attr_accessor :transitions

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule
              )
            end
            attr_reader :usage_statement_schedule

            sig do
              params(
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::OrHash
              ).void
            end
            attr_writer :usage_statement_schedule

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit
                  ]
                )
              )
            end
            attr_reader :credits

            sig do
              params(
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::OrHash
                  ]
              ).void
            end
            attr_writer :credits

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount
                  ]
                )
              )
            end
            attr_reader :discounts

            sig do
              params(
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::OrHash
                  ]
              ).void
            end
            attr_writer :discounts

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration
                )
              )
            end
            attr_reader :prepaid_balance_threshold_configuration

            sig do
              params(
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :prepaid_balance_threshold_configuration

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ProfessionalService
                  ]
                )
              )
            end
            attr_reader :professional_services

            sig do
              params(
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ProfessionalService::OrHash
                  ]
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
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit
                  ]
                )
              )
            end
            attr_reader :recurring_commits

            sig do
              params(
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit
                  ]
                )
              )
            end
            attr_reader :recurring_credits

            sig do
              params(
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_credits

            # This field's availability is dependent on your client's configuration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty
                  ]
                )
              )
            end
            attr_reader :reseller_royalties

            sig do
              params(
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )
              )
            end
            attr_reader :scheduled_charges_on_usage_invoices

            sig do
              params(
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::OrSymbol
              ).void
            end
            attr_writer :scheduled_charges_on_usage_invoices

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration
                )
              )
            end
            attr_reader :spend_threshold_configuration

            sig do
              params(
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :spend_threshold_configuration

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(Float)) }
            attr_reader :total_contract_value

            sig { params(total_contract_value: Float).void }
            attr_writer :total_contract_value

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter
                )
              )
            end
            attr_reader :usage_filter

            sig do
              params(
                usage_filter:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::OrHash
              ).void
            end
            attr_writer :usage_filter

            sig do
              params(
                commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::OrHash
                  ],
                created_at: Time,
                created_by: String,
                overrides:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OrHash
                  ],
                scheduled_charges:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::OrHash
                  ],
                starting_at: Time,
                transitions:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::OrHash
                  ],
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::OrHash,
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::OrHash
                  ],
                discounts:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::OrHash
                  ],
                ending_before: Time,
                name: String,
                net_payment_terms_days: Float,
                netsuite_sales_order_id: String,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::OrHash,
                professional_services:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ProfessionalService::OrHash
                  ],
                rate_card_id: String,
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::OrHash
                  ],
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::OrHash
                  ],
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::OrHash
                  ],
                salesforce_opportunity_id: String,
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::OrSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::OrHash,
                total_contract_value: Float,
                usage_filter:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::OrHash
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
                  commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit
                    ],
                  created_at: Time,
                  created_by: String,
                  overrides:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override
                    ],
                  scheduled_charges:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge
                    ],
                  starting_at: Time,
                  transitions:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition
                    ],
                  usage_statement_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule,
                  credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit
                    ],
                  discounts:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount
                    ],
                  ending_before: Time,
                  name: String,
                  net_payment_terms_days: Float,
                  netsuite_sales_order_id: String,
                  prepaid_balance_threshold_configuration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration,
                  professional_services:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ProfessionalService
                    ],
                  rate_card_id: String,
                  recurring_commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit
                    ],
                  recurring_credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit
                    ],
                  reseller_royalties:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty
                    ],
                  salesforce_opportunity_id: String,
                  scheduled_charges_on_usage_invoices:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                  spend_threshold_configuration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration,
                  total_contract_value: Float,
                  usage_filter:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter
                }
              )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              # (DEPRECATED) Use access_schedule + invoice_schedule instead.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              # commit is not archived.
              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # The contract that this commit will be billed on.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceContract
                  )
                )
              end
              attr_reader :invoice_contract

              sig do
                params(
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceContract::OrHash
                ).void
              end
              attr_writer :invoice_contract

              # The schedule that the customer will be invoiced for this commit.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule
                  )
                )
              end
              attr_reader :invoice_schedule

              sig do
                params(
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::OrHash
                ).void
              end
              attr_writer :invoice_schedule

              # A list of ordered events that impact the balance of a commit. For example, an
              # invoice deduction or a rollover.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RolledOverFrom
                  )
                )
              end
              attr_reader :rolled_over_from

              sig do
                params(
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RolledOverFrom::OrHash
                ).void
              end
              attr_writer :rolled_over_from

              sig { returns(T.nilable(Float)) }
              attr_reader :rollover_fraction

              sig { params(rollover_fraction: Float).void }
              attr_writer :rollover_fraction

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::OrHash,
                  amount: Float,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  archived_at: Time,
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceContract::OrHash,
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::OrHash,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::OrSymbol,
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RolledOverFrom::OrHash,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                access_schedule: nil,
                # (DEPRECATED) Use access_schedule + invoice_schedule instead.
                amount: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
                # commit is not archived.
                archived_at: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # The contract that this commit will be billed on.
                invoice_contract: nil,
                # The schedule that the customer will be invoiced for this commit.
                invoice_schedule: nil,
                # A list of ordered events that impact the balance of a commit. For example, an
                # invoice deduction or a rollover.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                rolled_over_from: nil,
                rollover_fraction: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule,
                    amount: Float,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    archived_at: Time,
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    invoice_contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceContract,
                    invoice_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::TaggedSymbol,
                    rolled_over_from:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RolledOverFrom,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID =
                  T.let(
                    :PREPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::TaggedSymbol
                  )
                POSTPAID =
                  T.let(
                    :POSTPAID,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits purposed with
                # this commit.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Contract,
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

              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceContract,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                # The contract that this commit will be billed on.
                sig { params(id: String).returns(T.attached_class) }
                def self.new(id:)
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                # The schedule that the customer will be invoiced for this commit.
                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_SEGMENT_START =
                      T.let(
                        :PREPAID_COMMIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_ROLLOVER =
                      T.let(
                        :PREPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_EXPIRATION =
                      T.let(
                        :PREPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CANCELED =
                      T.let(
                        :PREPAID_COMMIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_CREDITED =
                      T.let(
                        :PREPAID_COMMIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember5::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_INITIAL_BALANCE =
                      T.let(
                        :POSTPAID_COMMIT_INITIAL_BALANCE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember6::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember7::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :new_contract_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    new_contract_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        new_contract_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_ROLLOVER =
                      T.let(
                        :POSTPAID_COMMIT_ROLLOVER,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember8::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, invoice_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_TRUEUP =
                      T.let(
                        :POSTPAID_COMMIT_TRUEUP,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember9::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PREPAID_COMMIT_MANUAL =
                      T.let(
                        :PREPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember10::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_MANUAL =
                      T.let(
                        :POSTPAID_COMMIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember11::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POSTPAID_COMMIT_EXPIRATION =
                      T.let(
                        :POSTPAID_COMMIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::UnionMember12::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Commit::RolledOverFrom,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :commit_id

                sig { returns(String) }
                attr_accessor :contract_id

                sig do
                  params(commit_id: String, contract_id: String).returns(
                    T.attached_class
                  )
                end
                def self.new(commit_id:, contract_id:)
                end

                sig do
                  override.returns({ commit_id: String, contract_id: String })
                end
                def to_hash
                end
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override,
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

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

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

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              sig { returns(T.nilable(Float)) }
              attr_reader :multiplier

              sig { params(multiplier: Float).void }
              attr_writer :multiplier

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideSpecifier
                    ]
                  )
                )
              end
              attr_reader :override_specifiers

              sig do
                params(
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideSpecifier::OrHash
                    ]
                ).void
              end
              attr_writer :override_specifiers

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideTier
                    ]
                  )
                )
              end
              attr_reader :override_tiers

              sig do
                params(
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideTier::OrHash
                    ]
                ).void
              end
              attr_writer :override_tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate
                  )
                )
              end
              attr_reader :overwrite_rate

              sig do
                params(
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::OrHash
                ).void
              end
              attr_writer :overwrite_rate

              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              sig { returns(T.nilable(Float)) }
              attr_reader :priority

              sig { params(priority: Float).void }
              attr_writer :priority

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Product
                  )
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Product::OrHash
                ).void
              end
              attr_writer :product

              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::TaggedSymbol
                  )
                )
              end
              attr_reader :target

              sig do
                params(
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::OrSymbol
                ).void
              end
              attr_writer :target

              # Only set for TIERED rate_type.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Tier::OrHash
                    ]
                ).void
              end
              attr_writer :tiers

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :value

              sig { params(value: T::Hash[Symbol, T.anything]).void }
              attr_writer :value

              sig do
                params(
                  id: String,
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  credit_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::CreditType::OrHash,
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  is_prorated: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideSpecifier::OrHash
                    ],
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideTier::OrHash
                    ],
                  overwrite_rate:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::OrHash,
                  price: Float,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Product::OrHash,
                  quantity: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::OrSymbol,
                  target:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::OrSymbol,
                  tiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Tier::OrHash
                    ],
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::OrSymbol,
                  value: T::Hash[Symbol, T.anything]
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                starting_at:,
                applicable_product_tags: nil,
                credit_type: nil,
                ending_before: nil,
                entitled: nil,
                is_commit_specific: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                multiplier: nil,
                override_specifiers: nil,
                override_tiers: nil,
                overwrite_rate: nil,
                # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                price: nil,
                priority: nil,
                product: nil,
                # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                quantity: nil,
                rate_type: nil,
                target: nil,
                # Only set for TIERED rate_type.
                tiers: nil,
                type: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::CreditType,
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    is_prorated: T::Boolean,
                    multiplier: Float,
                    override_specifiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideSpecifier
                      ],
                    override_tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideTier
                      ],
                    overwrite_rate:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate,
                    price: Float,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Product,
                    quantity: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol,
                    target:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::TaggedSymbol,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Tier
                      ],
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol,
                    value: T::Hash[Symbol, T.anything]
                  }
                )
              end
              def to_hash
              end

              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::CreditType,
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

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideSpecifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

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

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :recurring_credit_ids

                sig { params(recurring_credit_ids: T::Array[String]).void }
                attr_writer :recurring_credit_ids

                sig do
                  params(
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String],
                    recurring_credit_ids: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
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
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverrideTier,
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
                  params(multiplier: Float, size: Float).returns(
                    T.attached_class
                  )
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                end
                attr_accessor :rate_type

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::CreditType::OrHash
                  ).void
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
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::Tier
                      ]
                    )
                  )
                end
                attr_reader :tiers

                sig do
                  params(
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::Tier::OrHash
                      ]
                  ).void
                end
                attr_writer :tiers

                sig do
                  params(
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::OrSymbol,
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::CreditType::OrHash,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    quantity: Float,
                    tiers:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::Tier::OrHash
                      ]
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol,
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::CreditType,
                      custom_rate: T::Hash[Symbol, T.anything],
                      is_prorated: T::Boolean,
                      price: Float,
                      quantity: Float,
                      tiers:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::Tier
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  FLAT =
                    T.let(
                      :FLAT,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  PERCENTAGE =
                    T.let(
                      :PERCENTAGE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  SUBSCRIPTION =
                    T.let(
                      :SUBSCRIPTION,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  TIERED =
                    T.let(
                      :TIERED,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                    )
                  CUSTOM =
                    T.let(
                      :CUSTOM,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::RateType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::CreditType,
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

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::OverwriteRate::Tier,
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

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Product,
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

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Target
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Target::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Tier,
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

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                OVERWRITE =
                  T.let(
                    :OVERWRITE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol
                  )
                MULTIPLIER =
                  T.let(
                    :MULTIPLIER,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Override::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(Time)) }
              attr_reader :archived_at

              sig { params(archived_at: Time).void }
              attr_writer :archived_at

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
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::OrHash,
                  archived_at: Time,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                archived_at: nil,
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
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule,
                    archived_at: Time,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :from_contract_id

              sig { returns(String) }
              attr_accessor :to_contract_id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  from_contract_id: String,
                  to_contract_id: String,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUPERSEDE =
                  T.let(
                    :SUPERSEDE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::TaggedSymbol
                  )
                RENEWAL =
                  T.let(
                    :RENEWAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Transition::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Contract usage statements follow a selected cadence based on this date.
              sig { returns(Time) }
              attr_accessor :billing_anchor_date

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              end
              attr_accessor :frequency

              sig do
                params(
                  billing_anchor_date: Time,
                  frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageStatementSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # The schedule that the customer will gain access to the credits.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule
                  )
                )
              end
              attr_reader :access_schedule

              sig do
                params(
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::OrHash
                ).void
              end
              attr_writer :access_schedule

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_contract_ids

              sig { params(applicable_contract_ids: T::Array[String]).void }
              attr_writer :applicable_contract_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              sig { returns(T.nilable(Float)) }
              attr_reader :balance

              sig { params(balance: Float).void }
              attr_writer :balance

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # A list of ordered events that impact the balance of a credit. For example, an
              # invoice deduction or an expiration.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5
                      )
                    ]
                  )
                )
              end
              attr_reader :ledger

              sig do
                params(
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::OrHash
                      )
                    ]
                ).void
              end
              attr_writer :ledger

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::TaggedSymbol
                  )
                )
              end
              attr_reader :rate_type

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::OrSymbol
                ).void
              end
              attr_writer :rate_type

              # This field's availability is dependent on your client's configuration.
              sig { returns(T.nilable(String)) }
              attr_reader :salesforce_opportunity_id

              sig { params(salesforce_opportunity_id: String).void }
              attr_writer :salesforce_opportunity_id

              # Prevents the creation of duplicates. If a request to create a commit or credit
              # is made with a uniqueness key that was previously used to create a commit or
              # credit, a new record will not be created and the request will fail with a 409
              # error.
              sig { returns(T.nilable(String)) }
              attr_reader :uniqueness_key

              sig { params(uniqueness_key: String).void }
              attr_writer :uniqueness_key

              sig do
                params(
                  id: String,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Product::OrHash,
                  type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type::OrSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::OrHash,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Contract::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ledger:
                    T::Array[
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::OrHash,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::OrHash
                      )
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::OrSymbol,
                  salesforce_opportunity_id: String,
                  uniqueness_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                type:,
                # The schedule that the customer will gain access to the credits.
                access_schedule: nil,
                applicable_contract_ids: nil,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                # The current balance of the credit or commit. This balance reflects the amount of
                # credit or commit that the customer has access to use at this moment - thus,
                # expired and upcoming credit or commit segments contribute 0 to the balance. The
                # balance will match the sum of all ledger entries with the exception of the case
                # where the sum of negative manual ledger entries exceeds the positive amount
                # remaining on the credit or commit - in that case, the balance will be 0. All
                # manual ledger entries associated with active credit or commit segments are
                # included in the balance, including future-dated manual ledger entries.
                balance: nil,
                contract: nil,
                custom_fields: nil,
                description: nil,
                # A list of ordered events that impact the balance of a credit. For example, an
                # invoice deduction or an expiration.
                ledger: nil,
                name: nil,
                # This field's availability is dependent on your client's configuration.
                netsuite_sales_order_id: nil,
                # If multiple credits or commits are applicable, the one with the lower priority
                # will apply first.
                priority: nil,
                rate_type: nil,
                # This field's availability is dependent on your client's configuration.
                salesforce_opportunity_id: nil,
                # Prevents the creation of duplicates. If a request to create a commit or credit
                # is made with a uniqueness key that was previously used to create a commit or
                # credit, a new record will not be created and the request will fail with a 409
                # error.
                uniqueness_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Product,
                    type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type::TaggedSymbol,
                    access_schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    balance: Float,
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ledger:
                      T::Array[
                        T.any(
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4,
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5
                        )
                      ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::TaggedSymbol,
                    salesforce_opportunity_id: String,
                    uniqueness_key: String
                  }
                )
              end
              def to_hash
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT =
                  T.let(
                    :CREDIT,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem
                    ]
                  )
                end
                attr_accessor :schedule_items

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                # The schedule that the customer will gain access to the credits.
                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem::OrHash
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::CreditType::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(schedule_items:, credit_type: nil)
                end

                sig do
                  override.returns(
                    {
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem
                        ],
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::CreditType
                    }
                  )
                end
                def to_hash
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(Time) }
                  attr_accessor :ending_before

                  sig { returns(Time) }
                  attr_accessor :starting_at

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      ending_before: Time,
                      starting_at: Time
                    ).returns(T.attached_class)
                  end
                  def self.new(id:, amount:, ending_before:, starting_at:)
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

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::AccessSchedule::CreditType,
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

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Contract,
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

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5
                    )
                  end

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_SEGMENT_START =
                      T.let(
                        :CREDIT_SEGMENT_START,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                      T.let(
                        :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember1::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, segment_id:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_EXPIRATION =
                      T.let(
                        :CREDIT_EXPIRATION,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CANCELED =
                      T.let(
                        :CREDIT_CANCELED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember3::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(String) }
                  attr_accessor :segment_id

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    amount:,
                    invoice_id:,
                    segment_id:,
                    timestamp:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        invoice_id: String,
                        segment_id: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_CREDITED =
                      T.let(
                        :CREDIT_CREDITED,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember4::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :reason

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(amount:, reason:, timestamp:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        reason: String,
                        timestamp: Time,
                        type:
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CREDIT_MANUAL =
                      T.let(
                        :CREDIT_MANUAL,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::UnionMember5::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::Ledger::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Credit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule
                )
              end
              attr_reader :schedule

              sig do
                params(
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::OrHash
                ).void
              end
              attr_writer :schedule

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Hash[Symbol, String]).void }
              attr_writer :custom_fields

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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Product::OrHash,
                  schedule:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::OrHash,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                product:,
                schedule:,
                custom_fields: nil,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Product,
                    schedule:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule,
                    custom_fields: T::Hash[Symbol, String],
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Product,
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

              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::CreditType
                    )
                  )
                end
                attr_reader :credit_type

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::CreditType::OrHash
                  ).void
                end
                attr_writer :credit_type

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::ScheduleItem
                      ]
                    )
                  )
                end
                attr_reader :schedule_items

                sig do
                  params(
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).void
                end
                attr_writer :schedule_items

                sig do
                  params(
                    credit_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::CreditType::OrHash,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::ScheduleItem::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(credit_type: nil, schedule_items: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::CreditType,
                      schedule_items:
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::ScheduleItem
                        ]
                    }
                  )
                end
                def to_hash
                end

                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::CreditType,
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

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::Discount::Schedule::ScheduleItem,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :id

                  sig { returns(Float) }
                  attr_accessor :amount

                  sig { returns(String) }
                  attr_accessor :invoice_id

                  sig { returns(Float) }
                  attr_accessor :quantity

                  sig { returns(Time) }
                  attr_accessor :timestamp

                  sig { returns(Float) }
                  attr_accessor :unit_price

                  sig do
                    params(
                      id: String,
                      amount: Float,
                      invoice_id: String,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id:,
                    amount:,
                    invoice_id:,
                    quantity:,
                    timestamp:,
                    unit_price:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        amount: Float,
                        invoice_id: String,
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

            class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit
                )
              end
              attr_reader :commit

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
                )
              end
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    payment_gate_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit,
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

                sig do
                  params(
                    product_id: String,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    name: String
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
                  name: nil
                )
                end

                sig do
                  override.returns(
                    {
                      product_id: String,
                      applicable_product_ids: T::Array[String],
                      applicable_product_tags: T::Array[String],
                      description: String,
                      name: String
                    }
                  )
                end
                def to_hash
                end
              end

              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                end
                attr_accessor :payment_gate_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                    )
                  )
                end
                attr_reader :stripe_config

                sig do
                  params(
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                  ).void
                end
                attr_writer :stripe_config

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  )
                end
                attr_reader :tax_type

                sig do
                  params(
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                  ).void
                end
                attr_writer :tax_type

                sig do
                  params(
                    payment_gate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                      stripe_config:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      tax_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  EXTERNAL =
                    T.let(
                      :EXTERNAL,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # If left blank, will default to INVOICE
                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  end
                  attr_accessor :payment_type

                  # Only applicable if using Stripe as your payment gateway through Metronome.
                  sig do
                    params(
                      payment_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    INVOICE =
                      T.let(
                        :INVOICE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )
                    PAYMENT_INTENT =
                      T.let(
                        :PAYMENT_INTENT,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ProfessionalService,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

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
                  id: String,
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
                id:,
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
                    id: String,
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

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Contract::OrHash
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

              # The amount the customer should be billed for the commit. Not required.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::InvoiceAmount
                  )
                )
              end
              attr_reader :invoice_amount

              sig do
                params(
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::InvoiceAmount::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::OrSymbol
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

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::InvoiceAmount::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::OrSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float
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
                # be created aligned with the recurring commit's start_date rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    invoice_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol,
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                # The amount of commit to grant.
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

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Contract,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::InvoiceAmount,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Contract::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::OrSymbol
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

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::OrSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float
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
                # be created aligned with the recurring commit's start_date rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol,
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                # The amount of commit to grant.
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

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Product,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Contract,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :fraction

              sig { returns(String) }
              attr_accessor :netsuite_reseller_id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::OrSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ResellerRoyalty::ResellerType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::Commit
                )
              end
              attr_reader :commit

              sig do
                params(
                  commit:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::Commit::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig
                )
              end
              attr_reader :payment_gate_config

              sig do
                params(
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::Commit::OrHash,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    payment_gate_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::Commit,
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                end
                attr_accessor :payment_gate_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                    )
                  )
                end
                attr_reader :stripe_config

                sig do
                  params(
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                  ).void
                end
                attr_writer :stripe_config

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  )
                end
                attr_reader :tax_type

                sig do
                  params(
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                  ).void
                end
                attr_writer :tax_type

                sig do
                  params(
                    payment_gate_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                      stripe_config:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      tax_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )
                  EXTERNAL =
                    T.let(
                      :EXTERNAL,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # If left blank, will default to INVOICE
                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  end
                  attr_accessor :payment_type

                  # Only applicable if using Stripe as your payment gateway through Metronome.
                  sig do
                    params(
                      payment_type:
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    INVOICE =
                      T.let(
                        :INVOICE,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )
                    PAYMENT_INTENT =
                      T.let(
                        :PAYMENT_INTENT,
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NONE =
                    T.let(
                      :NONE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )
                  STRIPE =
                    T.let(
                      :STRIPE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Current
                  )
                )
              end
              attr_reader :current

              sig do
                params(
                  current:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Current::OrHash
                    )
                ).void
              end
              attr_writer :current

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Initial
                )
              end
              attr_reader :initial

              sig do
                params(
                  initial:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Initial::OrHash
                ).void
              end
              attr_writer :initial

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Update
                  ]
                )
              end
              attr_accessor :updates

              sig do
                params(
                  current:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Current::OrHash
                    ),
                  initial:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Initial::OrHash,
                  updates:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Update::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(current:, initial:, updates:)
              end

              sig do
                override.returns(
                  {
                    current:
                      T.nilable(
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Current
                      ),
                    initial:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Initial,
                    updates:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Update
                      ]
                  }
                )
              end
              def to_hash
              end

              class Current < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Current,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :group_key

                sig { returns(T::Array[String]) }
                attr_accessor :group_values

                sig { returns(T.nilable(Time)) }
                attr_reader :starting_at

                sig { params(starting_at: Time).void }
                attr_writer :starting_at

                sig do
                  params(
                    group_key: String,
                    group_values: T::Array[String],
                    starting_at: Time
                  ).returns(T.attached_class)
                end
                def self.new(group_key:, group_values:, starting_at: nil)
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

              class Initial < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Initial,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :group_key

                sig { returns(T::Array[String]) }
                attr_accessor :group_values

                sig { returns(T.nilable(Time)) }
                attr_reader :starting_at

                sig { params(starting_at: Time).void }
                attr_writer :starting_at

                sig do
                  params(
                    group_key: String,
                    group_values: T::Array[String],
                    starting_at: Time
                  ).returns(T.attached_class)
                end
                def self.new(group_key:, group_values:, starting_at: nil)
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

              class Update < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::Initial::UsageFilter::Update,
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

          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            end
            attr_accessor :billing_provider

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
                delivery_method:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
                  delivery_method:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS_MARKETPLACE =
                T.let(
                  :aws_marketplace,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :stripe,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              NETSUITE =
                T.let(
                  :netsuite,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              AZURE_MARKETPLACE =
                T.let(
                  :azure_marketplace,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              QUICKBOOKS_ONLINE =
                T.let(
                  :quickbooks_online,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              WORKDAY =
                T.let(
                  :workday,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              GCP_MARKETPLACE =
                T.let(
                  :gcp_marketplace,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DIRECT_TO_BILLING_PROVIDER =
                T.let(
                  :direct_to_billing_provider,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SQS =
                T.let(
                  :aws_sqs,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              TACKLE =
                T.let(
                  :tackle,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SNS =
                T.let(
                  :aws_sns,
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
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

              sig do
                params(
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  name: String
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
                name: nil
              )
              end

              sig do
                override.returns(
                  {
                    product_id: String,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    name: String
                  }
                )
              end
              def to_hash
              end
            end

            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit::OrHash
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
                MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash
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
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
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
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
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
