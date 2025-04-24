# typed: strong

module MetronomeSDK
  class Client < MetronomeSDK::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def bearer_token
    end

    sig { returns(MetronomeSDK::Resources::V2) }
    def v2
    end

    sig { returns(MetronomeSDK::Resources::V1) }
    def v1
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        base_url: T.nilable(String),
        bearer_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .void
    end
    def initialize(
      base_url: nil,
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
