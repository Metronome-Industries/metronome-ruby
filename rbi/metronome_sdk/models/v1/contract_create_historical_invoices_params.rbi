# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractCreateHistoricalInvoicesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          returns(
            T::Array[
              MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice
            ]
          )
        end
        attr_accessor :invoices

        sig { returns(T::Boolean) }
        attr_accessor :preview

        sig do
          params(
            invoices:
              T::Array[
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::OrHash
              ],
            preview: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(invoices:, preview:, request_options: {})
        end

        sig do
          override.returns(
            {
              invoices:
                T::Array[
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice
                ],
              preview: T::Boolean,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Invoice < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :contract_id

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(Time) }
          attr_accessor :exclusive_end_date

          sig { returns(Time) }
          attr_accessor :inclusive_start_date

          sig { returns(Time) }
          attr_accessor :issue_date

          sig do
            returns(
              T::Array[
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem
              ]
            )
          end
          attr_accessor :usage_line_items

          # This field's availability is dependent on your client's configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::OrSymbol
              )
            )
          end
          attr_reader :billable_status

          sig do
            params(
              billable_status:
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::OrSymbol
            ).void
          end
          attr_writer :billable_status

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::OrSymbol
              )
            )
          end
          attr_reader :breakdown_granularity

          sig do
            params(
              breakdown_granularity:
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::OrSymbol
            ).void
          end
          attr_writer :breakdown_granularity

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig do
            params(
              contract_id: String,
              credit_type_id: String,
              customer_id: String,
              exclusive_end_date: Time,
              inclusive_start_date: Time,
              issue_date: Time,
              usage_line_items:
                T::Array[
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::OrHash
                ],
              billable_status:
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::OrSymbol,
              breakdown_granularity:
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::OrSymbol,
              custom_fields: T::Hash[Symbol, String]
            ).returns(T.attached_class)
          end
          def self.new(
            contract_id:,
            credit_type_id:,
            customer_id:,
            exclusive_end_date:,
            inclusive_start_date:,
            issue_date:,
            usage_line_items:,
            # This field's availability is dependent on your client's configuration.
            billable_status: nil,
            breakdown_granularity: nil,
            custom_fields: nil
          )
          end

          sig do
            override.returns(
              {
                contract_id: String,
                credit_type_id: String,
                customer_id: String,
                exclusive_end_date: Time,
                inclusive_start_date: Time,
                issue_date: Time,
                usage_line_items:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem
                  ],
                billable_status:
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::OrSymbol,
                breakdown_granularity:
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::OrSymbol,
                custom_fields: T::Hash[Symbol, String]
              }
            )
          end
          def to_hash
          end

          class UsageLineItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(Time) }
            attr_accessor :exclusive_end_date

            sig { returns(Time) }
            attr_accessor :inclusive_start_date

            sig { returns(String) }
            attr_accessor :product_id

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

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity
                  ]
                )
              )
            end
            attr_reader :subtotals_with_quantity

            sig do
              params(
                subtotals_with_quantity:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity::OrHash
                  ]
              ).void
            end
            attr_writer :subtotals_with_quantity

            sig do
              params(
                exclusive_end_date: Time,
                inclusive_start_date: Time,
                product_id: String,
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                subtotals_with_quantity:
                  T::Array[
                    MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              exclusive_end_date:,
              inclusive_start_date:,
              product_id:,
              presentation_group_values: nil,
              pricing_group_values: nil,
              quantity: nil,
              subtotals_with_quantity: nil
            )
            end

            sig do
              override.returns(
                {
                  exclusive_end_date: Time,
                  inclusive_start_date: Time,
                  product_id: String,
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  subtotals_with_quantity:
                    T::Array[
                      MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity
                    ]
                }
              )
            end
            def to_hash
            end

            class SubtotalsWithQuantity < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
                end

              sig { returns(Time) }
              attr_accessor :exclusive_end_date

              sig { returns(Time) }
              attr_accessor :inclusive_start_date

              sig { returns(Float) }
              attr_accessor :quantity

              sig do
                params(
                  exclusive_end_date: Time,
                  inclusive_start_date: Time,
                  quantity: Float
                ).returns(T.attached_class)
              end
              def self.new(
                exclusive_end_date:,
                inclusive_start_date:,
                quantity:
              )
              end

              sig do
                override.returns(
                  {
                    exclusive_end_date: Time,
                    inclusive_start_date: Time,
                    quantity: Float
                  }
                )
              end
              def to_hash
              end
            end
          end

          # This field's availability is dependent on your client's configuration.
          module BillableStatus
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BILLABLE =
              T.let(
                :billable,
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::TaggedSymbol
              )
            UNBILLABLE =
              T.let(
                :unbillable,
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BreakdownGranularity
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HOUR =
              T.let(
                :HOUR,
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::TaggedSymbol
              )
            DAY =
              T.let(
                :DAY,
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity::TaggedSymbol
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
