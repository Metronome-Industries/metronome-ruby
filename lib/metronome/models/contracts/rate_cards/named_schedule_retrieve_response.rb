# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        # @example
        #
        # ```ruby
        # named_schedule_retrieve_response => {
        #   data: -> { Metronome::ArrayOf[Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse::Data] === _1 }
        # }
        # ```
        class NamedScheduleRetrieveResponse < Metronome::BaseModel
          # @!attribute data
          #
          #   @return [Array<Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]
          required :data,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse::Data
                   }]

          # @!parse
          #   # @param data [Array<Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # data => {
          #   starting_at: Time,
          #   value: Metronome::Unknown,
          #   ending_before: Time
          # }
          # ```
          class Data < Metronome::BaseModel
            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute value
            #
            #   @return [Object]
            required :value, Metronome::Unknown

            # @!attribute ending_before
            #
            #   @return [Time]
            optional :ending_before, Time

            # @!parse
            #   # @param starting_at [String]
            #   # @param value [Object]
            #   # @param ending_before [String]
            #   #
            #   def initialize(starting_at:, value:, ending_before: nil, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
