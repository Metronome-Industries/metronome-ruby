# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class NamedScheduleRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Array<Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data>]
        required :data,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data
                   }
                 )

        class Data < Metronome::BaseModel
          # @!attribute starting_at
          #   @return [Time]
          required :starting_at, Time

          # @!attribute value
          #   @return [Object]
          required :value, Metronome::Unknown

          # @!attribute ending_before
          #   @return [Time]
          optional :ending_before, Time

          # @!parse
          #   # Create a new instance of Data from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :starting_at
          #   #   @option data [Object] :value
          #   #   @option data [String, nil] :ending_before
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of NamedScheduleRetrieveResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
