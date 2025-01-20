# frozen_string_literal: true

module Metronome
  module Models
    class ContractAddManualBalanceEntryParams < Metronome::BaseModel
      # @!attribute id
      #   ID of the balance (commit or credit) to update.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount to add to the segment. A negative number will draw down from the balance.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute customer_id
      #   ID of the customer whose balance is to be updated.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute reason
      #   Reason for the manual adjustment. This will be displayed in the ledger.
      #
      #   @return [String]
      required :reason, String

      # @!attribute segment_id
      #   ID of the segment to update.
      #
      #   @return [String]
      required :segment_id, String

      # @!attribute [r] contract_id
      #   ID of the contract to update. Leave blank to update a customer level balance.
      #
      #   @return [String, nil]
      optional :contract_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contract_id

      # @!attribute [r] timestamp
      #   RFC 3339 timestamp indicating when the manual adjustment takes place. If not provided, it will default to the start of the segment.
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :timestamp

      # @!parse
      #   # @param id [String] ID of the balance (commit or credit) to update.
      #   #
      #   # @param amount [Float] Amount to add to the segment. A negative number will draw down from the balance.
      #   #
      #   # @param customer_id [String] ID of the customer whose balance is to be updated.
      #   #
      #   # @param reason [String] Reason for the manual adjustment. This will be displayed in the ledger.
      #   #
      #   # @param segment_id [String] ID of the segment to update.
      #   #
      #   # @param contract_id [String] ID of the contract to update. Leave blank to update a customer level balance.
      #   #
      #   # @param timestamp [String] RFC 3339 timestamp indicating when the manual adjustment takes place. If not
      #   #   provided, it will default to the start of the segment.
      #   #
      #   def initialize(id:, amount:, customer_id:, reason:, segment_id:, contract_id: nil, timestamp: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
