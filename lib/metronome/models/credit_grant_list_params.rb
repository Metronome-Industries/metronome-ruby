# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListParams < Metronome::BaseModel
      # @!attribute limit
      #   Max number of results that should be returned
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute credit_grant_ids
      #   An array of credit grant IDs. If this is specified, neither credit_type_ids nor customer_ids may be specified.
      #
      #   @return [Array<String>]
      optional :credit_grant_ids, Metronome::ArrayOf[String]

      # @!attribute credit_type_ids
      #   An array of credit type IDs. This must not be specified if credit_grant_ids is specified.
      #
      #   @return [Array<String>]
      optional :credit_type_ids, Metronome::ArrayOf[String]

      # @!attribute customer_ids
      #   An array of Metronome customer IDs. This must not be specified if credit_grant_ids is specified.
      #
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf[String]

      # @!attribute effective_before
      #   Only return credit grants that are effective before this timestamp (exclusive).
      #
      #   @return [Time]
      optional :effective_before, Time

      # @!attribute not_expiring_before
      #   Only return credit grants that expire at or after this timestamp.
      #
      #   @return [Time]
      optional :not_expiring_before, Time

      # @!parse
      #   # @param limit [Integer, nil] Max number of results that should be returned
      #   #
      #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param credit_grant_ids [Array<String>, nil] An array of credit grant IDs. If this is specified, neither credit_type_ids nor
      #   #   customer_ids may be specified.
      #   #
      #   # @param credit_type_ids [Array<String>, nil] An array of credit type IDs. This must not be specified if credit_grant_ids is
      #   #   specified.
      #   #
      #   # @param customer_ids [Array<String>, nil] An array of Metronome customer IDs. This must not be specified if
      #   #   credit_grant_ids is specified.
      #   #
      #   # @param effective_before [String, nil] Only return credit grants that are effective before this timestamp (exclusive).
      #   #
      #   # @param not_expiring_before [String, nil] Only return credit grants that expire at or after this timestamp.
      #   #
      #   def initialize(
      #     limit: nil,
      #     next_page: nil,
      #     credit_grant_ids: nil,
      #     credit_type_ids: nil,
      #     customer_ids: nil,
      #     effective_before: nil,
      #     not_expiring_before: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
