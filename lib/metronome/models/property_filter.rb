# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # property_filter => {
    #   name: String,
    #   exists: Metronome::BooleanModel,
    #   in_values: -> { Metronome::ArrayOf[String] === _1 },
    #   not_in_values: -> { Metronome::ArrayOf[String] === _1 }
    # }
    # ```
    class PropertyFilter < Metronome::BaseModel
      # @!attribute name
      #   The name of the event property.
      #
      #   @return [String]
      required :name, String

      # @!attribute exists
      #   Determines whether the property must exist in the event. If true, only events with this property will pass the filter. If false, only events without this property will pass the filter. If null or omitted, the existence of the property is optional.
      #
      #   @return [Boolean]
      optional :exists, Metronome::BooleanModel

      # @!attribute in_values
      #   Specifies the allowed values for the property to match an event. An event will pass the filter only if its property value is included in this list. If undefined, all property values will pass the filter. Must be non-empty if present.
      #
      #   @return [Array<String>]
      optional :in_values, Metronome::ArrayOf[String]

      # @!attribute not_in_values
      #   Specifies the values that prevent an event from matching the filter. An event will not pass the filter if its property value is included in this list. If null or empty, all property values will pass the filter. Must be non-empty if present.
      #
      #   @return [Array<String>]
      optional :not_in_values, Metronome::ArrayOf[String]

      # @!parse
      #   # @param name [String] The name of the event property.
      #   #
      #   # @param exists [Boolean] Determines whether the property must exist in the event. If true, only events
      #   #   with this property will pass the filter. If false, only events without this
      #   #   property will pass the filter. If null or omitted, the existence of the property
      #   #   is optional.
      #   #
      #   # @param in_values [Array<String>] Specifies the allowed values for the property to match an event. An event will
      #   #   pass the filter only if its property value is included in this list. If
      #   #   undefined, all property values will pass the filter. Must be non-empty if
      #   #   present.
      #   #
      #   # @param not_in_values [Array<String>] Specifies the values that prevent an event from matching the filter. An event
      #   #   will not pass the filter if its property value is included in this list. If null
      #   #   or empty, all property values will pass the filter. Must be non-empty if
      #   #   present.
      #   #
      #   def initialize(name:, exists: nil, in_values: nil, not_in_values: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
