# typed: strong

module Metronome
  module Models
    class DashboardGetEmbeddableURLParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Symbol) }
      attr_accessor :dashboard

      sig do
        returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride]))
      end
      attr_reader :bm_group_key_overrides

      sig do
        params(
          bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride]
        ).void
      end
      attr_writer :bm_group_key_overrides

      sig { returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride])) }
      attr_reader :color_overrides

      sig do
        params(color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride]).void
      end
      attr_writer :color_overrides

      sig do
        returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption]))
      end
      attr_reader :dashboard_options

      sig do
        params(dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption]).void
      end
      attr_writer :dashboard_options

      sig do
        params(
          customer_id: String,
          dashboard: Symbol,
          bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
          color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride],
          dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_id:,
        dashboard:,
        bm_group_key_overrides: nil,
        color_overrides: nil,
        dashboard_options: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            customer_id: String,
            dashboard: Symbol,
            bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
            color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride],
            dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption],
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end

      class Dashboard < Metronome::Enum
        abstract!

        INVOICES = :invoices
        USAGE = :usage
        CREDITS = :credits

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class BmGroupKeyOverride < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :group_key_name

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :value_display_names

        sig { params(value_display_names: T::Hash[Symbol, T.anything]).void }
        attr_writer :value_display_names

        sig do
          params(
            group_key_name: String,
            display_name: String,
            value_display_names: T::Hash[Symbol, T.anything]
          ).void
        end
        def initialize(group_key_name:, display_name: nil, value_display_names: nil); end

        sig do
          override.returns(
            {
              group_key_name: String,
              display_name: String,
              value_display_names: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash; end
      end

      class ColorOverride < Metronome::BaseModel
        sig { returns(T.nilable(Symbol)) }
        attr_reader :name

        sig { params(name: Symbol).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig { params(name: Symbol, value: String).void }
        def initialize(name: nil, value: nil); end

        sig { override.returns({name: Symbol, value: String}) }
        def to_hash; end

        class Name < Metronome::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class DashboardOption < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :key

        sig { returns(String) }
        attr_accessor :value

        sig { params(key: String, value: String).void }
        def initialize(key:, value:); end

        sig { override.returns({key: String, value: String}) }
        def to_hash; end
      end
    end
  end
end
