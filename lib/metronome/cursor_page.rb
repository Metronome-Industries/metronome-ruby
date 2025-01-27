# frozen_string_literal: true

module Metronome
  # @example
  # ```ruby
  # if cursor_page.has_next?
  #   page = cursor_page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # cursor_page.auto_paging_each do |item|
  # #   item ...
  # end
  # ```
  #
  # @example
  # ```ruby
  # items = cursor_page.to_enum.take(2)
  #
  # items => Array
  # ```
  class CursorPage
    include Metronome::BasePage

    # @return [String]
    attr_accessor :next_page_

    # @return [Array<Object>]
    attr_accessor :data

    # @private
    #
    # @param client [Metronome::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}]
    # @param unwrapped [Hash{Symbol=>Object}]
    #
    def initialize(client:, req:, headers:, unwrapped:)
      @client = client
      @req = req

      case unwrapped
      in {next_page: next_page_} if next_page_.is_a?(String) || next_page_.is_nil?
        @next_page_ = next_page_
      else
      end

      model = req.fetch(:model)

      case unwrapped
      in {data: data} if data.is_a?(Array) || data.nil?
        @data = data&.map { |row| model.coerce(row) }
      else
      end
    end

    # @return [Boolean]
    #
    def next_page?
      !next_page_.nil?
    end

    # @raise [Metronome::HTTP::Error]
    # @return [Metronome::CursorPage]
    #
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end

      req = Metronome::Util.deep_merge(@req, {query: {next_page: next_page_}})
      @client.request(req)
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.data&.each { |row| blk.call(row) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} next_page_=#{next_page_.inspect} data=#{data.inspect}>"
    end
  end
end
