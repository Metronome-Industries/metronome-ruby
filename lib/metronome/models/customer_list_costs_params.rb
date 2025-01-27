# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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

      # @!parse
      #   # @param customer_id [String]
      #   # @param ending_before [Time]
      #   # @param starting_on [Time]
      #   # @param limit [Integer]
      #   # @param next_page [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(customer_id:, ending_before:, starting_on:, limit: nil, next_page: nil, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
