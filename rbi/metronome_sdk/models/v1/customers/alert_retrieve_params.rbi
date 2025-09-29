# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::AlertRetrieveParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The Metronome ID of the threshold notification
          sig { returns(String) }
          attr_accessor :alert_id

          # The Metronome ID of the customer
          sig { returns(String) }
          attr_accessor :customer_id

          # Only present for `spend_threshold_reached` notifications. Retrieve the
          # notification for a specific group key-value pair.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue
                ]
              )
            )
          end
          attr_reader :group_values

          sig do
            params(
              group_values:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue::OrHash
                ]
            ).void
          end
          attr_writer :group_values

          # When parallel threshold notifications are enabled during migration, this flag
          # denotes whether to fetch notifications for plans or contracts.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol
              )
            )
          end
          attr_reader :plans_or_contracts

          sig do
            params(
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol
            ).void
          end
          attr_writer :plans_or_contracts

          sig do
            params(
              alert_id: String,
              customer_id: String,
              group_values:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue::OrHash
                ],
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Metronome ID of the threshold notification
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            # Only present for `spend_threshold_reached` notifications. Retrieve the
            # notification for a specific group key-value pair.
            group_values: nil,
            # When parallel threshold notifications are enabled during migration, this flag
            # denotes whether to fetch notifications for plans or contracts.
            plans_or_contracts: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                alert_id: String,
                customer_id: String,
                group_values:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue
                  ],
                plans_or_contracts:
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class GroupValue < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :key

            sig { returns(String) }
            attr_accessor :value

            # Scopes threshold notification evaluation to a specific presentation group key on
            # individual line items. Only present for spend notifications.
            sig { params(key: String, value: String).returns(T.attached_class) }
            def self.new(key:, value:)
            end

            sig { override.returns({ key: String, value: String }) }
            def to_hash
            end
          end

          # When parallel threshold notifications are enabled during migration, this flag
          # denotes whether to fetch notifications for plans or contracts.
          module PlansOrContracts
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLANS =
              T.let(
                :PLANS,
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::TaggedSymbol
              )
            CONTRACTS =
              T.let(
                :CONTRACTS,
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::TaggedSymbol
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
