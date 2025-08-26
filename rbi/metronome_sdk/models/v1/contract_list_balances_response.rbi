# typed: strong

module MetronomeSDK
  module Models
    module V1
      module ContractListBalancesResponse
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias { T.any(MetronomeSDK::Commit, MetronomeSDK::Credit) }

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::Models::V1::ContractListBalancesResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
