# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractArchiveParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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
        #     archived.
        #
        #   @return [Boolean]
        required :void_invoices, MetronomeSDK::BooleanModel

        # @!parse
        #   # @param contract_id [String]
        #   # @param customer_id [String]
        #   # @param void_invoices [Boolean]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(contract_id:, customer_id:, void_invoices:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
