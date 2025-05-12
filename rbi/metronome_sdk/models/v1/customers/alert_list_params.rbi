# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::AlertListParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The Metronome ID of the customer
          sig { returns(String) }
          attr_accessor :customer_id

          # Cursor that indicates where the next page of results should start.
          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          # Optionally filter by alert status. If absent, only enabled alerts will be
          # returned.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::OrSymbol
                ]
              )
            )
          end
          attr_reader :alert_statuses

          sig do
            params(
              alert_statuses:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::OrSymbol
                ]
            ).void
          end
          attr_writer :alert_statuses

          sig do
            params(
              customer_id: String,
              next_page: String,
              alert_statuses:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::OrSymbol
                ],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Metronome ID of the customer
            customer_id:,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Optionally filter by alert status. If absent, only enabled alerts will be
            # returned.
            alert_statuses: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                next_page: String,
                alert_statuses:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::OrSymbol
                  ],
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module AlertStatus
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLED =
              T.let(
                :ENABLED,
                MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::TaggedSymbol
              )
            DISABLED =
              T.let(
                :DISABLED,
                MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :ARCHIVED,
                MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
