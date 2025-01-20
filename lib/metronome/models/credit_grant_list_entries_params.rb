# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListEntriesParams < Metronome::BaseModel
      # @!attribute [r] next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String, nil]
      optional :next_page, String

      # @!parse
      #   # @return [String]
      #   attr_writer :next_page

      # @!attribute [r] credit_type_ids
      #   A list of Metronome credit type IDs to fetch ledger entries for. If absent, ledger entries for all credit types will be returned.
      #
      #   @return [Array<String>]
      optional :credit_type_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :credit_type_ids

      # @!attribute [r] customer_ids
      #   A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger entries for all customers will be returned.
      #
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :customer_ids

      # @!attribute [r] ending_before
      #   If supplied, ledger entries will only be returned with an effective_at before this time. This timestamp must not be in the future. If no timestamp is supplied, all entries up to the start of the customer's next billing period will be returned.
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!attribute [r] starting_on
      #   If supplied, only ledger entries effective at or after this time will be returned.
      #
      #   @return [Time, nil]
      optional :starting_on, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :starting_on

      # @!parse
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param credit_type_ids [Array<String>] A list of Metronome credit type IDs to fetch ledger entries for. If absent,
      #   #   ledger entries for all credit types will be returned.
      #   #
      #   # @param customer_ids [Array<String>] A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
      #   #   entries for all customers will be returned.
      #   #
      #   # @param ending_before [String] If supplied, ledger entries will only be returned with an effective_at before
      #   #   this time. This timestamp must not be in the future. If no timestamp is
      #   #   supplied, all entries up to the start of the customer's next billing period will
      #   #   be returned.
      #   #
      #   # @param starting_on [String] If supplied, only ledger entries effective at or after this time will be
      #   #   returned.
      #   #
      #   def initialize(next_page: nil, credit_type_ids: nil, customer_ids: nil, ending_before: nil, starting_on: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
