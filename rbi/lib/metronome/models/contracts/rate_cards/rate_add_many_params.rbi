# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateAddManyParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          Shape = T.type_alias do
            T.all(
              {
                rate_card_id: String,
                rates: T::Array[Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate]
              },
              Metronome::RequestParameters::Shape
            )
          end

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig { returns(T::Array[Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate]) }
          attr_accessor :rates

          sig do
            params(
              rate_card_id: String,
              rates: T::Array[Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate],
              request_options: Metronome::RequestOpts
            ).void
          end
          def initialize(rate_card_id:, rates:, request_options: {}); end

          sig { returns(Metronome::Models::Contracts::RateCards::RateAddManyParams::Shape) }
          def to_h; end

          class Rate < Metronome::BaseModel
            Shape = T.type_alias do
              {
                entitled: T::Boolean,
                product_id: String,
                rate_type: Symbol,
                starting_at: Time,
                commit_rate: Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::CommitRate,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                ending_before: Time,
                is_prorated: T::Boolean,
                price: Float,
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                tiers: T::Array[Metronome::Models::Tier],
                use_list_prices: T::Boolean
              }
            end

            sig { returns(T::Boolean) }
            attr_accessor :entitled

            sig { returns(String) }
            attr_accessor :product_id

            sig { returns(Symbol) }
            attr_accessor :rate_type

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(T.nilable(Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::CommitRate))
            end
            attr_reader :commit_rate

            sig do
              params(commit_rate: Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::CommitRate).void
            end
            attr_writer :commit_rate

            sig { returns(T.nilable(String)) }
            attr_reader :credit_type_id

            sig { params(credit_type_id: String).void }
            attr_writer :credit_type_id

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :custom_rate

            sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
            attr_writer :custom_rate

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_prorated

            sig { params(is_prorated: T::Boolean).void }
            attr_writer :is_prorated

            sig { returns(T.nilable(Float)) }
            attr_reader :price

            sig { params(price: Float).void }
            attr_writer :price

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T::Array[Metronome::Models::Tier]) }
            attr_reader :tiers

            sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
            attr_writer :tiers

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :use_list_prices

            sig { params(use_list_prices: T::Boolean).void }
            attr_writer :use_list_prices

            sig do
              params(
                entitled: T::Boolean,
                product_id: String,
                rate_type: Symbol,
                starting_at: Time,
                commit_rate: Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::CommitRate,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                ending_before: Time,
                is_prorated: T::Boolean,
                price: Float,
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                tiers: T::Array[Metronome::Models::Tier],
                use_list_prices: T::Boolean
              ).void
            end
            def initialize(
              entitled:,
              product_id:,
              rate_type:,
              starting_at:,
              commit_rate: nil,
              credit_type_id: nil,
              custom_rate: nil,
              ending_before: nil,
              is_prorated: nil,
              price: nil,
              pricing_group_values: nil,
              quantity: nil,
              tiers: nil,
              use_list_prices: nil
            ); end

            sig { returns(Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::Shape) }
            def to_h; end

            class RateType < Metronome::Enum
              abstract!

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              sig { returns(T::Array[Symbol]) }
              def self.values; end
            end

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

              sig { returns(T::Array[Metronome::Models::Tier]) }
              attr_reader :tiers

              sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
              attr_writer :tiers

              sig { params(rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]).void }
              def initialize(rate_type:, price: nil, tiers: nil); end

              sig do
                returns(Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::Shape)
              end
              def to_h; end

              class RateType < Metronome::Enum
                abstract!

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                sig { returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end
        end
      end
    end
  end
end
