# frozen_string_literal: true

module Metronome
  module Models
    class NamedScheduleRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::NamedScheduleRetrieveResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::NamedScheduleRetrieveResponse::Data })

      class Data < BaseModel
        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] value
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(starting_at: nil, value: nil, ending_before: nil)
        # @param starting_at [String]
        # @param value [Object]
        # @param ending_before [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of NamedScheduleRetrieveResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Array<Object>]
      def initialize(data = {})
        super
      end
    end
  end
end
