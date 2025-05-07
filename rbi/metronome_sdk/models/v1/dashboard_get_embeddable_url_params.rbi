# typed: strong

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :customer_id

        # The type of dashboard to retrieve.
        sig do
          returns(
            MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::OrSymbol
          )
        end
        attr_accessor :dashboard

        # Optional list of billable metric group key overrides
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride
              ]
            )
          )
        end
        attr_reader :bm_group_key_overrides

        sig do
          params(
            bm_group_key_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride::OrHash
              ]
          ).void
        end
        attr_writer :bm_group_key_overrides

        # Optional list of colors to override
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride
              ]
            )
          )
        end
        attr_reader :color_overrides

        sig do
          params(
            color_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::OrHash
              ]
          ).void
        end
        attr_writer :color_overrides

        # Optional dashboard specific options
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption
              ]
            )
          )
        end
        attr_reader :dashboard_options

        sig do
          params(
            dashboard_options:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption::OrHash
              ]
          ).void
        end
        attr_writer :dashboard_options

        sig do
          params(
            customer_id: String,
            dashboard:
              MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::OrSymbol,
            bm_group_key_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride::OrHash
              ],
            color_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::OrHash
              ],
            dashboard_options:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # The type of dashboard to retrieve.
          dashboard:,
          # Optional list of billable metric group key overrides
          bm_group_key_overrides: nil,
          # Optional list of colors to override
          color_overrides: nil,
          # Optional dashboard specific options
          dashboard_options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              dashboard:
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::OrSymbol,
              bm_group_key_overrides:
                T::Array[
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride
                ],
              color_overrides:
                T::Array[
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride
                ],
              dashboard_options:
                T::Array[
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption
                ],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The type of dashboard to retrieve.
        module Dashboard
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICES =
            T.let(
              :invoices,
              MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::TaggedSymbol
            )
          USAGE =
            T.let(
              :usage,
              MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::TaggedSymbol
            )
          CREDITS =
            T.let(
              :credits,
              MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class BmGroupKeyOverride < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # The name of the billable metric group key.
          sig { returns(String) }
          attr_accessor :group_key_name

          # The display name for the billable metric group key
          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          # <key, value> pairs of the billable metric group key values and their display
          # names. e.g. {"a": "Asia", "b": "Euro"}
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :value_display_names

          sig { params(value_display_names: T::Hash[Symbol, T.anything]).void }
          attr_writer :value_display_names

          sig do
            params(
              group_key_name: String,
              display_name: String,
              value_display_names: T::Hash[Symbol, T.anything]
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the billable metric group key.
            group_key_name:,
            # The display name for the billable metric group key
            display_name: nil,
            # <key, value> pairs of the billable metric group key values and their display
            # names. e.g. {"a": "Asia", "b": "Euro"}
            value_display_names: nil
          )
          end

          sig do
            override.returns(
              {
                group_key_name: String,
                display_name: String,
                value_display_names: T::Hash[Symbol, T.anything]
              }
            )
          end
          def to_hash
          end
        end

        class ColorOverride < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # The color to override
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::OrSymbol
              )
            )
          end
          attr_reader :name

          sig do
            params(
              name:
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::OrSymbol
            ).void
          end
          attr_writer :name

          # Hex value representation of the color
          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig do
            params(
              name:
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The color to override
            name: nil,
            # Hex value representation of the color
            value: nil
          )
          end

          sig do
            override.returns(
              {
                name:
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # The color to override
          module Name
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GRAY_DARK =
              T.let(
                :Gray_dark,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            GRAY_MEDIUM =
              T.let(
                :Gray_medium,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            GRAY_LIGHT =
              T.let(
                :Gray_light,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            GRAY_EXTRALIGHT =
              T.let(
                :Gray_extralight,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            WHITE =
              T.let(
                :White,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            PRIMARY_MEDIUM =
              T.let(
                :Primary_medium,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            PRIMARY_LIGHT =
              T.let(
                :Primary_light,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_0 =
              T.let(
                :UsageLine_0,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_1 =
              T.let(
                :UsageLine_1,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_2 =
              T.let(
                :UsageLine_2,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_3 =
              T.let(
                :UsageLine_3,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_4 =
              T.let(
                :UsageLine_4,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_5 =
              T.let(
                :UsageLine_5,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_6 =
              T.let(
                :UsageLine_6,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_7 =
              T.let(
                :UsageLine_7,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_8 =
              T.let(
                :UsageLine_8,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            USAGE_LINE_9 =
              T.let(
                :UsageLine_9,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            PRIMARY_GREEN =
              T.let(
                :Primary_green,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )
            PRIMARY_RED =
              T.let(
                :Primary_red,
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::Name::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DashboardOption < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # The option key name
          sig { returns(String) }
          attr_accessor :key

          # The option value
          sig { returns(String) }
          attr_accessor :value

          sig { params(key: String, value: String).returns(T.attached_class) }
          def self.new(
            # The option key name
            key:,
            # The option value
            value:
          )
          end

          sig { override.returns({ key: String, value: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
