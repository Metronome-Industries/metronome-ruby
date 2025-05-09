# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractAddManualBalanceEntryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # ID of the balance (commit or credit) to update.
        sig { returns(String) }
        attr_accessor :id

        # Amount to add to the segment. A negative number will draw down from the balance.
        sig { returns(Float) }
        attr_accessor :amount

        # ID of the customer whose balance is to be updated.
        sig { returns(String) }
        attr_accessor :customer_id

        # Reason for the manual adjustment. This will be displayed in the ledger.
        sig { returns(String) }
        attr_accessor :reason

        # ID of the segment to update.
        sig { returns(String) }
        attr_accessor :segment_id

        # ID of the contract to update. Leave blank to update a customer level balance.
        sig { returns(T.nilable(String)) }
        attr_reader :contract_id

        sig { params(contract_id: String).void }
        attr_writer :contract_id

        # RFC 3339 timestamp indicating when the manual adjustment takes place. If not
        # provided, it will default to the start of the segment.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          params(
            id: String,
            amount: Float,
            customer_id: String,
            reason: String,
            segment_id: String,
            contract_id: String,
            timestamp: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the balance (commit or credit) to update.
          id:,
          # Amount to add to the segment. A negative number will draw down from the balance.
          amount:,
          # ID of the customer whose balance is to be updated.
          customer_id:,
          # Reason for the manual adjustment. This will be displayed in the ledger.
          reason:,
          # ID of the segment to update.
          segment_id:,
          # ID of the contract to update. Leave blank to update a customer level balance.
          contract_id: nil,
          # RFC 3339 timestamp indicating when the manual adjustment takes place. If not
          # provided, it will default to the start of the segment.
          timestamp: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Float,
              customer_id: String,
              reason: String,
              segment_id: String,
              contract_id: String,
              timestamp: Time,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
