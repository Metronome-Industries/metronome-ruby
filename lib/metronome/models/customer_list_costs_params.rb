# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute ending_before
      #   RFC 3339 timestamp (exclusive)
      #
      #   @return [Time]
      required :ending_before, Time

      # @!attribute starting_on
      #   RFC 3339 timestamp (inclusive)
      #
      #   @return [Time]
      required :starting_on, Time

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

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param ending_before [String] RFC 3339 timestamp (exclusive)
      #   #
      #   # @param starting_on [String] RFC 3339 timestamp (inclusive)
      #   #
      #   # @param limit [Integer, nil] Max number of results that should be returned
      #   #
      #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
      #   #
      #   def initialize(customer_id:, ending_before:, starting_on:, limit: nil, next_page: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
