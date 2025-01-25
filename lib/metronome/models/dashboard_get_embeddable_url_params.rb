# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute dashboard
      #   The type of dashboard to retrieve.
      #
      #   @return [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::Dashboard]
      required :dashboard, enum: -> { Metronome::Models::DashboardGetEmbeddableURLParams::Dashboard }

      # @!attribute [r] bm_group_key_overrides
      #   Optional list of billable metric group key overrides
      #
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
      optional :bm_group_key_overrides,
               -> {
                 Metronome::ArrayOf[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride]
               }

      # @!parse
      #   # @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
      #   attr_writer :bm_group_key_overrides

      # @!attribute [r] color_overrides
      #   Optional list of colors to override
      #
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride>]
      optional :color_overrides,
               -> { Metronome::ArrayOf[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride] }

      # @!parse
      #   # @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride>]
      #   attr_writer :color_overrides

      # @!attribute [r] dashboard_options
      #   Optional dashboard specific options
      #
      #   @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption>]
      optional :dashboard_options,
               -> { Metronome::ArrayOf[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption] }

      # @!parse
      #   # @return [Array<Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption>]
      #   attr_writer :dashboard_options

      # @!parse
      #   # @param customer_id [String]
      #   # @param dashboard [String]
      #   # @param bm_group_key_overrides [Array<Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
      #   # @param color_overrides [Array<Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride>]
      #   # @param dashboard_options [Array<Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption>]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     customer_id:,
      #     dashboard:,
      #     bm_group_key_overrides: nil,
      #     color_overrides: nil,
      #     dashboard_options: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # The type of dashboard to retrieve.
      #
      # @example
      # ```ruby
      # case dashboard
      # in :invoices
      #   # ...
      # in :usage
      #   # ...
      # in :credits
      #   # ...
      # end
      # ```
      class Dashboard < Metronome::Enum
        INVOICES = :invoices
        USAGE = :usage
        CREDITS = :credits

        finalize!
      end

      # @example
      # ```ruby
      # bm_group_key_override => {
      #   group_key_name: String,
      #   display_name: String,
      #   value_display_names: -> { Metronome::HashOf[Metronome::Unknown] === _1 }
      # }
      # ```
      class BmGroupKeyOverride < Metronome::BaseModel
        # @!attribute group_key_name
        #   The name of the billable metric group key.
        #
        #   @return [String]
        required :group_key_name, String

        # @!attribute [r] display_name
        #   The display name for the billable metric group key
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :display_name

        # @!attribute [r] value_display_names
        #   <key, value> pairs of the billable metric group key values and their display
        #     names. e.g. {"a": "Asia", "b": "Euro"}
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :value_display_names, Metronome::HashOf[Metronome::Unknown]

        # @!parse
        #   # @return [Hash{Symbol=>Object}]
        #   attr_writer :value_display_names

        # @!parse
        #   # @param group_key_name [String]
        #   # @param display_name [String]
        #   # @param value_display_names [Hash{Symbol=>Object}]
        #   #
        #   def initialize(group_key_name:, display_name: nil, value_display_names: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # color_override => {
      #   name: Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name,
      #   value: String
      # }
      # ```
      class ColorOverride < Metronome::BaseModel
        # @!attribute [r] name
        #   The color to override
        #
        #   @return [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name, nil]
        optional :name, enum: -> { Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name }

        # @!parse
        #   # @return [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride::Name]
        #   attr_writer :name

        # @!attribute [r] value
        #   Hex value representation of the color
        #
        #   @return [String, nil]
        optional :value, String

        # @!parse
        #   # @return [String]
        #   attr_writer :value

        # @!parse
        #   # @param name [String]
        #   # @param value [String]
        #   #
        #   def initialize(name: nil, value: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # The color to override
        #
        # @example
        # ```ruby
        # case name
        # in :Gray_dark
        #   # ...
        # in :Gray_medium
        #   # ...
        # in :Gray_light
        #   # ...
        # in :Gray_extralight
        #   # ...
        # in :White
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # dashboard_option => {
      #   key: String,
      #   value: String
      # }
      # ```
      class DashboardOption < Metronome::BaseModel
        # @!attribute key
        #   The option key name
        #
        #   @return [String]
        required :key, String

        # @!attribute value
        #   The option value
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # @param key [String]
        #   # @param value [String]
        #   #
        #   def initialize(key:, value:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
