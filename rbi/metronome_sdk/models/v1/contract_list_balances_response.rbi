# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractListBalancesResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::Variants
            ]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data:
              T::Array[
                T.any(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::OrHash,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::OrHash
                )
              ],
            next_page: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, next_page:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::Variants
                ],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Data
          extend MetronomeSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0,
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1
              )
            end

          class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits purposed with
            # this commit.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::OrHash
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
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract::OrHash
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

            # Optional configuration for commit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            # The contract that this commit will be billed on.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract
                )
              )
            end
            attr_reader :invoice_contract

            sig do
              params(
                invoice_contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract::OrHash
              ).void
            end
            attr_writer :invoice_contract

            # The schedule that the customer will be invoiced for this commit.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule
                )
              )
            end
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            # A list of ordered events that impact the balance of a commit. For example, an
            # invoice deduction or a rollover.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::Variants
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::OrHash
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
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::OrSymbol
              ).void
            end
            attr_writer :rate_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom
                )
              )
            end
            attr_reader :rolled_over_from

            sig do
              params(
                rolled_over_from:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom::OrHash
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

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Specifier::OrHash
                  ]
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
                id: String,
                product:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product::OrHash,
                type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::OrHash,
                amount: Float,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                archived_at: Time,
                balance: Float,
                contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract::OrHash,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::OrHash,
                invoice_contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract::OrHash,
                invoice_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::OrHash,
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::OrHash
                    )
                  ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::OrSymbol,
                rolled_over_from:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom::OrHash,
                rollover_fraction: Float,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Specifier::OrHash
                  ],
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
              # Optional configuration for commit hierarchy access control
              hierarchy_configuration: nil,
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
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              specifiers: nil,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product,
                  type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::TaggedSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule,
                  amount: Float,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  archived_at: Time,
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration,
                  invoice_contract:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract,
                  invoice_schedule:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule,
                  ledger:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::Variants
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::TaggedSymbol,
                  rolled_over_from:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Specifier
                    ],
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID =
                T.let(
                  :PREPAID,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::TaggedSymbol
                )
              POSTPAID =
                T.let(
                  :POSTPAID,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              sig do
                params(
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem::OrHash
                    ],
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType::OrHash
                ).returns(T.attached_class)
              end
              def self.new(schedule_items:, credit_type: nil)
              end

              sig do
                override.returns(
                  {
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem,
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for commit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
                  end

                class Type < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::HierarchyConfiguration::ChildAccess::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem
                    ]
                  )
                )
              end
              attr_reader :schedule_items

              sig do
                params(
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem::OrHash
                    ]
                ).void
              end
              attr_writer :schedule_items

              # The schedule that the customer will be invoiced for this commit.
              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType::OrHash,
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(credit_type: nil, schedule_items: nil)
              end

              sig do
                override.returns(
                  {
                    credit_type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType,
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType,
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Time) }
                attr_accessor :timestamp

                sig { returns(Float) }
                attr_accessor :unit_price

                sig { returns(T.nilable(String)) }
                attr_accessor :invoice_id

                sig do
                  params(
                    id: String,
                    amount: Float,
                    quantity: Float,
                    timestamp: Time,
                    unit_price: Float,
                    invoice_id: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  id:,
                  amount:,
                  quantity:,
                  timestamp:,
                  unit_price:,
                  invoice_id: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      amount: Float,
                      quantity: Float,
                      timestamp: Time,
                      unit_price: Float,
                      invoice_id: T.nilable(String)
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13
                  )
                end

              class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_SEGMENT_START =
                    T.let(
                      :PREPAID_COMMIT_SEGMENT_START,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_ROLLOVER =
                    T.let(
                      :PREPAID_COMMIT_ROLLOVER,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_EXPIRATION =
                    T.let(
                      :PREPAID_COMMIT_EXPIRATION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_CANCELED =
                    T.let(
                      :PREPAID_COMMIT_CANCELED,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_CREDITED =
                    T.let(
                      :PREPAID_COMMIT_CREDITED,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT =
                    T.let(
                      :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_INITIAL_BALANCE =
                    T.let(
                      :POSTPAID_COMMIT_INITIAL_BALANCE,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_ROLLOVER =
                    T.let(
                      :POSTPAID_COMMIT_ROLLOVER,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_TRUEUP =
                    T.let(
                      :POSTPAID_COMMIT_TRUEUP,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_MANUAL =
                    T.let(
                      :PREPAID_COMMIT_MANUAL,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_MANUAL =
                    T.let(
                      :POSTPAID_COMMIT_MANUAL,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember13 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_EXPIRATION =
                    T.let(
                      :POSTPAID_COMMIT_EXPIRATION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember13::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::Variants
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom,
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

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Specifier,
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

          class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule
                )
              )
            end
            attr_reader :access_schedule

            sig do
              params(
                access_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::OrHash
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
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract::OrHash
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

            # Optional configuration for credit hierarchy access control
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration
                )
              )
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::OrHash
              ).void
            end
            attr_writer :hierarchy_configuration

            # A list of ordered events that impact the balance of a credit. For example, an
            # invoice deduction or an expiration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::Variants
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::OrHash
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
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::OrSymbol
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
            # specifiers to contribute to a commit's or credit's drawdown.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Specifier::OrHash
                  ]
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
                id: String,
                product:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product::OrHash,
                type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type::OrSymbol,
                access_schedule:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::OrHash,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                balance: Float,
                contract:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract::OrHash,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                hierarchy_configuration:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::OrHash,
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::OrHash
                    )
                  ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::OrSymbol,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Specifier::OrHash
                  ],
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
              # Optional configuration for credit hierarchy access control
              hierarchy_configuration: nil,
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
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              specifiers: nil,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product,
                  type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type::TaggedSymbol,
                  access_schedule:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  hierarchy_configuration:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration,
                  ledger:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::Variants
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::TaggedSymbol,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Specifier
                    ],
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem
                  ]
                )
              end
              attr_accessor :schedule_items

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType
                  )
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

              # The schedule that the customer will gain access to the credits.
              sig do
                params(
                  schedule_items:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem::OrHash
                    ],
                  credit_type:
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType::OrHash
                ).returns(T.attached_class)
              end
              def self.new(schedule_items:, credit_type: nil)
              end

              sig do
                override.returns(
                  {
                    schedule_items:
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem
                      ],
                    credit_type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType
                  }
                )
              end
              def to_hash
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem,
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Variants
                )
              end
              attr_accessor :child_access

              # Optional configuration for credit hierarchy access control
              sig do
                params(
                  child_access:
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::OrHash,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(child_access:)
              end

              sig do
                override.returns(
                  {
                    child_access:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Variants
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2
                    )
                  end

                class Type < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ALL =
                      T.let(
                        :ALL,
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Type::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Array[String]) }
                  attr_accessor :contract_ids

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      contract_ids: T::Array[String],
                      type:
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(contract_ids:, type:)
                  end

                  sig do
                    override.returns(
                      {
                        contract_ids: T::Array[String],
                        type:
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTRACT_IDS =
                      T.let(
                        :CONTRACT_IDS,
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::UnionMember2::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::HierarchyConfiguration::ChildAccess::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            module Ledger
              extend MetronomeSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6
                  )
                end

              class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_SEGMENT_START =
                    T.let(
                      :CREDIT_SEGMENT_START,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_EXPIRATION =
                    T.let(
                      :CREDIT_EXPIRATION,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_CANCELED =
                    T.let(
                      :CREDIT_CANCELED,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :contract_id

                sig { params(contract_id: String).void }
                attr_writer :contract_id

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type::OrSymbol,
                    contract_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:,
                  contract_id: nil
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type::TaggedSymbol,
                      contract_id: String
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_CREDITED =
                    T.let(
                      :CREDIT_CREDITED,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_MANUAL =
                    T.let(
                      :CREDIT_MANUAL,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type::TaggedSymbol
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
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6,
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type::OrSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_SEAT_BASED_ADJUSTMENT =
                    T.let(
                      :CREDIT_SEAT_BASED_ADJUSTMENT,
                      MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember6::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::Variants
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Specifier,
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

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
