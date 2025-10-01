# typed: strong

module MetronomeSDK
  class Client < MetronomeSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :bearer_token

    sig { returns(MetronomeSDK::Resources::V2) }
    attr_reader :v2

    sig { returns(MetronomeSDK::Resources::V1) }
    attr_reader :v1

    sig { returns(MetronomeSDK::Resources::Packages) }
    attr_reader :packages

    sig { returns(MetronomeSDK::Resources::Payments) }
    attr_reader :payments

    sig { returns(MetronomeSDK::Resources::Notifications) }
    attr_reader :notifications

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer_token: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["METRONOME_BEARER_TOKEN"]`
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["METRONOME_BASE_URL"]`
      base_url: ENV["METRONOME_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: MetronomeSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: MetronomeSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: MetronomeSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: MetronomeSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
