# typed: strong

module Metronome
  module Models
    class DashboardGetEmbeddableURLParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(Symbol) }
      def dashboard
      end

      sig { params(_: Symbol).returns(Symbol) }
      def dashboard=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride])) }
      def bm_group_key_overrides
      end

      sig do
        params(_: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride])
          .returns(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride])
      end
      def bm_group_key_overrides=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride])) }
      def color_overrides
      end

      sig do
        params(_: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride])
          .returns(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride])
      end
      def color_overrides=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption])) }
      def dashboard_options
      end

      sig do
        params(_: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption])
          .returns(T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption])
      end
      def dashboard_options=(_)
      end

      sig do
        params(
          customer_id: String,
          dashboard: Symbol,
          bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
          color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride],
          dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        dashboard:,
        bm_group_key_overrides: nil,
        color_overrides: nil,
        dashboard_options: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end

      class Dashboard < Metronome::Enum
        abstract!

        INVOICES = :invoices
        USAGE = :usage
        CREDITS = :credits

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class BmGroupKeyOverride < Metronome::BaseModel
        sig { returns(String) }
        def group_key_name
        end

        sig { params(_: String).returns(String) }
        def group_key_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def display_name
        end

        sig { params(_: String).returns(String) }
        def display_name=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def value_display_names
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def value_display_names=(_)
        end

        sig do
          params(
            group_key_name: String,
            display_name: String,
            value_display_names: T::Hash[Symbol, T.anything]
          ).void
        end
        def initialize(group_key_name:, display_name: nil, value_display_names: nil)
        end

        sig do
          override
            .returns({
                       group_key_name: String,
                       display_name: String,
                       value_display_names: T::Hash[Symbol, T.anything]
                     })
        end
        def to_hash
        end
      end

      class ColorOverride < Metronome::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def name
        end

        sig { params(_: Symbol).returns(Symbol) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(name: Symbol, value: String).void }
        def initialize(name: nil, value: nil)
        end

        sig { override.returns({name: Symbol, value: String}) }
        def to_hash
        end

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
          def self.values
          end
        end
      end

      class DashboardOption < Metronome::BaseModel
        sig { returns(String) }
        def key
        end

        sig { params(_: String).returns(String) }
        def key=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(key: String, value: String).void }
        def initialize(key:, value:)
        end

        sig { override.returns({key: String, value: String}) }
        def to_hash
        end
      end
    end
  end
end
