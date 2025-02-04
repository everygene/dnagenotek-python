# NewOrder

 A new order requires a small subset of the parameters of the full order object to request a new order to be fulfilled. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | [**Destination**](Destination.md) |  | 
**items** | [**List[Item]**](Item.md) | A list of line items containing a SKU and a corresponding quantity. | 
**labels** | [**List[Label]**](Label.md) | Optional list of labels. | [optional] 
**customer_id** | **str** | Assign an ID that traces back to your records. | [optional] 
**service_level** | **str** | Determines the expected shipped date and method for shipping. | [optional] 

## Example

```python
from sofia.models.new_order import NewOrder

# TODO update the JSON string below
json = "{}"
# create an instance of NewOrder from a JSON string
new_order_instance = NewOrder.from_json(json)
# print the JSON string representation of the object
print(NewOrder.to_json())

# convert the object into a dict
new_order_dict = new_order_instance.to_dict()
# create an instance of NewOrder from a dict
new_order_from_dict = NewOrder.from_dict(new_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


