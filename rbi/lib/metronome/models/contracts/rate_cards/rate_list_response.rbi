# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateListResponse < Metronome::BaseModel
          sig { returns(T::Boolean) }
          def entitled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def entitled=(_)
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

          sig { returns(Metronome::Models::Rate) }
          def rate
          end

          sig { params(_: Metronome::Models::Rate).returns(Metronome::Models::Rate) }
          def rate=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Contracts::RateCards::RateListResponse::CommitRate)) }
          def commit_rate
          end

          sig do
            params(_: Metronome::Models::Contracts::RateCards::RateListResponse::CommitRate)
              .returns(Metronome::Models::Contracts::RateCards::RateListResponse::CommitRate)
          end
          def commit_rate=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
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
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate: Metronome::Models::Rate,
              starting_at: Time,
              commit_rate: Metronome::Models::Contracts::RateCards::RateListResponse::CommitRate,
              ending_before: Time,
              pricing_group_values: T::Hash[Symbol, String]
            )
              .void
          end
          def initialize(
            entitled:,
            product_custom_fields:,
            product_id:,
            product_name:,
            product_tags:,
            rate:,
            starting_at:,
            commit_rate: nil,
            ending_before: nil,
            pricing_group_values: nil
          )
          end

          sig do
            override
              .returns(
                {
                  entitled: T::Boolean,
                  product_custom_fields: T::Hash[Symbol, String],
                  product_id: String,
                  product_name: String,
                  product_tags: T::Array[String],
                  rate: Metronome::Models::Rate,
                  starting_at: Time,
                  commit_rate: Metronome::Models::Contracts::RateCards::RateListResponse::CommitRate,
                  ending_before: Time,
                  pricing_group_values: T::Hash[Symbol, String]
                }
              )
          end
          def to_hash
          end

          class CommitRate < Metronome::BaseModel
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

            sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
            def tiers
            end

            sig { params(_: T::Array[Metronome::Models::Tier]).returns(T::Array[Metronome::Models::Tier]) }
            def tiers=(_)
            end

            sig { params(rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]).void }
            def initialize(rate_type:, price: nil, tiers: nil)
            end

            sig { override.returns({rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]}) }
            def to_hash
            end

            class RateType < Metronome::Enum
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
