# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListEntriesParams < Metronome::BaseModel
      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] credit_type_ids
      #   A list of Metronome credit type IDs to fetch ledger entries for. If absent, ledger entries for all credit types will be returned.
      #   @return [Array<String>]
      optional :credit_type_ids, Metronome::ArrayOf.new(String)

      # @!attribute [rw] customer_ids
      #   A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger entries for all customers will be returned.
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf.new(String)

      # @!attribute [rw] ending_before
      #   If supplied, ledger entries will only be returned with an effective_at before this time. This timestamp must not be in the future. If no timestamp is supplied, all entries up to the start of the customer's next billing period will be returned.
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute [rw] starting_on
      #   If supplied, only ledger entries effective at or after this time will be returned.
      #   @return [Time]
      optional :starting_on, Time
    end
  end
end
