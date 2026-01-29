# sofia.CustomersV2Api

All URIs are relative to *https://sofia-stage.dnagenotek.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_order_v2**](CustomersV2Api.md#get_order_v2) | **GET** /api/v2/orders/{order_id} | Retrieve an order
[**list_orders_v2**](CustomersV2Api.md#list_orders_v2) | **GET** /api/v2/orders | List orders
[**new_order_v2**](CustomersV2Api.md#new_order_v2) | **POST** /api/v2/orders | Create an order


# **get_order_v2**
> List[Order] get_order_v2(order_id)

Retrieve an order

By passing in the appropriate options, you can search for orders in the system


### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.order import Order
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
    api_instance = sofia.CustomersV2Api(api_client)
    order_id = 56 # int | ID of order to return

    try:
        # Retrieve an order
        api_response = api_instance.get_order_v2(order_id)
        print("The response of CustomersV2Api->get_order_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersV2Api->get_order_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **int**| ID of order to return | 

### Return type

[**List[Order]**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | search results matching criteria |  -  |
**400** | bad input parameter |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_orders_v2**
> InlineResponse2001 list_orders_v2(created_after=created_after, updated_after=updated_after, status=status, secondary_id=secondary_id, per_page=per_page, page=page)

List orders

By passing in the appropriate options, you can search for
orders in the system


### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.inline_response2001 import InlineResponse2001
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
    api_instance = sofia.CustomersV2Api(api_client)
    created_after = 'created_after_example' # str | example: 2019-03-14 minimum created on date (optional)
    updated_after = 'updated_after_example' # str | example: 2019-03-14 minimum updated on date (optional)
    status = 'status_example' # str | one of pending, fulfillment, shipped, error (optional)
    secondary_id = 'secondary_id_example' # str | pass an optional customer_id to match (optional)
    per_page = 3.4 # float |  (optional)
    page = 3.4 # float |  (optional)

    try:
        # List orders
        api_response = api_instance.list_orders_v2(created_after=created_after, updated_after=updated_after, status=status, secondary_id=secondary_id, per_page=per_page, page=page)
        print("The response of CustomersV2Api->list_orders_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersV2Api->list_orders_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **str**| example: 2019-03-14 minimum created on date | [optional] 
 **updated_after** | **str**| example: 2019-03-14 minimum updated on date | [optional] 
 **status** | **str**| one of pending, fulfillment, shipped, error | [optional] 
 **secondary_id** | **str**| pass an optional customer_id to match | [optional] 
 **per_page** | **float**|  | [optional] 
 **page** | **float**|  | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | search results matching criteria |  -  |
**400** | bad input parameter |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **new_order_v2**
> List[Order] new_order_v2(new_order=new_order)

Create an order

Creates an order to be fulfilled

### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.new_order import NewOrder
from sofia.models.order import Order
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
    api_instance = sofia.CustomersV2Api(api_client)
    new_order = sofia.NewOrder() # NewOrder | New order to fulfill (optional)

    try:
        # Create an order
        api_response = api_instance.new_order_v2(new_order=new_order)
        print("The response of CustomersV2Api->new_order_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersV2Api->new_order_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NewOrder**](NewOrder.md)| New order to fulfill | [optional] 

### Return type

[**List[Order]**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | item created |  -  |
**400** | invalid input, object invalid |  -  |
**403** | forbidden, usually due to authentication |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

