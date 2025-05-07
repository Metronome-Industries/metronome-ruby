# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#archive
      class ContractArchiveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #   ID of the contract to archive
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #   ID of the customer whose contract is to be archived
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute void_invoices
        #   If false, the existing finalized invoices will remain after the contract is
        #   archived.
        #
        #   @return [Boolean]
        required :void_invoices, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(contract_id:, customer_id:, void_invoices:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractArchiveParams} for more details.
        #
        #   @param contract_id [String] ID of the contract to archive
        #
        #   @param customer_id [String] ID of the customer whose contract is to be archived
        #
        #   @param void_invoices [Boolean] If false, the existing finalized invoices will remain after the contract is arch
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
