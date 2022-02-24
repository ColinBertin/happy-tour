Geocoder.configure(
  # alertding options
  # timeout: 3,                 # alertding service timeout (secs)
  # lookup: :nominatim,         # name of alertding service (symbol)
  # ip_lookup: :ipinfo_io,      # name of IP address alertding service (symbol)
  # language: :en,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  # api_key: nil,               # API key for alertding service
  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
  # cache_options[:prefix],  # DEPRECATED, please use cache_options[:prefix] instead

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
  # units: :km,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear

  # Cache configuration
  # cache_options: {
  #   expiration: 2.days,
  #   cache_options[:prefix]'
  # }
)
