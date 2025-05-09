# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # The Metronome ID of the alert
          sig { returns(String) }
          attr_accessor :alert_id

          # The Metronome ID of the customer
          sig { returns(String) }
          attr_accessor :customer_id

          # When parallel alerts are enabled during migration, this flag denotes whether to
          # fetch alerts for plans or contracts.
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
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Metronome ID of the alert
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            # When parallel alerts are enabled during migration, this flag denotes whether to
            # fetch alerts for plans or contracts.
            plans_or_contracts: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                alert_id: String,
                customer_id: String,
                plans_or_contracts:
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # When parallel alerts are enabled during migration, this flag denotes whether to
          # fetch alerts for plans or contracts.
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
