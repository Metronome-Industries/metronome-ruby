# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PackageListContractsOnPackageParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::PackageListContractsOnPackageParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :package_id

        # Max number of results that should be returned
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        # This cannot be provided if starting_at filter is provided.
        sig { returns(T.nilable(Time)) }
        attr_reader :covering_date

        sig { params(covering_date: Time).void }
        attr_writer :covering_date

        # Default false. Determines whether to include archived contracts in the results
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        # Optional RFC 3339 timestamp. Only include contracts that started on or after
        # this date. This cannot be provided if covering_date filter is provided.
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_at

        sig { params(starting_at: Time).void }
        attr_writer :starting_at

        sig do
          params(
            package_id: String,
            limit: Integer,
            next_page: String,
            covering_date: Time,
            include_archived: T::Boolean,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          package_id:,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Optional RFC 3339 timestamp. Only include contracts active on the provided date.
          # This cannot be provided if starting_at filter is provided.
          covering_date: nil,
          # Default false. Determines whether to include archived contracts in the results
          include_archived: nil,
          # Optional RFC 3339 timestamp. Only include contracts that started on or after
          # this date. This cannot be provided if covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              package_id: String,
              limit: Integer,
              next_page: String,
              covering_date: Time,
              include_archived: T::Boolean,
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
