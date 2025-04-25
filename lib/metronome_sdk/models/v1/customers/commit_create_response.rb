# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#create
        class CommitCreateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::ID]
          required :data, -> { MetronomeSDK::Models::ID }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::ID]
        end
      end
    end
  end
end
