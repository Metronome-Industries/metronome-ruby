# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractListBalancesParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Return only balances that have access schedules that "cover" the provided date
        sig { returns(T.nilable(Time)) }
        attr_reader :covering_date

        sig { params(covering_date: Time).void }
        attr_writer :covering_date

        # Include only balances that have any access before the provided date (exclusive)
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_before

        sig { params(effective_before: Time).void }
        attr_writer :effective_before

        # Include archived credits and credits from archived contracts.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        # Include the balance of credits and commits in the response. Setting this flag
        # may cause the query to be slower.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_balance

        sig { params(include_balance: T::Boolean).void }
        attr_writer :include_balance

        # Include balances on the contract level.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_contract_balances

        sig { params(include_contract_balances: T::Boolean).void }
        attr_writer :include_contract_balances

        # Include ledgers in the response. Setting this flag may cause the query to be
        # slower.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_ledgers

        sig { params(include_ledgers: T::Boolean).void }
        attr_writer :include_ledgers

        # The next page token from a previous response.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # Include only balances that have any access on or after the provided date
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_at

        sig { params(starting_at: Time).void }
        attr_writer :starting_at

        sig do
          params(
            customer_id: String,
            id: String,
            covering_date: Time,
            effective_before: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_contract_balances: T::Boolean,
            include_ledgers: T::Boolean,
            next_page: String,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          id: nil,
          # Return only balances that have access schedules that "cover" the provided date
          covering_date: nil,
          # Include only balances that have any access before the provided date (exclusive)
          effective_before: nil,
          # Include archived credits and credits from archived contracts.
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include balances on the contract level.
          include_contract_balances: nil,
          # Include ledgers in the response. Setting this flag may cause the query to be
          # slower.
          include_ledgers: nil,
          # The next page token from a previous response.
          next_page: nil,
          # Include only balances that have any access on or after the provided date
          starting_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              id: String,
              covering_date: Time,
              effective_before: Time,
              include_archived: T::Boolean,
              include_balance: T::Boolean,
              include_contract_balances: T::Boolean,
              include_ledgers: T::Boolean,
              next_page: String,
              starting_at: Time,
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
