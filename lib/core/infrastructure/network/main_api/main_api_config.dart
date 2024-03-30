abstract class MainApiConfig {
  static const String baseUrl = 'https://gorest.co.in/public/v2/';
  static const Duration connectTimeout = Duration(seconds: 20);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const contentTypeHeaderKey = 'Content-Type';
  static const languageHeaderKey = 'language';
  static const applicationJsonContentType = 'application/json';
  static const multipartFormDataContentType = 'multipart/form-data';
  static const textHtmlContentType = 'text/html';
  static const emptyContentType = '';
  static const supportEmptyListExtraKey = 'support_empty_list';
  static const tokenExtraKey = 'token';
  static const avoidExtractingData = 'avoid_extracting_data';
  static const withTokenExtraKey = 'withToken';
  static const tokenHeaderKey = 'Authorization';
  static const apiKeyExtraKey = 'bravoApiKey';
  static const apiKeyParamKey = 'bravoApiKey';
}
