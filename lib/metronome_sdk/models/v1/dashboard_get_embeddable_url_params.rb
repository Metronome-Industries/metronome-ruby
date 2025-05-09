# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Dashboards#get_embeddable_url
      class DashboardGetEmbeddableURLParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute dashboard
        #   The type of dashboard to retrieve.
        #
        #   @return [Symbol, MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard]
        required :dashboard, enum: -> { MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard }

        # @!attribute bm_group_key_overrides
        #   Optional list of billable metric group key overrides
        #
        #   @return [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>, nil]
        optional :bm_group_key_overrides,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride]
                 }

        # @!attribute color_overrides
        #   Optional list of colors to override
        #
        #   @return [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride>, nil]
        optional :color_overrides,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride]
                 }

        # @!attribute dashboard_options
        #   Optional dashboard specific options
        #
        #   @return [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption>, nil]
        optional :dashboard_options,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption]
                 }

        # @!method initialize(customer_id:, dashboard:, bm_group_key_overrides: nil, color_overrides: nil, dashboard_options: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param dashboard [Symbol, MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard] The type of dashboard to retrieve.
        #
        #   @param bm_group_key_overrides [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>] Optional list of billable metric group key overrides
        #
        #   @param color_overrides [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride>] Optional list of colors to override
        #
        #   @param dashboard_options [Array<MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption>] Optional dashboard specific options
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # The type of dashboard to retrieve.
        module Dashboard
          extend MetronomeSDK::Internal::Type::Enum

          INVOICES = :invoices
          USAGE = :usage
          CREDITS = :credits

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class BmGroupKeyOverride < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute group_key_name
          #   The name of the billable metric group key.
          #
          #   @return [String]
          required :group_key_name, String

          # @!attribute display_name
          #   The display name for the billable metric group key
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!attribute value_display_names
          #   <key, value> pairs of the billable metric group key values and their display
          #   names. e.g. {"a": "Asia", "b": "Euro"}
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :value_display_names,
                   MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!method initialize(group_key_name:, display_name: nil, value_display_names: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride} for more
          #   details.
          #
          #   @param group_key_name [String] The name of the billable metric group key.
          #
          #   @param display_name [String] The display name for the billable metric group key
          #
          #   @param value_display_names [Hash{Symbol=>Object}] <key, value> pairs of the billable metric group key values and their display nam
        end

        class ColorOverride < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute name
          #   The color to override
          #
          #   @return [Symbol, MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name, nil]
          optional :name, enum: -> { MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name }

          # @!attribute value
          #   Hex value representation of the color
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(name: nil, value: nil)
          #   @param name [Symbol, MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name] The color to override
          #
          #   @param value [String] Hex value representation of the color

          # The color to override
          #
          # @see MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride#name
          module Name
            extend MetronomeSDK::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DashboardOption < MetronomeSDK::Internal::Type::BaseModel
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

          # @!method initialize(key:, value:)
          #   @param key [String] The option key name
          #
          #   @param value [String] The option value
        end
      end
    end
  end
end
