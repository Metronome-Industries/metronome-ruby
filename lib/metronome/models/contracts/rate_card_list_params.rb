# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardListParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

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
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(body:, limit: nil, next_page: nil, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
