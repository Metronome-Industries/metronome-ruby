# frozen_string_literal: true

module MetronomeSDK
  module Models
    class UpdateBaseThresholdCommit < MetronomeSDK::Internal::Type::BaseModel
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

      # @!attribute product_id
      #   The commit product that will be used to generate the line item for commit
      #   payment.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!method initialize(description: nil, name: nil, product_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::UpdateBaseThresholdCommit} for more details.
      #
      #   @param description [String]
      #
      #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
      #
      #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
    end
  end
end
