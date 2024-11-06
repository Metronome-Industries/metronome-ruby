# frozen_string_literal: true

module Metronome
  module Models
    class RateCardRetrieveRateScheduleResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::RateCardRetrieveRateScheduleResponse::Data>]
      required :data,
               Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveRateScheduleResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      optional :next_page, String

      class Data < Metronome::BaseModel
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
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Hash] :entitled
        #   #   @option data [String] :product_id
        #   #   @option data [String] :product_name
        #   #   @option data [Array<String>] :product_tags
        #   #   @option data [Object] :rate
        #   #   @option data [String] :starting_at
        #   #   @option data [String, nil] :ending_before
        #   #   @option data [Hash, nil] :pricing_group_values
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of RateCardRetrieveRateScheduleResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String, nil] :next_page
      #   def initialize(data = {}) = super
    end
  end
end
