# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractAmendParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractAmendParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the contract to amend
        sig { returns(String) }
        attr_accessor :contract_id

        # ID of the customer whose contract is to be amended
        sig { returns(String) }
        attr_accessor :customer_id

        # inclusive start time for the amendment
        sig { returns(Time) }
        attr_accessor :starting_at

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractAmendParams::Commit])
          )
        end
        attr_reader :commits

        sig do
          params(
            commits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Commit::OrHash]
          ).void
        end
        attr_writer :commits

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractAmendParams::Credit])
          )
        end
        attr_reader :credits

        sig do
          params(
            credits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Credit::OrHash]
          ).void
        end
        attr_writer :credits

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractAmendParams::Discount])
          )
        end
        attr_reader :discounts

        sig do
          params(
            discounts:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Discount::OrHash]
          ).void
        end
        attr_writer :discounts

        # This field's availability is dependent on your client's configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::ContractAmendParams::Override])
          )
        end
        attr_reader :overrides

        sig do
          params(
            overrides:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Override::OrHash]
          ).void
        end
        attr_writer :overrides

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService
              ]
            )
          )
        end
        attr_reader :professional_services

        sig do
          params(
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService::OrHash
              ]
          ).void
        end
        attr_writer :professional_services

        # This field's availability is dependent on your client's configuration.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty]
            )
          )
        end
        attr_reader :reseller_royalties

        sig do
          params(
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::OrHash
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
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::ContractAmendParams::ScheduledCharge]
            )
          )
        end
        attr_reader :scheduled_charges

        sig do
          params(
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::OrHash
              ]
          ).void
        end
        attr_writer :scheduled_charges

        # This field's availability is dependent on your client's configuration.
        sig { returns(T.nilable(Float)) }
        attr_reader :total_contract_value

        sig { params(total_contract_value: Float).void }
        attr_writer :total_contract_value

        sig do
          params(
            contract_id: String,
            customer_id: String,
            starting_at: Time,
            commits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Discount::OrHash],
            netsuite_sales_order_id: String,
            overrides:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Override::OrHash],
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::OrHash
              ],
            total_contract_value: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the contract to amend
          contract_id:,
          # ID of the customer whose contract is to be amended
          customer_id:,
          # inclusive start time for the amendment
          starting_at:,
          commits: nil,
          credits: nil,
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              starting_at: Time,
              commits: T::Array[MetronomeSDK::V1::ContractAmendParams::Commit],
              credits: T::Array[MetronomeSDK::V1::ContractAmendParams::Credit],
              custom_fields: T::Hash[Symbol, String],
              discounts:
                T::Array[MetronomeSDK::V1::ContractAmendParams::Discount],
              netsuite_sales_order_id: String,
              overrides:
                T::Array[MetronomeSDK::V1::ContractAmendParams::Override],
              professional_services:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::ProfessionalService
                ],
              reseller_royalties:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty
                ],
              salesforce_opportunity_id: String,
              scheduled_charges:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge
                ],
              total_contract_value: Float,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::Commit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          sig do
            returns(
              MetronomeSDK::V1::ContractAmendParams::Commit::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          # commits only one schedule item is allowed and amount must match invoice_schedule
          # total.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule
              )
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          # (DEPRECATED) Use access_schedule and invoice_schedule instead.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # Which products the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
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

          # Required for "POSTPAID" commits: the true up invoice will be generated at this
          # time and only one schedule item is allowed; the total must match access_schedule
          # amount. Optional for "PREPAID" commits: if not provided, this will be a
          # "complimentary" commit with no invoice.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig
              )
            )
          end
          attr_reader :payment_gate_config

          sig do
            params(
              payment_gate_config:
                MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::Commit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractAmendParams::Commit::RateType::OrSymbol
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
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::Specifier::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::Commit::Type::OrSymbol,
              access_schedule:
                MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::OrHash,
              amount: Float,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_schedule:
                MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              payment_gate_config:
                MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::OrHash,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractAmendParams::Commit::RateType::OrSymbol,
              rollover_fraction: Float,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::Specifier::OrHash
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
            # Which products the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_tags: nil,
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule,
                amount: Float,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: String,
                payment_gate_config:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractAmendParams::Commit::RateType::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::Specifier
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID =
              T.let(
                :PREPAID,
                MetronomeSDK::V1::ContractAmendParams::Commit::Type::TaggedSymbol
              )
            POSTPAID =
              T.let(
                :POSTPAID,
                MetronomeSDK::V1::ContractAmendParams::Commit::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::Type::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem::OrHash
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem,
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

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem::OrHash
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
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem,
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            sig do
              returns(
                MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol
              )
            end
            attr_accessor :payment_gate_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig
                )
              )
            end
            attr_reader :stripe_config

            sig do
              params(
                stripe_config:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::OrHash
              ).void
            end
            attr_writer :stripe_config

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::OrSymbol
                )
              )
            end
            attr_reader :tax_type

            sig do
              params(
                tax_type:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::OrSymbol
              ).void
            end
            attr_writer :tax_type

            # optionally payment gate this commit
            sig do
              params(
                payment_gate_type:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
                stripe_config:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::OrHash,
                tax_type:
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig,
                  tax_type:
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              EXTERNAL =
                T.let(
                  :EXTERNAL,
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # If left blank, will default to INVOICE
              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                )
              end
              attr_accessor :payment_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                params(
                  payment_type:
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
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
                      MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INVOICE =
                  T.let(
                    :INVOICE,
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                PAYMENT_INTENT =
                  T.let(
                    :PAYMENT_INTENT,
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractAmendParams::Commit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractAmendParams::Commit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Commit::RateType::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Commit::Specifier,
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

        class Credit < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::Credit,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Schedule for distributing the credit to the customer.
          sig do
            returns(
              MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::Credit::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::ContractAmendParams::Credit::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Credit::Specifier
                ]
              )
            )
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Credit::Specifier::OrHash
                ]
            ).void
          end
          attr_writer :specifiers

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::OrHash,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::V1::ContractAmendParams::Credit::RateType::OrSymbol,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Credit::Specifier::OrHash
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
            specifiers: nil
          )
          end

          sig do
            override.returns(
              {
                access_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule,
                product_id: String,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::V1::ContractAmendParams::Credit::RateType::OrSymbol,
                specifiers:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Credit::Specifier
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
                  MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem::OrHash
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
                      MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem,
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

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractAmendParams::Credit::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractAmendParams::Credit::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractAmendParams::Credit::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Credit::RateType::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Credit::Specifier,
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

        class Discount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::Discount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(MetronomeSDK::V1::ContractAmendParams::Discount::Schedule)
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::OrHash,
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
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule,
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
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
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
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Must provide either schedule_items or recurring_schedule.
            sig do
              params(
                credit_type_id: String,
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
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
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem,
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

        class Override < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::Override,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # RFC 3339 timestamp indicating when the override will start applying (inclusive)
          sig { returns(Time) }
          attr_accessor :starting_at

          # tags identifying products whose rates are being overridden. Cannot be used in
          # conjunction with override_specifiers.
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

          # Cannot be used in conjunction with product_id or applicable_product_tags. If
          # provided, the override will apply to all products with the specified specifiers.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier
                ]
              )
            )
          end
          attr_reader :override_specifiers

          sig do
            params(
              override_specifiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier::OrHash
                ]
            ).void
          end
          attr_writer :override_specifiers

          # Required for OVERWRITE type.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate
              )
            )
          end
          attr_reader :overwrite_rate

          sig do
            params(
              overwrite_rate:
                MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::OrHash
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

          # ID of the product whose rate is being overridden. Cannot be used in conjunction
          # with override_specifiers.
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
                MetronomeSDK::V1::ContractAmendParams::Override::Target::OrSymbol
              )
            )
          end
          attr_reader :target

          sig do
            params(
              target:
                MetronomeSDK::V1::ContractAmendParams::Override::Target::OrSymbol
            ).void
          end
          attr_writer :target

          # Required for TIERED type. Must have at least one tier.
          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::V1::ContractAmendParams::Override::Tier]
              )
            )
          end
          attr_reader :tiers

          sig do
            params(
              tiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::Tier::OrHash
                ]
            ).void
          end
          attr_writer :tiers

          # Overwrites are prioritized over multipliers and tiered overrides.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractAmendParams::Override::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                MetronomeSDK::V1::ContractAmendParams::Override::Type::OrSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier::OrHash
                ],
              overwrite_rate:
                MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::OrHash,
              priority: Float,
              product_id: String,
              target:
                MetronomeSDK::V1::ContractAmendParams::Override::Target::OrSymbol,
              tiers:
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::Tier::OrHash
                ],
              type:
                MetronomeSDK::V1::ContractAmendParams::Override::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # RFC 3339 timestamp indicating when the override will start applying (inclusive)
            starting_at:,
            # tags identifying products whose rates are being overridden. Cannot be used in
            # conjunction with override_specifiers.
            applicable_product_tags: nil,
            # RFC 3339 timestamp indicating when the override will stop applying (exclusive)
            ending_before: nil,
            entitled: nil,
            # Indicates whether the override should only apply to commits. Defaults to
            # `false`. If `true`, you can specify relevant commits in `override_specifiers` by
            # passing `commit_ids`. if you do not specify `commit_ids`, then the override will
            # apply when consuming any prepaid or postpaid commit.
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
            # ID of the product whose rate is being overridden. Cannot be used in conjunction
            # with override_specifiers.
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
                    MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier
                  ],
                overwrite_rate:
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate,
                priority: Float,
                product_id: String,
                target:
                  MetronomeSDK::V1::ContractAmendParams::Override::Target::OrSymbol,
                tiers:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Override::Tier
                  ],
                type:
                  MetronomeSDK::V1::ContractAmendParams::Override::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to the
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
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to commits
            # created by the specified recurring commit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_commit_ids

            sig { params(recurring_commit_ids: T::Array[String]).void }
            attr_writer :recurring_commit_ids

            # Can only be used for commit specific overrides. Must be used in conjunction with
            # one of product_id, product_tags, pricing_group_values, or
            # presentation_group_values. If provided, the override will only apply to credits
            # created by the specified recurring credit ids.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :recurring_credit_ids

            sig { params(recurring_credit_ids: T::Array[String]).void }
            attr_writer :recurring_credit_ids

            sig do
              params(
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
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to the
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
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to commits
              # created by the specified recurring commit ids.
              recurring_commit_ids: nil,
              # Can only be used for commit specific overrides. Must be used in conjunction with
              # one of product_id, product_tags, pricing_group_values, or
              # presentation_group_values. If provided, the override will only apply to credits
              # created by the specified recurring credit ids.
              recurring_credit_ids: nil
            )
            end

            sig do
              override.returns(
                {
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
          end

          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::Tier::OrHash
                  ]
              ).void
            end
            attr_writer :tiers

            # Required for OVERWRITE type.
            sig do
              params(
                rate_type:
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::OrSymbol,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                quantity: Float,
                tiers:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::Tier::OrHash
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
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::OrSymbol,
                  credit_type_id: String,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers:
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::Tier
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
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLAT =
                T.let(
                  :FLAT,
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              PERCENTAGE =
                T.let(
                  :PERCENTAGE,
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              SUBSCRIPTION =
                T.let(
                  :SUBSCRIPTION,
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::Tier,
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
                  MetronomeSDK::V1::ContractAmendParams::Override::Target
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::ContractAmendParams::Override::Target::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::ContractAmendParams::Override::Target::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::Target::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::Override::Tier,
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
                  MetronomeSDK::V1::ContractAmendParams::Override::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OVERWRITE =
              T.let(
                :OVERWRITE,
                MetronomeSDK::V1::ContractAmendParams::Override::Type::TaggedSymbol
              )
            MULTIPLIER =
              T.let(
                :MULTIPLIER,
                MetronomeSDK::V1::ContractAmendParams::Override::Type::TaggedSymbol
              )
            TIERED =
              T.let(
                :TIERED,
                MetronomeSDK::V1::ContractAmendParams::Override::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::Override::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService,
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

        class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::OrSymbol
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
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions
              )
            )
          end
          attr_reader :aws_options

          sig do
            params(
              aws_options:
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions
              )
            )
          end
          attr_reader :gcp_options

          sig do
            params(
              gcp_options:
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::OrSymbol,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_options:
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions::OrHash,
              ending_before: T.nilable(Time),
              fraction: Float,
              gcp_options:
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions::OrHash,
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
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::OrSymbol,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                aws_options:
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions,
                ending_before: T.nilable(Time),
                fraction: Float,
                gcp_options:
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions,
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
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS =
              T.let(
                :AWS,
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            AWS_PRO_SERVICE =
              T.let(
                :AWS_PRO_SERVICE,
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP =
              T.let(
                :GCP,
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            GCP_PRO_SERVICE =
              T.let(
                :GCP_PRO_SERVICE,
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType::TaggedSymbol
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
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions,
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
                  MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions,
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

        class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          # Must provide either schedule_items or recurring_schedule.
          sig do
            returns(
              MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule
            )
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::OrHash
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
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::OrHash,
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
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule,
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
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Defaults to USD (cents) if not passed.
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
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Must provide either schedule_items or recurring_schedule.
            sig do
              params(
                credit_type_id: String,
                recurring_schedule:
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Defaults to USD (cents) if not passed.
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
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem
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
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem,
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
      end
    end
  end
end
