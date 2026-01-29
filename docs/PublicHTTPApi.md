# sofia.PublicHTTPApi

All URIs are relative to *https://sofia-stage.dnagenotek.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_status_get**](PublicHTTPApi.md#api_v1_status_get) | **GET** /api/v1/status | 


# **api_v1_status_get**
> InlineResponse200 api_v1_status_get()

### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.inline_response200 import InlineResponse200
from sofia.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://sofia-stage.dnagenotek.com
# See configuration.py for a list of all supported configuration parameters.
configuration = sofia.Configuration(
    host = "https://sofia-stage.dnagenotek.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: BasicAuth
configuration = sofia.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization: BearerAuth
configuration = sofia.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with sofia.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sofia.PublicHTTPApi(api_client)

    try:
        api_response = api_instance.api_v1_status_get()
        print("The response of PublicHTTPApi->api_v1_status_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PublicHTTPApi->api_v1_status_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Health check |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

