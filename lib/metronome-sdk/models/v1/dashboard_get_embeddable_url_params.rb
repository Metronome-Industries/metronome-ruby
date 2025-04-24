# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute dashboard
        #   The type of dashboard to retrieve.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard]
        required :dashboard, enum: -> { MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard }

        # @!attribute [r] bm_group_key_overrides
        #   Optional list of billable metric group key overrides
        #
        #   @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>, nil]
        optional :bm_group_key_overrides,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
        #   attr_writer :bm_group_key_overrides

        # @!attribute [r] color_overrides
        #   Optional list of colors to override
        #
        #   @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride>, nil]
        optional :color_overrides,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride>]
        #   attr_writer :color_overrides

        # @!attribute [r] dashboard_options
        #   Optional dashboard specific options
        #
        #   @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption>, nil]
        optional :dashboard_options,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption>]
        #   attr_writer :dashboard_options

        # @!parse
        #   # @param customer_id [String]
        #   # @param dashboard [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard]
        #   # @param bm_group_key_overrides [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>]
        #   # @param color_overrides [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride>]
        #   # @param dashboard_options [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption>]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
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

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
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
        class Dashboard < MetronomeSDK::Enum
          INVOICES = :invoices
          USAGE = :usage
          CREDITS = :credits

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class BmGroupKeyOverride < MetronomeSDK::BaseModel
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
          optional :value_display_names, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

          # @!parse
          #   # @return [Hash{Symbol=>Object}]
          #   attr_writer :value_display_names

          # @!parse
          #   # @param group_key_name [String]
          #   # @param display_name [String]
          #   # @param value_display_names [Hash{Symbol=>Object}]
          #   #
          #   def initialize(group_key_name:, display_name: nil, value_display_names: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class ColorOverride < MetronomeSDK::BaseModel
          # @!attribute [r] name
          #   The color to override
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name, nil]
          optional :name,
                   enum: -> { MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name]
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
          #   # @param name [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name]
          #   # @param value [String]
          #   #
          #   def initialize(name: nil, value: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
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
          class Name < MetronomeSDK::Enum
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

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class DashboardOption < MetronomeSDK::BaseModel
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

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
