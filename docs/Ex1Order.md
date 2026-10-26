# Ex1Order

 Example order 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | An automatically assigned, unique identifier for a given order. This identifier can be used to retrieve an individual order. | [optional] 
**destination** | [**Destination**](Destination.md) |  | [optional] 
**items** | [**List[Item]**](Item.md) |  | [optional] 
**kits** | [**List[Kits]**](Kits.md) |  | [optional] 
**labels** | [**List[Label]**](Label.md) |  | [optional] 
**customer_id** | **str** | Use this field to assign an ID that traces back to your records. | [optional] 
**outbound_tracking** | **str** | When a package moves from “fulfillment” to “shipped”, this will be populated with the tracking number for the shipment to the destination. | [optional] 
**fulfillment_id** | **str** | The fulfillment order number for the Order. | [optional] 
**service_level** | **str** |  | [optional] 
**error_detail** | **str** | If an error is encountered during processing, this field will contain a descriptive error message. | [optional] 
**status** | **str** | The current status of the order. This can be either &#x60;pending&#x60;, &#x60;fulfillment&#x60;, &#x60;shipped&#x60;, or &#x60;error&#x60;. | [optional] 
**created_on** | **str** |  | [optional] 
**expected_shipped_on** | **str** |  | [optional] 
**shipped_on** | **str** |  | [optional] 
**updated_on** | **str** |  | [optional] 

## Example

```python
from sofia.models.ex1_order import Ex1Order

# TODO update the JSON string below
json = "{}"
# create an instance of Ex1Order from a JSON string
ex1_order_instance = Ex1Order.from_json(json)
# print the JSON string representation of the object
print(Ex1Order.to_json())

# convert the object into a dict
ex1_order_dict = ex1_order_instance.to_dict()
# create an instance of Ex1Order from a dict
ex1_order_from_dict = Ex1Order.from_dict(ex1_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


