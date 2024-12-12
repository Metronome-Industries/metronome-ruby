# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] ending_before
      #   RFC 3339 timestamp (exclusive)
      #   @return [Time]
      required :ending_before, Time

      # @!attribute [rw] starting_on
      #   RFC 3339 timestamp (inclusive)
      #   @return [Time]
      required :starting_on, Time

      # @!attribute [rw] limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String
    end
  end
end
