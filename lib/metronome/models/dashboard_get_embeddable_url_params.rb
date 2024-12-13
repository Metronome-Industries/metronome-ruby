# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLParams < Metronome::BaseModel
      # @!attribute customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute dashboard
      #   The type of dashboard to retrieve.
      #   @return [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::Dashboard]
      required :dashboard, enum: -> { Metronome::Models::DashboardGetEmbeddableURLParams::Dashboard }

      # @!attribute bm_group_key_overrides
      #   Optional list of billable metric group key overrides
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
      optional :bm_group_key_overrides,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride
                 }
               )

      # @!attribute color_overrides
      #   Optional list of colors to override
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride>]
      optional :color_overrides,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride
                 }
               )

      # @!attribute dashboard_options
      #   Optional dashboard specific options
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption>]
      optional :dashboard_options,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption
                 }
               )

      # The type of dashboard to retrieve.
      class Dashboard < Metronome::Enum
        INVOICES = :invoices
        USAGE = :usage
        CREDITS = :credits
      end

      class BmGroupKeyOverride < Metronome::BaseModel
        # @!attribute group_key_name
        #   The name of the billable metric group key.
        #   @return [String]
        required :group_key_name, String

        # @!attribute display_name
        #   The display name for the billable metric group key
        #   @return [String]
        optional :display_name, String

        # @!attribute value_display_names
        #   <key, value> pairs of the billable metric group key values and their display names. e.g. {"a": "Asia", "b": "Euro"}
        #   @return [Hash]
        optional :value_display_names, Hash

        # @!parse
        #   # Create a new instance of BmGroupKeyOverride from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :group_key_name The name of the billable metric group key.
        #   #   @option data [String, nil] :display_name The display name for the billable metric group key
        #   #   @option data [Hash, nil] :value_display_names <key, value> pairs of the billable metric group key values and their display
        #   #     names. e.g. {"a": "Asia", "b": "Euro"}
        #   def initialize(data = {}) = super
      end

      class ColorOverride < Metronome::BaseModel
        # @!attribute name
        #   The color to override
        #   @return [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name]
        optional :name, enum: -> { Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name }

        # @!attribute value
        #   Hex value representation of the color
        #   @return [String]
        optional :value, String

        # The color to override
        class Name < Metronome::Enum
          GRAY_DARK = :Gray_dark
          GRAY_MEDIUM = :Gray_medium
          GRAY_LIGHT = :Gray_light
          GRAY_EXTRALIGHT = :Gray_extralight
          WHITE = :White
          PRIMARY_MEDIUM = :Primary_medium
          PRIMARY_LIGHT = :Primary_light
          USAGE_LINE_0 = :UsageLine_0
          USAGE_LINE_1 = :UsageLine_1
          USAGE_LINE_2 = :UsageLine_2
          USAGE_LINE_3 = :UsageLine_3
          USAGE_LINE_4 = :UsageLine_4
          USAGE_LINE_5 = :UsageLine_5
          USAGE_LINE_6 = :UsageLine_6
          USAGE_LINE_7 = :UsageLine_7
          USAGE_LINE_8 = :UsageLine_8
          USAGE_LINE_9 = :UsageLine_9
          PRIMARY_GREEN = :Primary_green
          PRIMARY_RED = :Primary_red
        end

        # @!parse
        #   # Create a new instance of ColorOverride from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :name The color to override
        #   #   @option data [String, nil] :value Hex value representation of the color
        #   def initialize(data = {}) = super
      end

      class DashboardOption < Metronome::BaseModel
        # @!attribute key
        #   The option key name
        #   @return [String]
        required :key, String

        # @!attribute value
        #   The option value
        #   @return [String]
        required :value, String

        # @!parse
        #   # Create a new instance of DashboardOption from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :key The option key name
        #   #   @option data [String] :value The option value
        #   def initialize(data = {}) = super
      end
    end
  end
end
