# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListCreditTypesParams < Metronome::BaseModel
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
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   def initialize(limit: nil, next_page: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
