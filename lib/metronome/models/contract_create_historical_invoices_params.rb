# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute invoices
      #
      #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>]
      required :invoices,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice] }

      # @!attribute preview
      #
      #   @return [Boolean]
      required :preview, Metronome::BooleanModel

      # @!parse
      #   # @param invoices [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice>]
      #   # @param preview [Boolean]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(invoices:, preview:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # invoice => {
      #   contract_id: String,
      #   credit_type_id: String,
      #   customer_id: String,
      #   exclusive_end_date: Time,
      #   inclusive_start_date: Time,
      #   **_
      # }
      # ```
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
                 -> { Metronome::ArrayOf[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem] }

        # @!attribute [r] billable_status
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus, nil]
        optional :billable_status,
                 enum: -> { Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
        #   attr_writer :billable_status

        # @!attribute [r] breakdown_granularity
        #
        #   @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity, nil]
        optional :breakdown_granularity,
                 enum: -> { Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
        #   attr_writer :breakdown_granularity

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!parse
        #   # @param contract_id [String]
        #   # @param credit_type_id [String]
        #   # @param customer_id [String]
        #   # @param exclusive_end_date [Time]
        #   # @param inclusive_start_date [Time]
        #   # @param issue_date [Time]
        #   # @param usage_line_items [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
        #   # @param billable_status [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
        #   # @param breakdown_granularity [Symbol, Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
        #   # @param custom_fields [Hash{Symbol=>String}]
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

        # @example
        # ```ruby
        # usage_line_item => {
        #   exclusive_end_date: Time,
        #   inclusive_start_date: Time,
        #   product_id: String,
        #   presentation_group_values: -> { Metronome::HashOf[String] === _1 },
        #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
        #   **_
        # }
        # ```
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

          # @!attribute [r] presentation_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :presentation_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :presentation_group_values

          # @!attribute [r] pricing_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :pricing_group_values

          # @!attribute [r] quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :quantity

          # @!attribute [r] subtotals_with_quantity
          #
          #   @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>, nil]
          optional :subtotals_with_quantity,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity] }

          # @!parse
          #   # @return [Array<Metronome::Models::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
          #   attr_writer :subtotals_with_quantity

          # @!parse
          #   # @param exclusive_end_date [Time]
          #   # @param inclusive_start_date [Time]
          #   # @param product_id [String]
          #   # @param presentation_group_values [Hash{Symbol=>String}]
          #   # @param pricing_group_values [Hash{Symbol=>String}]
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

          # @example
          # ```ruby
          # subtotals_with_quantity => {
          #   exclusive_end_date: Time,
          #   inclusive_start_date: Time,
          #   quantity: Float
          # }
          # ```
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
            #   # @param exclusive_end_date [Time]
            #   # @param inclusive_start_date [Time]
            #   # @param quantity [Float]
            #   #
            #   def initialize(exclusive_end_date:, inclusive_start_date:, quantity:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # @abstract
        #
        # This field's availability is dependent on your client's configuration.
        #
        # @example
        # ```ruby
        # case billable_status
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case breakdown_granularity
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
