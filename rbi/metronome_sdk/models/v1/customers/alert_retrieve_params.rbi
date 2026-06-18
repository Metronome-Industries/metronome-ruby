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

          # Can be used with only `low_remaining_contract_credit_and_commit_balance_reached`
          # notifications. Used to filter the alert by the custom field key-value pair.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier
                ]
              )
            )
          end
          attr_reader :alert_specifiers

          sig do
            params(
              alert_specifiers:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::OrHash
                ]
            ).void
          end
          attr_writer :alert_specifiers

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

          # Only allowed for `low_remaining_seat_balance_reached` notifications. This
          # filters alerts by the seat group key-value pair.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter
              )
            )
          end
          attr_reader :seat_filter

          sig do
            params(
              seat_filter:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter::OrHash
            ).void
          end
          attr_writer :seat_filter

          sig do
            params(
              alert_id: String,
              customer_id: String,
              alert_specifiers:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::OrHash
                ],
              group_values:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue::OrHash
                ],
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
              seat_filter:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter::OrHash,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Metronome ID of the threshold notification
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            # Can be used with only `low_remaining_contract_credit_and_commit_balance_reached`
            # notifications. Used to filter the alert by the custom field key-value pair.
            alert_specifiers: nil,
            # Only present for `spend_threshold_reached` notifications. Retrieve the
            # notification for a specific group key-value pair.
            group_values: nil,
            # When parallel threshold notifications are enabled during migration, this flag
            # denotes whether to fetch notifications for plans or contracts.
            plans_or_contracts: nil,
            # Only allowed for `low_remaining_seat_balance_reached` notifications. This
            # filters alerts by the seat group key-value pair.
            seat_filter: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                alert_id: String,
                customer_id: String,
                alert_specifiers:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier
                  ],
                group_values:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue
                  ],
                plans_or_contracts:
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
                seat_filter:
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class AlertSpecifier < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # A list of custom field filters for notification types that support advanced
            # filtering
            sig do
              returns(
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter
                ]
              )
            end
            attr_accessor :custom_field_filters

            # If provided, the specifier will not apply to balances that matches the inclusion
            # criteria and any of the excluding values.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude
                  ]
                )
              )
            end
            attr_reader :exclude

            sig do
              params(
                exclude:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::OrHash
                  ]
              ).void
            end
            attr_writer :exclude

            sig do
              params(
                custom_field_filters:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::OrHash
                  ],
                exclude:
                  T::Array[
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of custom field filters for notification types that support advanced
              # filtering
              custom_field_filters:,
              # If provided, the specifier will not apply to balances that matches the inclusion
              # criteria and any of the excluding values.
              exclude: nil
            )
            end

            sig do
              override.returns(
                {
                  custom_field_filters:
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter
                    ],
                  exclude:
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude
                    ]
                }
              )
            end
            def to_hash
            end

            class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::OrSymbol
                )
              end
              attr_accessor :entity

              sig { returns(String) }
              attr_accessor :key

              sig { returns(String) }
              attr_accessor :value

              sig do
                params(
                  entity:
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::OrSymbol,
                  key: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(entity:, key:, value:)
              end

              sig do
                override.returns(
                  {
                    entity:
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::OrSymbol,
                    key: String,
                    value: String
                  }
                )
              end
              def to_hash
              end

              module Entity
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTRACT =
                  T.let(
                    :Contract,
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::TaggedSymbol
                  )
                COMMIT =
                  T.let(
                    :Commit,
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::TaggedSymbol
                  )
                CONTRACT_CREDIT =
                  T.let(
                    :ContractCredit,
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::TaggedSymbol
                  )
                CONTRACT_CREDIT_OR_COMMIT =
                  T.let(
                    :ContractCreditOrCommit,
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Exclude < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # A list of custom field filters for notification types that support advanced
              # filtering
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter
                    ]
                  )
                )
              end
              attr_reader :custom_field_filters

              sig do
                params(
                  custom_field_filters:
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::OrHash
                    ]
                ).void
              end
              attr_writer :custom_field_filters

              sig do
                params(
                  custom_field_filters:
                    T::Array[
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # A list of custom field filters for notification types that support advanced
                # filtering
                custom_field_filters: nil
              )
              end

              sig do
                override.returns(
                  {
                    custom_field_filters:
                      T::Array[
                        MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter
                      ]
                  }
                )
              end
              def to_hash
              end

              class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol
                  )
                end
                attr_accessor :entity

                sig { returns(String) }
                attr_accessor :key

                sig { returns(String) }
                attr_accessor :value

                sig do
                  params(
                    entity:
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol,
                    key: String,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(entity:, key:, value:)
                end

                sig do
                  override.returns(
                    {
                      entity:
                        MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol,
                      key: String,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                module Entity
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTRACT =
                    T.let(
                      :Contract,
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                    )
                  COMMIT =
                    T.let(
                      :Commit,
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                    )
                  CONTRACT_CREDIT =
                    T.let(
                      :ContractCredit,
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                    )
                  CONTRACT_CREDIT_OR_COMMIT =
                    T.let(
                      :ContractCreditOrCommit,
                      MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
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

          class SeatFilter < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The seat group key (e.g., "seat_id", "user_id")
            sig { returns(String) }
            attr_accessor :seat_group_key

            # The specific seat identifier to filter by
            sig { returns(String) }
            attr_accessor :seat_group_value

            # Only allowed for `low_remaining_seat_balance_reached` notifications. This
            # filters alerts by the seat group key-value pair.
            sig do
              params(seat_group_key: String, seat_group_value: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The seat group key (e.g., "seat_id", "user_id")
              seat_group_key:,
              # The specific seat identifier to filter by
              seat_group_value:
            )
            end

            sig do
              override.returns(
                { seat_group_key: String, seat_group_value: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
