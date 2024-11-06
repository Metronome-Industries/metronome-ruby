# frozen_string_literal: true

module Metronome
  module Models
    class PropertyFilter < Metronome::BaseModel
      # @!attribute [rw] name_
      #   The name of the event property.
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] exists
      #   Determines whether the property must exist in the event. If true, only events with this property will pass the filter. If false, only events without this property will pass the filter. If null or omitted, the existence of the property is optional.
      #   @return [Boolean]
      optional :exists, Metronome::BooleanModel

      # @!attribute [rw] in_values
      #   Specifies the allowed values for the property to match an event. An event will pass the filter only if its property value is included in this list. If undefined, all property values will pass the filter. Must be non-empty if present.
      #   @return [Array<String>]
      optional :in_values, Metronome::ArrayOf.new(String)

      # @!attribute [rw] not_in_values
      #   Specifies the values that prevent an event from matching the filter. An event will not pass the filter if its property value is included in this list. If null or empty, all property values will pass the filter. Must be non-empty if present.
      #   @return [Array<String>]
      optional :not_in_values, Metronome::ArrayOf.new(String)

      # @!parse
      #   # Create a new instance of PropertyFilter from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :name The name of the event property.
      #   #   @option data [Hash, nil] :exists Determines whether the property must exist in the event. If true, only events
      #   #     with this property will pass the filter. If false, only events without this
      #   #     property will pass the filter. If null or omitted, the existence of the property
      #   #     is optional.
      #   #   @option data [Array<String>, nil] :in_values Specifies the allowed values for the property to match an event. An event will
      #   #     pass the filter only if its property value is included in this list. If
      #   #     undefined, all property values will pass the filter. Must be non-empty if
      #   #     present.
      #   #   @option data [Array<String>, nil] :not_in_values Specifies the values that prevent an event from matching the filter. An event
      #   #     will not pass the filter if its property value is included in this list. If null
      #   #     or empty, all property values will pass the filter. Must be non-empty if
      #   #     present.
      #   def initialize(data = {}) = super
    end
  end
end
