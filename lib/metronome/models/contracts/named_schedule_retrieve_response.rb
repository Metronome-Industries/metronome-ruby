# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class NamedScheduleRetrieveResponse < Metronome::BaseModel
        # @!attribute [rw] data
        #   @return [Array<Metronome::Models::Contracts::NamedScheduleRetrieveResponse::Data>]
        required :data,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Contracts::NamedScheduleRetrieveResponse::Data
                   }
                 )

        class Data < Metronome::BaseModel
          # @!attribute [rw] starting_at
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [rw] value
          #   @return [Object]
          required :value, Metronome::Unknown

          # @!attribute [rw] ending_before
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
