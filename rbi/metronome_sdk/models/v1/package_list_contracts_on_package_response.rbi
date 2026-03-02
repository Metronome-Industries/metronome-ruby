# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PackageListContractsOnPackageResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::PackageListContractsOnPackageResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contract_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          params(
            contract_id: String,
            customer_id: String,
            starting_at: Time,
            archived_at: Time,
            ending_before: Time
          ).returns(T.attached_class)
        end
        def self.new(
          contract_id:,
          customer_id:,
          starting_at:,
          archived_at: nil,
          ending_before: nil
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              starting_at: Time,
              archived_at: Time,
              ending_before: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
