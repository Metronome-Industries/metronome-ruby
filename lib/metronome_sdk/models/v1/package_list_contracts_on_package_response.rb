# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#list_contracts_on_package
      class PackageListContractsOnPackageResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time

        # @!attribute ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!method initialize(contract_id:, customer_id:, starting_at:, archived_at: nil, ending_before: nil)
        #   @param contract_id [String]
        #   @param customer_id [String]
        #   @param starting_at [Time]
        #   @param archived_at [Time]
        #   @param ending_before [Time]
      end
    end
  end
end
