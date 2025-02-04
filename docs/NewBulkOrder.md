# NewBulkOrder

 Parameter subset of the full order object to request a new bulk return order to be fulfilled. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_type** | **str** | Identify the order as a **return** bulk order. | 
**destination** | [**Destination**](Destination.md) |  | 
**kits** | [**List[Kits]**](Kits.md) | This object will only have one of the options used to select and update the right kit with the bulk order ID information. | 
**group_id** | **str** | A group ID to show the order under the correct account. | 
**service_level** | **str** | Determines the expected shipped date and method for shipping. | [optional] 

## Example

```python
from sofia.models.new_bulk_order import NewBulkOrder

# TODO update the JSON string below
json = "{}"
# create an instance of NewBulkOrder from a JSON string
new_bulk_order_instance = NewBulkOrder.from_json(json)
# print the JSON string representation of the object
print(NewBulkOrder.to_json())

# convert the object into a dict
new_bulk_order_dict = new_bulk_order_instance.to_dict()
# create an instance of NewBulkOrder from a dict
new_bulk_order_from_dict = NewBulkOrder.from_dict(new_bulk_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


