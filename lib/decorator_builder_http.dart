main() {
  final IHttpClient httpClient1 = HttpClientBuilder().withLogging().build();

  httpClient1.get('https://api.example.com/data');
}

abstract class IHttpClient {
  void get(String url);
  void post(String url, Map<String, dynamic> data);
  void put(String url, Map<String, dynamic> data);
  void delete(String url);
}

// Builder Pattern for flexible client configuration
class HttpClientBuilder {
  IHttpClient _client = HttpClient();

  HttpClientBuilder withLogging() {
    _client = LoggingDecorator(_client);
    return this;
  }

  IHttpClient build() {
    final result = _client;
    _client = HttpClient(); // reset
    return result;
  }
}

class HttpClient implements IHttpClient {
  @override
  void get(String url) {
    // Simulate an HTTP GET request
    print('Fetching data from $url');
  }

  @override
  void post(String url, Map<String, dynamic> data) {
    // Simulate an HTTP POST request
    print('Posting data to $url: $data');
  }

  @override
  void put(String url, Map<String, dynamic> data) {
    // Simulate an HTTP PUT request
    print('Putting data to $url: $data');
  }

  @override
  void delete(String url) {
    // Simulate an HTTP DELETE request
    print('Deleting data from $url');
  }
}

// Abstract Decorator
abstract class HttpClientDecorator implements IHttpClient {
  final IHttpClient httpClient;

  HttpClientDecorator(this.httpClient);
}

// Concrete Decorators
class LoggingDecorator extends HttpClientDecorator {
  LoggingDecorator(super.httpClient);

  @override
  void get(String url) {
    print('LoggingDecorator: Fetching data from $url');
    httpClient.get(url);
  }

  @override
  void post(String url, Map<String, dynamic> data) {
    print('LoggingDecorator: Posting data to $url: $data');
    httpClient.post(url, data);
  }

  @override
  void put(String url, Map<String, dynamic> data) {
    print('LoggingDecorator: Putting data to $url: $data');
    httpClient.put(url, data);
  }

  @override
  void delete(String url) {
    print('LoggingDecorator: Deleting data from $url');
    httpClient.delete(url);
  }

  // Additional decorators like CachingDecorator, RetryDecorator can be added similarly
}
