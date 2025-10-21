# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::CommitCreateParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Schedule for distributing the commit to the customer. For "POSTPAID" commits
          # only one schedule item is allowed and amount must match invoice_schedule total.
          sig do
            returns(
              MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule
            )
          end
          attr_reader :access_schedule

          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::OrHash
            ).void
          end
          attr_writer :access_schedule

          sig { returns(String) }
          attr_accessor :customer_id

          # If multiple credits or commits are applicable, the one with the lower priority
          # will apply first.
          sig { returns(Float) }
          attr_accessor :priority

          # ID of the fixed product associated with the commit. This is required because
          # products are used to invoice the commit amount.
          sig { returns(String) }
          attr_accessor :product_id

          sig do
            returns(
              MetronomeSDK::V1::Customers::CommitCreateParams::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Which contract the commit applies to. If not provided, the commit applies to all
          # contracts.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_contract_ids

          sig { params(applicable_contract_ids: T::Array[String]).void }
          attr_writer :applicable_contract_ids

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

          # The contract that this commit will be billed on. This is required for "POSTPAID"
          # commits and for "PREPAID" commits unless there is no invoice schedule above
          # (i.e., the commit is 'free'), or if do_not_invoice is set to true.
          sig { returns(T.nilable(String)) }
          attr_reader :invoice_contract_id

          sig { params(invoice_contract_id: String).void }
          attr_writer :invoice_contract_id

          # Required for "POSTPAID" commits: the true up invoice will be generated at this
          # time and only one schedule item is allowed; the total must match
          # accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
          # will be a "complimentary" commit with no invoice.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule
              )
            )
          end
          attr_reader :invoice_schedule

          sig do
            params(
              invoice_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::OrHash
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

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::OrSymbol
              )
            )
          end
          attr_reader :rate_type

          sig do
            params(
              rate_type:
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::OrSymbol
            ).void
          end
          attr_writer :rate_type

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
            returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]))
          end
          attr_reader :specifiers

          sig do
            params(
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
            ).void
          end
          attr_writer :specifiers

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
              access_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::OrHash,
              customer_id: String,
              priority: Float,
              product_id: String,
              type:
                MetronomeSDK::V1::Customers::CommitCreateParams::Type::OrSymbol,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_contract_id: String,
              invoice_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              rate_type:
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::OrSymbol,
              salesforce_opportunity_id: String,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Schedule for distributing the commit to the customer. For "POSTPAID" commits
            # only one schedule item is allowed and amount must match invoice_schedule total.
            access_schedule:,
            customer_id:,
            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            priority:,
            # ID of the fixed product associated with the commit. This is required because
            # products are used to invoice the commit amount.
            product_id:,
            type:,
            # Which contract the commit applies to. If not provided, the commit applies to all
            # contracts.
            applicable_contract_ids: nil,
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
            # The contract that this commit will be billed on. This is required for "POSTPAID"
            # commits and for "PREPAID" commits unless there is no invoice schedule above
            # (i.e., the commit is 'free'), or if do_not_invoice is set to true.
            invoice_contract_id: nil,
            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match
            # accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
            # will be a "complimentary" commit with no invoice.
            invoice_schedule: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            rate_type: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # Prevents the creation of duplicates. If a request to create a commit or credit
            # is made with a uniqueness key that was previously used to create a commit or
            # credit, a new record will not be created and the request will fail with a 409
            # error.
            uniqueness_key: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                access_schedule:
                  MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule,
                customer_id: String,
                priority: Float,
                product_id: String,
                type:
                  MetronomeSDK::V1::Customers::CommitCreateParams::Type::OrSymbol,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_contract_id: String,
                invoice_schedule:
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: String,
                rate_type:
                  MetronomeSDK::V1::Customers::CommitCreateParams::RateType::OrSymbol,
                salesforce_opportunity_id: String,
                specifiers: T::Array[MetronomeSDK::CommitSpecifierInput],
                uniqueness_key: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem
                ]
              )
            end
            attr_accessor :schedule_items

            # Defaults to USD (cents) if not passed
            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            # Schedule for distributing the commit to the customer. For "POSTPAID" commits
            # only one schedule item is allowed and amount must match invoice_schedule total.
            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem::OrHash
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
                      MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem
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
                    MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem,
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

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::CommitCreateParams::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID =
              T.let(
                :PREPAID,
                MetronomeSDK::V1::Customers::CommitCreateParams::Type::TaggedSymbol
              )
            POSTPAID =
              T.let(
                :POSTPAID,
                MetronomeSDK::V1::Customers::CommitCreateParams::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::CommitCreateParams::Type::TaggedSymbol
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
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule,
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
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule
                )
              )
            end
            attr_reader :recurring_schedule

            sig do
              params(
                recurring_schedule:
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::OrHash
              ).void
            end
            attr_writer :recurring_schedule

            # Either provide amount or provide both unit_price and quantity.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem
                  ]
                )
              )
            end
            attr_reader :schedule_items

            sig do
              params(
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem::OrHash
                  ]
              ).void
            end
            attr_writer :schedule_items

            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match
            # accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
            # will be a "complimentary" commit with no invoice.
            sig do
              params(
                credit_type_id: String,
                do_not_invoice: T::Boolean,
                recurring_schedule:
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::OrHash,
                schedule_items:
                  T::Array[
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem::OrHash
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
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem
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
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol
                )
              end
              attr_accessor :amount_distribution

              # RFC 3339 timestamp (exclusive).
              sig { returns(Time) }
              attr_accessor :ending_before

              sig do
                returns(
                  MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                  ending_before: Time,
                  frequency:
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::OrSymbol,
                    ending_before: Time,
                    frequency:
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::OrSymbol,
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
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIVIDED =
                  T.let(
                    :DIVIDED,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                DIVIDED_ROUNDED =
                  T.let(
                    :DIVIDED_ROUNDED,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )
                EACH =
                  T.let(
                    :EACH,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution::TaggedSymbol
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
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :SEMI_ANNUAL,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem,
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

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::CommitCreateParams::RateType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMIT_RATE =
              T.let(
                :COMMIT_RATE,
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::TaggedSymbol
              )
            LIST_RATE =
              T.let(
                :LIST_RATE,
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::CommitCreateParams::RateType::TaggedSymbol
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
