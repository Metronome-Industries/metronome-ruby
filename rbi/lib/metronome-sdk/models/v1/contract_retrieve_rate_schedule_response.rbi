# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveRateScheduleResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data])
            .returns(T::Array[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data])
        end
        def data=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def next_page=(_)
        end

        sig do
          params(
            data: T::Array[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data],
            next_page: T.nilable(String)
          )
            .void
        end
        def initialize(data:, next_page: nil)
        end

        sig do
          override
            .returns(
              {
                data: T::Array[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data],
                next_page: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(T::Boolean) }
          def entitled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def entitled=(_)
          end

          sig { returns(MetronomeSDK::Models::Rate) }
          def list_rate
          end

          sig { params(_: MetronomeSDK::Models::Rate).returns(MetronomeSDK::Models::Rate) }
          def list_rate=(_)
          end

          sig { returns(T::Hash[Symbol, String]) }
          def product_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def product_custom_fields=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(String) }
          def product_name
          end

          sig { params(_: String).returns(String) }
          def product_name=(_)
          end

          sig { returns(T::Array[String]) }
          def product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def product_tags=(_)
          end

          sig { returns(String) }
          def rate_card_id
          end

          sig { params(_: String).returns(String) }
          def rate_card_id=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate)) }
          def commit_rate
          end

          sig do
            params(_: MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate)
              .returns(MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate)
          end
          def commit_rate=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::Rate)) }
          def override_rate
          end

          sig { params(_: MetronomeSDK::Models::Rate).returns(MetronomeSDK::Models::Rate) }
          def override_rate=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def pricing_group_values=(_)
          end

          sig do
            params(
              entitled: T::Boolean,
              list_rate: MetronomeSDK::Models::Rate,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate_card_id: String,
              starting_at: Time,
              commit_rate: MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate,
              ending_before: Time,
              override_rate: MetronomeSDK::Models::Rate,
              pricing_group_values: T::Hash[Symbol, String]
            )
              .void
          end
          def initialize(
            entitled:,
            list_rate:,
            product_custom_fields:,
            product_id:,
            product_name:,
            product_tags:,
            rate_card_id:,
            starting_at:,
            commit_rate: nil,
            ending_before: nil,
            override_rate: nil,
            pricing_group_values: nil
          )
          end

          sig do
            override
              .returns(
                {
                  entitled: T::Boolean,
                  list_rate: MetronomeSDK::Models::Rate,
                  product_custom_fields: T::Hash[Symbol, String],
                  product_id: String,
                  product_name: String,
                  product_tags: T::Array[String],
                  rate_card_id: String,
                  starting_at: Time,
                  commit_rate: MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate,
                  ending_before: Time,
                  override_rate: MetronomeSDK::Models::Rate,
                  pricing_group_values: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash
          end

          class CommitRate < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
            end

            sig { returns(T.nilable(Float)) }
            def price
            end

            sig { params(_: Float).returns(Float) }
            def price=(_)
            end

            sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
            def tiers
            end

            sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
            def tiers=(_)
            end

            sig { params(rate_type: Symbol, price: Float, tiers: T::Array[MetronomeSDK::Models::Tier]).void }
            def initialize(rate_type:, price: nil, tiers: nil)
            end

            sig { override.returns({rate_type: Symbol, price: Float, tiers: T::Array[MetronomeSDK::Models::Tier]}) }
            def to_hash
            end

            class RateType < MetronomeSDK::Enum
              abstract!

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
