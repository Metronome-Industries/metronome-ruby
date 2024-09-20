# frozen_string_literal: true

module Metronome
  module Models
    class RateCardRetrieveRateScheduleResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::RateCardRetrieveRateScheduleResponse::Data>]
      required :data,
               Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveRateScheduleResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      optional :next_page, String

      class Data < BaseModel
        # @!attribute [rw] entitled
        #   @return [Boolean]
        required :entitled, Metronome::BooleanModel

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] product_name
        #   @return [String]
        required :product_name, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        required :product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] rate
        #   @return [Metronome::Models::Rate]
        required :rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] starting_at
        #   @return [DateTime]
        required :starting_at, DateTime

        # @!attribute [rw] ending_before
        #   @return [DateTime]
        optional :ending_before, DateTime

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash
      end
    end
  end
end
