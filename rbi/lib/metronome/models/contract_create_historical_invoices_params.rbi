# typed: strong

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice]) }
      def invoices
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice])
          .returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice])
      end
      def invoices=(_)
      end

      sig { returns(T::Boolean) }
      def preview
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def preview=(_)
      end

      sig do
        params(
          invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
          preview: T::Boolean,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(invoices:, preview:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
              preview: T::Boolean,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Invoice < Metronome::BaseModel
        sig { returns(String) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { returns(String) }
        def credit_type_id
        end

        sig { params(_: String).returns(String) }
        def credit_type_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Time) }
        def exclusive_end_date
        end

        sig { params(_: Time).returns(Time) }
        def exclusive_end_date=(_)
        end

        sig { returns(Time) }
        def inclusive_start_date
        end

        sig { params(_: Time).returns(Time) }
        def inclusive_start_date=(_)
        end

        sig { returns(Time) }
        def issue_date
        end

        sig { params(_: Time).returns(Time) }
        def issue_date=(_)
        end

        sig { returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem]) }
        def usage_line_items
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem])
            .returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem])
        end
        def usage_line_items=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def billable_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def billable_status=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def breakdown_granularity
        end

        sig { params(_: Symbol).returns(Symbol) }
        def breakdown_granularity=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig do
          params(
            contract_id: String,
            credit_type_id: String,
            customer_id: String,
            exclusive_end_date: Time,
            inclusive_start_date: Time,
            issue_date: Time,
            usage_line_items: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem],
            billable_status: Symbol,
            breakdown_granularity: Symbol,
            custom_fields: T::Hash[Symbol, String]
          )
            .void
        end
        def initialize(
          contract_id:,
          credit_type_id:,
          customer_id:,
          exclusive_end_date:,
          inclusive_start_date:,
          issue_date:,
          usage_line_items:,
          billable_status: nil,
          breakdown_granularity: nil,
          custom_fields: nil
        )
        end

        sig do
          override
            .returns(
              {
                contract_id: String,
                credit_type_id: String,
                customer_id: String,
                exclusive_end_date: Time,
                inclusive_start_date: Time,
                issue_date: Time,
                usage_line_items: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem],
                billable_status: Symbol,
                breakdown_granularity: Symbol,
                custom_fields: T::Hash[Symbol, String]
              }
            )
        end
        def to_hash
        end

        class UsageLineItem < Metronome::BaseModel
          sig { returns(Time) }
          def exclusive_end_date
          end

          sig { params(_: Time).returns(Time) }
          def exclusive_end_date=(_)
          end

          sig { returns(Time) }
          def inclusive_start_date
          end

          sig { params(_: Time).returns(Time) }
          def inclusive_start_date=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def presentation_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def presentation_group_values=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def pricing_group_values=(_)
          end

          sig { returns(T.nilable(Float)) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
              )
            )
          end
          def subtotals_with_quantity
          end

          sig do
            params(
              _: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
            )
              .returns(
                T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
              )
          end
          def subtotals_with_quantity=(_)
          end

          sig do
            params(
              exclusive_end_date: Time,
              inclusive_start_date: Time,
              product_id: String,
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              quantity: Float,
              subtotals_with_quantity: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
            )
              .void
          end
          def initialize(
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
            override
              .returns(
                {
                  exclusive_end_date: Time,
                  inclusive_start_date: Time,
                  product_id: String,
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  quantity: Float,
                  subtotals_with_quantity: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
                }
              )
          end
          def to_hash
          end

          class SubtotalsWithQuantity < Metronome::BaseModel
            sig { returns(Time) }
            def exclusive_end_date
            end

            sig { params(_: Time).returns(Time) }
            def exclusive_end_date=(_)
            end

            sig { returns(Time) }
            def inclusive_start_date
            end

            sig { params(_: Time).returns(Time) }
            def inclusive_start_date=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { params(exclusive_end_date: Time, inclusive_start_date: Time, quantity: Float).void }
            def initialize(exclusive_end_date:, inclusive_start_date:, quantity:)
            end

            sig { override.returns({exclusive_end_date: Time, inclusive_start_date: Time, quantity: Float}) }
            def to_hash
            end
          end
        end

        class BillableStatus < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class BreakdownGranularity < Metronome::Enum
          abstract!

          HOUR = :HOUR
          DAY = :DAY

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
