# typed: strong

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
            preview: T::Boolean
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice]) }
      attr_accessor :invoices

      sig { returns(T::Boolean) }
      attr_accessor :preview

      sig do
        params(
          invoices: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice],
          preview: T::Boolean,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(invoices:, preview:, request_options: {}); end

      sig { returns(Metronome::Models::ContractCreateHistoricalInvoicesParams::Shape) }
      def to_h; end

      class Invoice < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

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
          returns(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem])
        end
        attr_accessor :usage_line_items

        sig { returns(T.nilable(Symbol)) }
        attr_reader :billable_status

        sig { params(billable_status: Symbol).void }
        attr_writer :billable_status

        sig { returns(T.nilable(Symbol)) }
        attr_reader :breakdown_granularity

        sig { params(breakdown_granularity: Symbol).void }
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
            usage_line_items: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem],
            billable_status: Symbol,
            breakdown_granularity: Symbol,
            custom_fields: T::Hash[Symbol, String]
          ).void
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
        ); end

        sig { returns(Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::Shape) }
        def to_h; end

        class UsageLineItem < Metronome::BaseModel
          Shape = T.type_alias do
            {
              exclusive_end_date: Time,
              inclusive_start_date: Time,
              product_id: String,
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              quantity: Float,
              subtotals_with_quantity: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
            }
          end

          sig { returns(Time) }
          attr_accessor :exclusive_end_date

          sig { returns(Time) }
          attr_accessor :inclusive_start_date

          sig { returns(String) }
          attr_accessor :product_id

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :presentation_group_values

          sig { params(presentation_group_values: T::Hash[Symbol, String]).void }
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
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]))
          end
          attr_reader :subtotals_with_quantity

          sig do
            params(
              subtotals_with_quantity: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
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
              subtotals_with_quantity: T::Array[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity]
            ).void
          end
          def initialize(
            exclusive_end_date:,
            inclusive_start_date:,
            product_id:,
            presentation_group_values: nil,
            pricing_group_values: nil,
            quantity: nil,
            subtotals_with_quantity: nil
          ); end

          sig do
            returns(Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::Shape)
          end
          def to_h; end

          class SubtotalsWithQuantity < Metronome::BaseModel
            Shape = T.type_alias { {exclusive_end_date: Time, inclusive_start_date: Time, quantity: Float} }

            sig { returns(Time) }
            attr_accessor :exclusive_end_date

            sig { returns(Time) }
            attr_accessor :inclusive_start_date

            sig { returns(Float) }
            attr_accessor :quantity

            sig { params(exclusive_end_date: Time, inclusive_start_date: Time, quantity: Float).void }
            def initialize(exclusive_end_date:, inclusive_start_date:, quantity:); end

            sig do
              returns(Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity::Shape)
            end
            def to_h; end
          end
        end

        class BillableStatus < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class BreakdownGranularity < Metronome::Enum
          abstract!

          HOUR = :HOUR
          DAY = :DAY

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
