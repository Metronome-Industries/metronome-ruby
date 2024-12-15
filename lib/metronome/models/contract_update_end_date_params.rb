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
      #   # @param ending_before [String, nil] RFC 3339 timestamp indicating when the contract will end (exclusive). If not
      #   #   provided, the contract will be updated to be open-ended.
      #   #
      #   def initialize(contract_id:, customer_id:, ending_before: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
