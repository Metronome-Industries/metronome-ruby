# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#create_historical_invoices
      class ContractCreateHistoricalInvoicesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute invoices
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>]
        required :invoices,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice] }

        # @!attribute preview
        #
        #   @return [Boolean]
        required :preview, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(invoices:, preview:, request_options: {})
        #   @param invoices [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice>]
        #   @param preview [Boolean]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Invoice < MetronomeSDK::Internal::Type::BaseModel
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
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem] }

          # @!attribute billable_status
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus, nil]
          optional :billable_status,
                   enum: -> { MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus }

          # @!attribute breakdown_granularity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity, nil]
          optional :breakdown_granularity,
                   enum: -> { MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!method initialize(contract_id:, credit_type_id:, customer_id:, exclusive_end_date:, inclusive_start_date:, issue_date:, usage_line_items:, billable_status: nil, breakdown_granularity: nil, custom_fields: nil)
          #   @param contract_id [String]
          #
          #   @param credit_type_id [String]
          #
          #   @param customer_id [String]
          #
          #   @param exclusive_end_date [Time]
          #
          #   @param inclusive_start_date [Time]
          #
          #   @param issue_date [Time]
          #
          #   @param usage_line_items [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem>]
          #
          #   @param billable_status [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BillableStatus] This field's availability is dependent on your client's configuration.
          #
          #   @param breakdown_granularity [Symbol, MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::BreakdownGranularity]
          #
          #   @param custom_fields [Hash{Symbol=>String}]

          class UsageLineItem < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute quantity
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute subtotals_with_quantity
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>, nil]
            optional :subtotals_with_quantity,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity] }

            # @!method initialize(exclusive_end_date:, inclusive_start_date:, product_id:, presentation_group_values: nil, pricing_group_values: nil, quantity: nil, subtotals_with_quantity: nil)
            #   @param exclusive_end_date [Time]
            #   @param inclusive_start_date [Time]
            #   @param product_id [String]
            #   @param presentation_group_values [Hash{Symbol=>String}]
            #   @param pricing_group_values [Hash{Symbol=>String}]
            #   @param quantity [Float]
            #   @param subtotals_with_quantity [Array<MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice::UsageLineItem::SubtotalsWithQuantity>]

            class SubtotalsWithQuantity < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(exclusive_end_date:, inclusive_start_date:, quantity:)
              #   @param exclusive_end_date [Time]
              #   @param inclusive_start_date [Time]
              #   @param quantity [Float]
            end
          end

          # This field's availability is dependent on your client's configuration.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice#billable_status
          module BillableStatus
            extend MetronomeSDK::Internal::Type::Enum

            BILLABLE = :billable
            UNBILLABLE = :unbillable

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesParams::Invoice#breakdown_granularity
          module BreakdownGranularity
            extend MetronomeSDK::Internal::Type::Enum

            HOUR = :HOUR
            DAY = :DAY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
