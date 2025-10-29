# typed: strong

module MetronomeSDK
  module Models
    module V1
      class SettingUpsertAvalaraCredentialsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
