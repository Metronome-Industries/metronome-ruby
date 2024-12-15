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

      # @!parse
      #   # @param contract_id [String] ID of the contract to archive
      #   #
      #   # @param customer_id [String] ID of the customer whose contract is to be archived
      #   #
      #   # @param void_invoices [Boolean] If false, the existing finalized invoices will remain after the contract is
      #   #   archived.
      #   #
      #   def initialize(contract_id:, customer_id:, void_invoices:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
