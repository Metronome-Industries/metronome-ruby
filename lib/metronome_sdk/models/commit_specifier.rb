# frozen_string_literal: true

module MetronomeSDK
  module Models
    class CommitSpecifier < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute presentation_group_values
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute pricing_group_values
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute product_id
      #   If provided, the specifier will only apply to the product with the specified ID.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute product_tags
      #   If provided, the specifier will only apply to products with all the specified
      #   tags.
      #
      #   @return [Array<String>, nil]
      optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::CommitSpecifier} for more details.
      #
      #   @param presentation_group_values [Hash{Symbol=>String}]
      #
      #   @param pricing_group_values [Hash{Symbol=>String}]
      #
      #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
      #
      #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
    end
  end
end
