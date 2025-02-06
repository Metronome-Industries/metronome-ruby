# typed: strong

module Metronome
  module Models
    class ContractRetrieveRateScheduleResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::ContractRetrieveRateScheduleResponse::Data]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(
          data: T::Array[Metronome::Models::ContractRetrieveRateScheduleResponse::Data],
          next_page: T.nilable(String)
        ).void
      end
      def initialize(data:, next_page: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Metronome::Models::ContractRetrieveRateScheduleResponse::Data],
            next_page: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :entitled

        sig { returns(Metronome::Models::Rate) }
        attr_accessor :list_rate

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :product_custom_fields

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(String) }
        attr_accessor :product_name

        sig { returns(T::Array[String]) }
        attr_accessor :product_tags

        sig { returns(String) }
        attr_accessor :rate_card_id

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate)) }
        attr_reader :commit_rate

        sig do
          params(commit_rate: Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate).void
        end
        attr_writer :commit_rate

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(Metronome::Models::Rate)) }
        attr_reader :override_rate

        sig { params(override_rate: Metronome::Models::Rate).void }
        attr_writer :override_rate

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :pricing_group_values

        sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :pricing_group_values

        sig do
          params(
            entitled: T::Boolean,
            list_rate: Metronome::Models::Rate,
            product_custom_fields: T::Hash[Symbol, String],
            product_id: String,
            product_name: String,
            product_tags: T::Array[String],
            rate_card_id: String,
            starting_at: Time,
            commit_rate: Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate,
            ending_before: Time,
            override_rate: Metronome::Models::Rate,
            pricing_group_values: T::Hash[Symbol, String]
          ).void
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
          override.returns(
            {
              entitled: T::Boolean,
              list_rate: Metronome::Models::Rate,
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_name: String,
              product_tags: T::Array[String],
              rate_card_id: String,
              starting_at: Time,
              commit_rate: Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate,
              ending_before: Time,
              override_rate: Metronome::Models::Rate,
              pricing_group_values: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        class CommitRate < Metronome::BaseModel
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
          def initialize(rate_type:, price: nil, tiers: nil)
          end

          sig do
            override.returns({rate_type: Symbol, price: Float, tiers: T::Array[Metronome::Models::Tier]})
          end
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
