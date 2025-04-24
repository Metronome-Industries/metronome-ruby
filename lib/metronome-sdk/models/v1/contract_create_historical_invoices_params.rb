# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractCreateHistoricalInvoicesParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute invoices
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>]
        required :invoices,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice] }

        # @!attribute preview
        #
        #   @return [Boolean]
        required :preview, MetronomeSDK::BooleanModel

        # @!parse
        #   # @param invoices [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>]
        #   # @param preview [Boolean]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(invoices:, preview:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Invoice < MetronomeSDK::BaseModel
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
          #   @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
          required :usage_line_items,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem] }

          # @!attribute [r] billable_status
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus, nil]
          optional :billable_status,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
          #   attr_writer :billable_status

          # @!attribute [r] breakdown_granularity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity, nil]
          optional :breakdown_granularity,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
          #   attr_writer :breakdown_granularity

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

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
          #   # @param usage_line_items [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
          #   # @param billable_status [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus]
          #   # @param breakdown_granularity [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
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

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class UsageLineItem < MetronomeSDK::BaseModel
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
            optional :presentation_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :presentation_group_values

            # @!attribute [r] pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::HashOf[String]

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
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>, nil]
            optional :subtotals_with_quantity,
                     -> do
                       MetronomeSDK::ArrayOf[
                       MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity
                       ]
                     end

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
            #   attr_writer :subtotals_with_quantity

            # @!parse
            #   # @param exclusive_end_date [Time]
            #   # @param inclusive_start_date [Time]
            #   # @param product_id [String]
            #   # @param presentation_group_values [Hash{Symbol=>String}]
            #   # @param pricing_group_values [Hash{Symbol=>String}]
            #   # @param quantity [Float]
            #   # @param subtotals_with_quantity [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]
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

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class SubtotalsWithQuantity < MetronomeSDK::BaseModel
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

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
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
          class BillableStatus < MetronomeSDK::Enum
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
          class BreakdownGranularity < MetronomeSDK::Enum
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
end
