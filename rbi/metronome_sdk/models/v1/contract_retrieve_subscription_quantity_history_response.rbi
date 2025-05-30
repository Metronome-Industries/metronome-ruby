# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveSubscriptionQuantityHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :fiat_credit_type_id

          sig { params(fiat_credit_type_id: String).void }
          attr_writer :fiat_credit_type_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History
                ]
              )
            )
          end
          attr_reader :history

          sig do
            params(
              history:
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::OrHash
                ]
            ).void
          end
          attr_writer :history

          sig { returns(T.nilable(String)) }
          attr_reader :subscription_id

          sig { params(subscription_id: String).void }
          attr_writer :subscription_id

          sig do
            params(
              fiat_credit_type_id: String,
              history:
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::OrHash
                ],
              subscription_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            fiat_credit_type_id: nil,
            history: nil,
            subscription_id: nil
          )
          end

          sig do
            override.returns(
              {
                fiat_credit_type_id: String,
                history:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History
                  ],
                subscription_id: String
              }
            )
          end
          def to_hash
          end

          class History < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data
                ]
              )
            end
            attr_accessor :data

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              params(
                data:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data::OrHash
                  ],
                starting_at: Time
              ).returns(T.attached_class)
            end
            def self.new(data:, starting_at:)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data
                    ],
                  starting_at: Time
                }
              )
            end
            def to_hash
            end

            class Data < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :quantity

              sig { returns(Float) }
              attr_accessor :total

              sig { returns(Float) }
              attr_accessor :unit_price

              sig do
                params(
                  quantity: Float,
                  total: Float,
                  unit_price: Float
                ).returns(T.attached_class)
              end
              def self.new(quantity:, total:, unit_price:)
              end

              sig do
                override.returns(
                  { quantity: Float, total: Float, unit_price: Float }
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
end
