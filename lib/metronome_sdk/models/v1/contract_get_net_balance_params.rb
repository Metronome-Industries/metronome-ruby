# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#get_net_balance
      class ContractGetNetBalanceParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   The ID of the customer.
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute credit_type_id
        #   The ID of the credit type (can be fiat or a custom pricing unit) to get the
        #   balance for. Defaults to USD (cents) if not specified.
        #
        #   @return [String, nil]
        optional :credit_type_id, String

        # @!attribute filters
        #   Balance filters are OR'd together, so if a given commit or credit matches any of
        #   the filters, it will be included in the net balance.
        #
        #   @return [Array<MetronomeSDK::Models::BalanceFilter>, nil]
        optional :filters, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::BalanceFilter] }

        # @!attribute invoice_inclusion_mode
        #   Controls which invoices are considered when calculating the remaining balance.
        #   `FINALIZED` considers only deductions from finalized invoices.
        #   `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::ContractGetNetBalanceParams::InvoiceInclusionMode, nil]
        optional :invoice_inclusion_mode,
                 enum: -> { MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode }

        # @!method initialize(customer_id:, credit_type_id: nil, filters: nil, invoice_inclusion_mode: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractGetNetBalanceParams} for more details.
        #
        #   @param customer_id [String] The ID of the customer.
        #
        #   @param credit_type_id [String] The ID of the credit type (can be fiat or a custom pricing unit) to get the bala
        #
        #   @param filters [Array<MetronomeSDK::Models::BalanceFilter>] Balance filters are OR'd together, so if a given commit or credit matches any of
        #
        #   @param invoice_inclusion_mode [Symbol, MetronomeSDK::Models::V1::ContractGetNetBalanceParams::InvoiceInclusionMode] Controls which invoices are considered when calculating the remaining balance. `
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Controls which invoices are considered when calculating the remaining balance.
        # `FINALIZED` considers only deductions from finalized invoices.
        # `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices.
        module InvoiceInclusionMode
          extend MetronomeSDK::Internal::Type::Enum

          FINALIZED = :FINALIZED
          FINALIZED_AND_DRAFT = :FINALIZED_AND_DRAFT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
