# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesParams < Metronome::BaseModel
      # @!attribute invoices
      #
      #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>]
      required :invoices,
               Metronome::ArrayOf[-> { Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice }]

      # @!attribute preview
      #
      #   @return [Boolean]
      required :preview, Metronome::BooleanModel

      # @!parse
      #   # @param invoices [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>]
      #   # @param preview [Boolean]
      #   #
      #   def initialize(invoices:, preview:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Invoice < Metronome::BaseModel
        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute credit_type_id
        #
        #   @return [String]
        required :credit_type_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute exclusive_end_date
        #
        #   @return [Time]
        required :exclusive_end_date, Time

        # @!attribute inclusive_start_date
        #
        #   @return [Time]
        required :inclusive_start_date, Time

        # @!attribute issue_date
        #
        #   @return [Time]
        required :issue_date, Time

        # @!attribute usage_line_items
        #
        #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
        required :usage_line_items,
                 Metronome::ArrayOf[-> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem
                 }]

        # @!attribute billable_status
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
        optional :billable_status,
                 enum: -> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus
                 }

        # @!attribute breakdown_granularity
        #
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
        optional :breakdown_granularity,
                 enum: -> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity
                 }

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol => String}]
        optional :custom_fields, Metronome::HashOf[String]

        # @!parse
        #   # @param contract_id [String]
        #   #
        #   # @param credit_type_id [String]
        #   #
        #   # @param customer_id [String]
        #   #
        #   # @param exclusive_end_date [String]
        #   #
        #   # @param inclusive_start_date [String]
        #   #
        #   # @param issue_date [String]
        #   #
        #   # @param usage_line_items [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
        #   #
        #   # @param billable_status [String] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param breakdown_granularity [String]
        #   #
        #   # @param custom_fields [Hash{Symbol => String}]
        #   #
        #   def initialize(
        #     contract_id:,
        #     credit_type_id:,
        #     customer_id:,
        #     exclusive_end_date:,
        #     inclusive_start_date:,
        #     issue_date:,
        #     usage_line_items:,
        #     billable_status: nil,
        #     breakdown_granularity: nil,
        #     custom_fields: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class UsageLineItem < Metronome::BaseModel
          # @!attribute exclusive_end_date
          #
          #   @return [Time]
          required :exclusive_end_date, Time

          # @!attribute inclusive_start_date
          #
          #   @return [Time]
          required :inclusive_start_date, Time

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute presentation_group_values
          #
          #   @return [Hash{Symbol => String}]
          optional :presentation_group_values, Metronome::HashOf[String]

          # @!attribute pricing_group_values
          #
          #   @return [Hash{Symbol => String}]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!attribute quantity
          #
          #   @return [Float]
          optional :quantity, Float

          # @!attribute subtotals_with_quantity
          #
          #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
          optional :subtotals_with_quantity,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity
                   }]

          # @!parse
          #   # @param exclusive_end_date [String]
          #   # @param inclusive_start_date [String]
          #   # @param product_id [String]
          #   # @param presentation_group_values [Hash{Symbol => String}]
          #   # @param pricing_group_values [Hash{Symbol => String}]
          #   # @param quantity [Float]
          #   # @param subtotals_with_quantity [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
          #   #
          #   def initialize(
          #     exclusive_end_date:,
          #     inclusive_start_date:,
          #     product_id:,
          #     presentation_group_values: nil,
          #     pricing_group_values: nil,
          #     quantity: nil,
          #     subtotals_with_quantity: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class SubtotalsWithQuantity < Metronome::BaseModel
            # @!attribute exclusive_end_date
            #
            #   @return [Time]
            required :exclusive_end_date, Time

            # @!attribute inclusive_start_date
            #
            #   @return [Time]
            required :inclusive_start_date, Time

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!parse
            #   # @param exclusive_end_date [String]
            #   # @param inclusive_start_date [String]
            #   # @param quantity [Float]
            #   #
            #   def initialize(exclusive_end_date:, inclusive_start_date:, quantity:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # This field's availability is dependent on your client's configuration.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :billable
        #   # ...
        # in :unbillable
        #   # ...
        # end
        # ```
        class BillableStatus < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable

          finalize!
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :HOUR
        #   # ...
        # in :DAY
        #   # ...
        # end
        # ```
        class BreakdownGranularity < Metronome::Enum
          HOUR = :HOUR
          DAY = :DAY

          finalize!
        end
      end
    end
  end
end
