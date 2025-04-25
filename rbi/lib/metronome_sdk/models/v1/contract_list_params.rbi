# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        # Optional RFC 3339 timestamp. If provided, the response will include only
        # contracts effective on the provided date. This cannot be provided if the
        # starting_at filter is provided.
        sig { returns(T.nilable(Time)) }
        attr_reader :covering_date

        sig { params(covering_date: Time).void }
        attr_writer :covering_date

        # Include archived contracts in the response
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

        # Include commit ledgers in the response. Setting this flag may cause the query to
        # be slower.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_ledgers

        sig { params(include_ledgers: T::Boolean).void }
        attr_writer :include_ledgers

        # Optional RFC 3339 timestamp. If provided, the response will include only
        # contracts where effective_at is on or after the provided date. This cannot be
        # provided if the covering_date filter is provided.
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_at

        sig { params(starting_at: Time).void }
        attr_writer :starting_at

        sig do
          params(
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts effective on the provided date. This cannot be provided if the
          # starting_at filter is provided.
          covering_date: nil,
          # Include archived contracts in the response
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit ledgers in the response. Setting this flag may cause the query to
          # be slower.
          include_ledgers: nil,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts where effective_at is on or after the provided date. This cannot be
          # provided if the covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                customer_id: String,
                covering_date: Time,
                include_archived: T::Boolean,
                include_balance: T::Boolean,
                include_ledgers: T::Boolean,
                starting_at: Time,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
