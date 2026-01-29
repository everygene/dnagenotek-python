# sofia.FulfillmentApi

All URIs are relative to *https://sofia-stage.dnagenotek.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_order**](FulfillmentApi.md#bulk_order) | **POST** /api/v2/orders/return | Create a bulk return order
[**get_order_v2**](FulfillmentApi.md#get_order_v2) | **GET** /api/v2/orders/{order_id} | Retrieve an order
[**list_orders_v2**](FulfillmentApi.md#list_orders_v2) | **GET** /api/v2/orders | List orders
[**oauth_update_order**](FulfillmentApi.md#oauth_update_order) | **PATCH** /oauth/orders/{order_id} | Update an order
[**update_order**](FulfillmentApi.md#update_order) | **PATCH** /api/v2/orders/{order_id} | Update an order


# **bulk_order**
> List[NewBulkOrder] bulk_order(new_bulk_order=new_bulk_order)

Create a bulk return order

Creates a bulk return order to be fulfilled.
This actually uses the `/orders` path.

### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.new_bulk_order import NewBulkOrder
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
    api_instance = sofia.FulfillmentApi(api_client)
    new_bulk_order = sofia.NewBulkOrder() # NewBulkOrder | Parameter subset of the full order object to request a new bulk return order to be fulfilled. (optional)

    try:
        # Create a bulk return order
        api_response = api_instance.bulk_order(new_bulk_order=new_bulk_order)
        print("The response of FulfillmentApi->bulk_order:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FulfillmentApi->bulk_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_bulk_order** | [**NewBulkOrder**](NewBulkOrder.md)| Parameter subset of the full order object to request a new bulk return order to be fulfilled. | [optional] 

### Return type

[**List[NewBulkOrder]**](NewBulkOrder.md)

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
    api_instance = sofia.FulfillmentApi(api_client)
    order_id = 56 # int | ID of order to return

    try:
        # Retrieve an order
        api_response = api_instance.get_order_v2(order_id)
        print("The response of FulfillmentApi->get_order_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FulfillmentApi->get_order_v2: %s\n" % e)
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
    api_instance = sofia.FulfillmentApi(api_client)
    created_after = 'created_after_example' # str | example: 2019-03-14 minimum created on date (optional)
    updated_after = 'updated_after_example' # str | example: 2019-03-14 minimum updated on date (optional)
    status = 'status_example' # str | one of pending, fulfillment, shipped, error (optional)
    secondary_id = 'secondary_id_example' # str | pass an optional customer_id to match (optional)
    per_page = 3.4 # float |  (optional)
    page = 3.4 # float |  (optional)

    try:
        # List orders
        api_response = api_instance.list_orders_v2(created_after=created_after, updated_after=updated_after, status=status, secondary_id=secondary_id, per_page=per_page, page=page)
        print("The response of FulfillmentApi->list_orders_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FulfillmentApi->list_orders_v2: %s\n" % e)
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

# **oauth_update_order**
> oauth_update_order(order_id, order_patch=order_patch)

Update an order

Updates an order with shipped details and kits.

### Example

* OAuth Authentication (OAuth2Prod):
* OAuth Authentication (OAuth2Stage):

```python
import sofia
from sofia.models.order_patch import OrderPatch
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

configuration.access_token = os.environ["ACCESS_TOKEN"]

configuration.access_token = os.environ["ACCESS_TOKEN"]

# Enter a context with an instance of the API client
with sofia.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sofia.FulfillmentApi(api_client)
    order_id = 56 # int | ID of order to return
    order_patch = sofia.OrderPatch() # OrderPatch | order to update (optional)

    try:
        # Update an order
        api_instance.oauth_update_order(order_id, order_patch=order_patch)
    except Exception as e:
        print("Exception when calling FulfillmentApi->oauth_update_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **int**| ID of order to return | 
 **order_patch** | [**OrderPatch**](OrderPatch.md)| order to update | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2Prod](../README.md#OAuth2Prod), [OAuth2Stage](../README.md#OAuth2Stage)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | item updated |  -  |
**400** | invalid input, object invalid |  -  |
**403** | forbidden, an order is already in shipped/error status and cannot be updated, |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_order**
> update_order(order_id, order_patch=order_patch)

Update an order

Updates an order with shipped details and kits.

### Example

* Basic Authentication (BasicAuth):
* Bearer Authentication (BearerAuth):

```python
import sofia
from sofia.models.order_patch import OrderPatch
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
    api_instance = sofia.FulfillmentApi(api_client)
    order_id = 56 # int | ID of order to return
    order_patch = sofia.OrderPatch() # OrderPatch | order to update (optional)

    try:
        # Update an order
        api_instance.update_order(order_id, order_patch=order_patch)
    except Exception as e:
        print("Exception when calling FulfillmentApi->update_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **int**| ID of order to return | 
 **order_patch** | [**OrderPatch**](OrderPatch.md)| order to update | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | item updated |  -  |
**400** | invalid input, object invalid |  -  |
**403** | forbidden, an order is already in shipped/error status and cannot be updated, |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

