# frozen_string_literal: true

module MetronomeSDK
  module Models
    class BaseThresholdCommit < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute product_id
      #   The commit product that will be used to generate the line item for commit
      #   payment.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   Specify the name of the line item for the threshold charge. If left blank, it
      #   will default to the commit product name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(product_id:, description: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::BaseThresholdCommit} for more details.
      #
      #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
      #
      #   @param description [String]
      #
      #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
    end
  end
end
