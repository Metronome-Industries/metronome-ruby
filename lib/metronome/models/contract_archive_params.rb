# frozen_string_literal: true

module Metronome
  module Models
    class ContractArchiveParams < Metronome::BaseModel
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
      #   If false, the existing finalized invoices will remain after the contract is archived.
      #
      #   @return [Boolean]
      required :void_invoices, Metronome::BooleanModel
    end
  end
end
