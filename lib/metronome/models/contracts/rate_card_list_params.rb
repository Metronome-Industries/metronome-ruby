# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardListParams < Metronome::BaseModel
        # @!attribute body
        #
        #   @return [Object]
        required :body, Metronome::Unknown

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
        #   # @param body [Object]
        #   #
        #   # @param limit [Integer] Max number of results that should be returned
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   def initialize(body:, limit: nil, next_page: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
