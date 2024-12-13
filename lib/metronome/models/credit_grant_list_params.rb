# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListParams < Metronome::BaseModel
      # @!attribute limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute credit_grant_ids
      #   An array of credit grant IDs. If this is specified, neither credit_type_ids nor customer_ids may be specified.
      #   @return [Array<String>]
      optional :credit_grant_ids, Metronome::ArrayOf.new(String)

      # @!attribute credit_type_ids
      #   An array of credit type IDs. This must not be specified if credit_grant_ids is specified.
      #   @return [Array<String>]
      optional :credit_type_ids, Metronome::ArrayOf.new(String)

      # @!attribute customer_ids
      #   An array of Metronome customer IDs. This must not be specified if credit_grant_ids is specified.
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf.new(String)

      # @!attribute effective_before
      #   Only return credit grants that are effective before this timestamp (exclusive).
      #   @return [Time]
      optional :effective_before, Time

      # @!attribute not_expiring_before
      #   Only return credit grants that expire at or after this timestamp.
      #   @return [Time]
      optional :not_expiring_before, Time
    end
  end
end
