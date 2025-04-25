# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#update_end_date
      class ContractUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #   ID of the contract to update
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #   ID of the customer whose contract is to be updated
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute allow_ending_before_finalized_invoice
        #   If true, allows setting the contract end date earlier than the end_timestamp of
        #   existing finalized invoices. Finalized invoices will be unchanged; if you want
        #   to incorporate the new end date, you can void and regenerate finalized usage
        #   invoices. Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :allow_ending_before_finalized_invoice, MetronomeSDK::Internal::Type::Boolean

        # @!attribute ending_before
        #   RFC 3339 timestamp indicating when the contract will end (exclusive). If not
        #   provided, the contract will be updated to be open-ended.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!method initialize(contract_id:, customer_id:, allow_ending_before_finalized_invoice: nil, ending_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractUpdateEndDateParams} for more details.
        #
        #   @param contract_id [String] ID of the contract to update
        #
        #   @param customer_id [String] ID of the customer whose contract is to be updated
        #
        #   @param allow_ending_before_finalized_invoice [Boolean] If true, allows setting the contract end date earlier than the end_timestamp of
        #   ...
        #
        #   @param ending_before [Time] RFC 3339 timestamp indicating when the contract will end (exclusive). If not pro
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
