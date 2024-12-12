# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesParams < Metronome::BaseModel
      # @!attribute [rw] invoices
      #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>]
      required :invoices,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice
                 }
               )

      # @!attribute [rw] preview
      #   @return [Boolean]
      required :preview, Metronome::BooleanModel

      class Invoice < Metronome::BaseModel
        # @!attribute [rw] contract_id
        #   @return [String]
        required :contract_id, String

        # @!attribute [rw] credit_type_id
        #   @return [String]
        required :credit_type_id, String

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] exclusive_end_date
        #   @return [Time]
        required :exclusive_end_date, Time

        # @!attribute [rw] inclusive_start_date
        #   @return [Time]
        required :inclusive_start_date, Time

        # @!attribute [rw] issue_date
        #   @return [Time]
        required :issue_date, Time

        # @!attribute [rw] usage_line_items
        #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
        required :usage_line_items,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem
                   }
                 )

        # @!attribute [rw] billable_status
        #   This field's availability is dependent on your client's configuration.
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
        optional :billable_status,
                 enum: -> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus
                 }

        # @!attribute [rw] breakdown_granularity
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
        optional :breakdown_granularity,
                 enum: -> {
                   Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity
                 }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        class UsageLineItem < Metronome::BaseModel
          # @!attribute [rw] exclusive_end_date
          #   @return [Time]
          required :exclusive_end_date, Time

          # @!attribute [rw] inclusive_start_date
          #   @return [Time]
          required :inclusive_start_date, Time

          # @!attribute [rw] product_id
          #   @return [String]
          required :product_id, String

          # @!attribute [rw] presentation_group_values
          #   @return [Hash]
          optional :presentation_group_values, Hash

          # @!attribute [rw] pricing_group_values
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute [rw] quantity
          #   @return [Float]
          optional :quantity, Float

          # @!attribute [rw] subtotals_with_quantity
          #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
          optional :subtotals_with_quantity,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity
                     }
                   )

          class SubtotalsWithQuantity < Metronome::BaseModel
            # @!attribute [rw] exclusive_end_date
            #   @return [Time]
            required :exclusive_end_date, Time

            # @!attribute [rw] inclusive_start_date
            #   @return [Time]
            required :inclusive_start_date, Time

            # @!attribute [rw] quantity
            #   @return [Float]
            required :quantity, Float

            # @!parse
            #   # Create a new instance of SubtotalsWithQuantity from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :exclusive_end_date
            #   #   @option data [String] :inclusive_start_date
            #   #   @option data [Float] :quantity
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of UsageLineItem from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :exclusive_end_date
          #   #   @option data [String] :inclusive_start_date
          #   #   @option data [String] :product_id
          #   #   @option data [Hash, nil] :presentation_group_values
          #   #   @option data [Hash, nil] :pricing_group_values
          #   #   @option data [Float, nil] :quantity
          #   #   @option data [Array<Object>, nil] :subtotals_with_quantity
          #   def initialize(data = {}) = super
        end

        # This field's availability is dependent on your client's configuration.
        class BillableStatus < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable
        end

        class BreakdownGranularity < Metronome::Enum
          HOUR = :HOUR
          DAY = :DAY
        end

        # @!parse
        #   # Create a new instance of Invoice from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :contract_id
        #   #   @option data [String] :credit_type_id
        #   #   @option data [String] :customer_id
        #   #   @option data [String] :exclusive_end_date
        #   #   @option data [String] :inclusive_start_date
        #   #   @option data [String] :issue_date
        #   #   @option data [Array<Object>] :usage_line_items
        #   #   @option data [String, nil] :billable_status This field's availability is dependent on your client's configuration.
        #   #   @option data [String, nil] :breakdown_granularity
        #   #   @option data [Hash, nil] :custom_fields
        #   def initialize(data = {}) = super
      end
    end
  end
end
