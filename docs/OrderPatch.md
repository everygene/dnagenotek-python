# OrderPatch

 The Orders endpoint lets you submit new outbound orders, and keep track of shipment tracking and status information for submitted orders. The API allows you to create a new order, update an existing order, retrieve information on an individual order, or list all of the orders associated with your account.  This description reflects the current state of the API. If your configuration requires additional fields or customizations, we can add these as necessary, maintaining backwards compatibility wherever possible.  Some attributes of the Order object are generic across all accounts and orders, while others, such as labels, are dependent upon the configuration in your agreement with DNA Genotek. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | An automatically assigned, unique identifier for a given order. This identifier can be used to retrieve an individual order. | [optional] 
**fulfillment_id** | **str** | The fulfillment order number for the Order. | [optional] 
**status** | **str** | The current status of the order. This can be either &#x60;pending&#x60;, &#x60;fulfillment&#x60;, &#x60;shipped&#x60;, or &#x60;error&#x60;. | [optional] 
**outbound_tracking** | **str** | When a package moves from “fulfillment” to “shipped”, this will be populated with the tracking number for the shipment to the destination. | [optional] 
**shipped_on** | **str** |  | [optional] 
**kits** | [**List[Kits]**](Kits.md) |  | [optional] 
**error_detail** | **str** | If an error is encountered during processing, this field will contain a descriptive error message. | [optional] 

## Example

```python
from sofia.models.order_patch import OrderPatch

# TODO update the JSON string below
json = "{}"
# create an instance of OrderPatch from a JSON string
order_patch_instance = OrderPatch.from_json(json)
# print the JSON string representation of the object
print(OrderPatch.to_json())

# convert the object into a dict
order_patch_dict = order_patch_instance.to_dict()
# create an instance of OrderPatch from a dict
order_patch_from_dict = OrderPatch.from_dict(order_patch_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


