# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveRateScheduleResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::ContractRetrieveRateScheduleResponse::Data>]
      required :data,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveRateScheduleResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      optional :next_page, String

      class Data < Metronome::BaseModel
        # @!attribute [rw] entitled
        #   @return [Boolean]
        required :entitled, Metronome::BooleanModel

        # @!attribute [rw] list_rate
        #   @return [Metronome::Models::Rate]
        required :list_rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] product_custom_fields
        #   @return [Hash]
        required :product_custom_fields, Hash

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] product_name
        #   @return [String]
        required :product_name, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        required :product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] rate_card_id
        #   @return [String]
        required :rate_card_id, String

        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] override_rate
        #   @return [Metronome::Models::Rate]
        optional :override_rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Hash] :entitled
        #   #   @option data [Object] :list_rate
        #   #   @option data [Hash] :product_custom_fields
        #   #   @option data [String] :product_id
        #   #   @option data [String] :product_name
        #   #   @option data [Array<String>] :product_tags
        #   #   @option data [String] :rate_card_id
        #   #   @option data [String] :starting_at
        #   #   @option data [String, nil] :ending_before
        #   #   @option data [Object, nil] :override_rate
        #   #   @option data [Hash, nil] :pricing_group_values
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ContractRetrieveRateScheduleResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String, nil] :next_page
      #   def initialize(data = {}) = super
    end
  end
end
