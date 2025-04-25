# frozen_string_literal: true

module MetronomeSDK
  class Client < MetronomeSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :bearer_token

    # @return [MetronomeSDK::Resources::V2]
    attr_reader :v2

    # @return [MetronomeSDK::Resources::V1]
    attr_reader :v1

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_token [String, nil] Defaults to `ENV["METRONOME_BEARER_TOKEN"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["METRONOME_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      base_url: ENV["METRONOME_BASE_URL"],
      max_retries: MetronomeSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: MetronomeSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: MetronomeSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: MetronomeSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.metronome.com"

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required, and can be set via environ: \"METRONOME_BEARER_TOKEN\"")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @v2 = MetronomeSDK::Resources::V2.new(client: self)
      @v1 = MetronomeSDK::Resources::V1.new(client: self)
    end
  end
end
