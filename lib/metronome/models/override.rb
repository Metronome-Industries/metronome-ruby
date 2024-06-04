# frozen_string_literal: true

module Metronome
  module Models
    class Override < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] starting_at
      #   @return [String]
      required :starting_at, String

      # @!attribute [rw] applicable_product_tags
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

      # @!attribute [rw] ending_before
      #   @return [String]
      optional :ending_before, String

      # @!attribute [rw] entitled
      #   @return [Boolean]
      optional :entitled, Metronome::BooleanModel

      # @!attribute [rw] multiplier
      #   @return [Float]
      optional :multiplier, Float

      # @!attribute [rw] override_specifiers
      #   @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      optional :override_specifiers,
               Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideSpecifier })

      # @!attribute [rw] overwrite_rate
      #   @return [Metronome::Models::Override::OverwriteRate]
      optional :overwrite_rate, -> { Metronome::Models::Override::OverwriteRate }

      # @!attribute [rw] product
      #   @return [Metronome::Models::Override::Product]
      optional :product, -> { Metronome::Models::Override::Product }

      # @!attribute [rw] type
      #   @return [Symbol]
      optional :type, Metronome::Enum.new(:OVERWRITE, :MULTIPLIER)

      class OverrideSpecifier < BaseModel
        # @!attribute [rw] presentation_group_values
        #   @return [Hash]
        optional :presentation_group_values, Hash

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!attribute [rw] product_id
        #   @return [String]
        optional :product_id, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf.new(String)
      end

      class OverwriteRate < BaseModel
        # @!attribute [rw] rate_type
        #   @return [Symbol]
        required :rate_type,
                 Metronome::Enum.new(
                   :FLAT,
                   :flat,
                   :PERCENTAGE,
                   :percentage,
                   :SUBSCRIPTION,
                   :subscription,
                   :TIERED,
                   :tiered,
                   :CUSTOM,
                   :custom
                 )

        # @!attribute [rw] custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
        #   @return [Hash]
        optional :custom_rate, Hash

        # @!attribute [rw] is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type.
        #   @return [Boolean]
        optional :is_prorated, Metronome::BooleanModel

        # @!attribute [rw] price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   @return [Float]
        optional :price, Float

        # @!attribute [rw] quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   @return [Float]
        optional :quantity, Float

        # @!attribute [rw] tiers
        #   Only set for TIERED rate_type.
        #   @return [Array<Metronome::Models::Override::OverwriteRate::Tier>]
        optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverwriteRate::Tier })

        class Tier < BaseModel
          # @!attribute [rw] price
          #   @return [Float]
          required :price, Float

          # @!attribute [rw] size
          #   @return [Float]
          optional :size, Float
        end
      end

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String
      end
    end
  end
end
