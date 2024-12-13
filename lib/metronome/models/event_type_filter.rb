# frozen_string_literal: true

module Metronome
  module Models
    class EventTypeFilter < Metronome::BaseModel
      # @!attribute in_values
      #   A list of event types that are explicitly included in the billable metric. If specified, only events of these types will match the billable metric. Must be non-empty if present.
      #   @return [Array<String>]
      optional :in_values, Metronome::ArrayOf.new(String)

      # @!attribute not_in_values
      #   A list of event types that are explicitly excluded from the billable metric. If specified, events of these types will not match the billable metric. Must be non-empty if present.
      #   @return [Array<String>]
      optional :not_in_values, Metronome::ArrayOf.new(String)

      # @!parse
      #   # Create a new instance of EventTypeFilter from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<String>, nil] :in_values A list of event types that are explicitly included in the billable metric. If
      #   #     specified, only events of these types will match the billable metric. Must be
      #   #     non-empty if present.
      #   #   @option data [Array<String>, nil] :not_in_values A list of event types that are explicitly excluded from the billable metric. If
      #   #     specified, events of these types will not match the billable metric. Must be
      #   #     non-empty if present.
      #   def initialize(data = {}) = super
    end
  end
end
