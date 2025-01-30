# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # event_type_filter => {
    #   in_values: -> { Metronome::ArrayOf[String] === _1 },
    #   not_in_values: -> { Metronome::ArrayOf[String] === _1 }
    # }
    # ```
    class EventTypeFilter < Metronome::BaseModel
      # @!attribute [r] in_values
      #   A list of event types that are explicitly included in the billable metric. If
      #     specified, only events of these types will match the billable metric. Must be
      #     non-empty if present.
      #
      #   @return [Array<String>, nil]
      optional :in_values, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :in_values

      # @!attribute [r] not_in_values
      #   A list of event types that are explicitly excluded from the billable metric. If
      #     specified, events of these types will not match the billable metric. Must be
      #     non-empty if present.
      #
      #   @return [Array<String>, nil]
      optional :not_in_values, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :not_in_values

      # @!parse
      #   # An optional filtering rule to match the 'event_type' property of an event.
      #   #
      #   # @param in_values [Array<String>]
      #   # @param not_in_values [Array<String>]
      #   #
      #   def initialize(in_values: nil, not_in_values: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
