# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#update_end_date
        class CommitUpdateEndDateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse::Data]

          # @see MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end
        end
      end
    end
  end
end
