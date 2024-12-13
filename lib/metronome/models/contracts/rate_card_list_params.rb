# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardListParams < Metronome::BaseModel
        # @!attribute body
        #   @return [Object]
        required :body, Metronome::Unknown

        # @!attribute limit
        #   Max number of results that should be returned
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String
      end
    end
  end
end
