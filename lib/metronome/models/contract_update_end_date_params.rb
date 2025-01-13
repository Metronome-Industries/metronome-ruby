# frozen_string_literal: true

module Metronome
  module Models
    class ContractUpdateEndDateParams < Metronome::BaseModel
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
      #   If true, allows setting the contract end date earlier than the end_timestamp of existing finalized invoices. Finalized invoices will be unchanged; if you want to incorporate the new end date, you can void and regenerate finalized usage invoices. Defaults to false.
      #
      #   @return [Boolean]
      optional :allow_ending_before_finalized_invoice, Metronome::BooleanModel

      # @!attribute ending_before
      #   RFC 3339 timestamp indicating when the contract will end (exclusive). If not provided, the contract will be updated to be open-ended.
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!parse
      #   # @param contract_id [String] ID of the contract to update
      #   #
      #   # @param customer_id [String] ID of the customer whose contract is to be updated
      #   #
      #   # @param allow_ending_before_finalized_invoice [Boolean] If true, allows setting the contract end date earlier than the end_timestamp of
      #   #   existing finalized invoices. Finalized invoices will be unchanged; if you want
      #   #   to incorporate the new end date, you can void and regenerate finalized usage
      #   #   invoices. Defaults to false.
      #   #
      #   # @param ending_before [String] RFC 3339 timestamp indicating when the contract will end (exclusive). If not
      #   #   provided, the contract will be updated to be open-ended.
      #   #
      #   def initialize(contract_id:, customer_id:, allow_ending_before_finalized_invoice: nil, ending_before: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
