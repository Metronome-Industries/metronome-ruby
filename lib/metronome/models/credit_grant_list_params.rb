# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListParams < Metronome::BaseModel
      # @!attribute [r] limit
      #   Max number of results that should be returned
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String, nil]
      optional :next_page, String

      # @!parse
      #   # @return [String]
      #   attr_writer :next_page

      # @!attribute [r] credit_grant_ids
      #   An array of credit grant IDs. If this is specified, neither credit_type_ids nor customer_ids may be specified.
      #
      #   @return [Array<String>]
      optional :credit_grant_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :credit_grant_ids

      # @!attribute [r] credit_type_ids
      #   An array of credit type IDs. This must not be specified if credit_grant_ids is specified.
      #
      #   @return [Array<String>]
      optional :credit_type_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :credit_type_ids

      # @!attribute [r] customer_ids
      #   An array of Metronome customer IDs. This must not be specified if credit_grant_ids is specified.
      #
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :customer_ids

      # @!attribute [r] effective_before
      #   Only return credit grants that are effective before this timestamp (exclusive).
      #
      #   @return [Time, nil]
      optional :effective_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_before

      # @!attribute [r] not_expiring_before
      #   Only return credit grants that expire at or after this timestamp.
      #
      #   @return [Time, nil]
      optional :not_expiring_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :not_expiring_before

      # @!parse
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param credit_grant_ids [Array<String>] An array of credit grant IDs. If this is specified, neither credit_type_ids nor
      #   #   customer_ids may be specified.
      #   #
      #   # @param credit_type_ids [Array<String>] An array of credit type IDs. This must not be specified if credit_grant_ids is
      #   #   specified.
      #   #
      #   # @param customer_ids [Array<String>] An array of Metronome customer IDs. This must not be specified if
      #   #   credit_grant_ids is specified.
      #   #
      #   # @param effective_before [String] Only return credit grants that are effective before this timestamp (exclusive).
      #   #
      #   # @param not_expiring_before [String] Only return credit grants that expire at or after this timestamp.
      #   #
      #   def initialize(
      #     limit: nil,
      #     next_page: nil,
      #     credit_grant_ids: nil,
      #     credit_type_ids: nil,
      #     customer_ids: nil,
      #     effective_before: nil,
      #     not_expiring_before: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
