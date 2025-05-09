# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Credits#update_end_date
        class CreditUpdateEndDateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::ID]
          required :data, -> { MetronomeSDK::ID }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::ID]
        end
      end
    end
  end
end
