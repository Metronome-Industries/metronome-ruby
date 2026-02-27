# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PackageArchiveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::PackageArchiveParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the package to archive
        sig { returns(String) }
        attr_accessor :package_id

        sig do
          params(
            package_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the package to archive
          package_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              package_id: String,
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
