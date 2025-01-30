# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleResponse < Metronome::BaseModel
        Shape = T.type_alias do
          {
            data: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data],
            next_page: T.nilable(String)
          }
        end

        sig { returns(T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data],
            next_page: T.nilable(String)
          ).void
        end
        def initialize(data:, next_page: nil); end

        sig { returns(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Shape) }
        def to_h; end

        class Data < Metronome::BaseModel
          Shape = T.type_alias do
            {
              entitled: T::Boolean,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate: Metronome::Models::Rate,
              starting_at: Time,
              commit_rate: Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate,
              ending_before: Time,
              pricing_group_values: T::Hash[Symbol, String]
            }
          end

          sig { returns(T::Boolean) }
          attr_accessor :entitled

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :product_custom_fields

          sig { returns(String) }
          attr_accessor :product_id

          sig { returns(String) }
          attr_accessor :product_name

          sig { returns(T::Array[String]) }
          attr_accessor :product_tags

          sig { returns(Metronome::Models::Rate) }
          attr_accessor :rate

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            returns(T.nilable(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate))
          end
          attr_reader :commit_rate

          sig do
            params(commit_rate: Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate).void
          end
          attr_writer :commit_rate

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          sig do
            params(
              entitled: T::Boolean,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate: Metronome::Models::Rate,
              starting_at: Time,
              commit_rate: Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate,
              ending_before: Time,
              pricing_group_values: T::Hash[Symbol, String]
            ).void
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
          ); end

          sig { returns(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::Shape) }
          def to_h; end

          class CommitRate < Metronome::BaseModel
            Shape = T.type_alias do
              {rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]}
            end

            sig { returns(Symbol) }
            attr_accessor :rate_type

            sig { returns(T.nilable(Float)) }
            attr_reader :price

            sig { params(price: Float).void }
            attr_writer :price

            sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
            attr_reader :tiers

            sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
            attr_writer :tiers

            sig { params(rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]).void }
            def initialize(rate_type:, price: nil, tiers: nil); end

            sig do
              returns(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::Shape)
            end
            def to_h; end

            class RateType < Metronome::Enum
              abstract!

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end
        end
      end
    end
  end
end
