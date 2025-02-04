# Kits


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**barcode** | **str** |  | [optional] 
**return_tracking** | **str** |  | [optional] 
**pmi** | **str** | Assigned by fulfillment team. First 4 numbers (usually) match SKU of item ordered. | [optional] 

## Example

```python
from sofia.models.kits import Kits

# TODO update the JSON string below
json = "{}"
# create an instance of Kits from a JSON string
kits_instance = Kits.from_json(json)
# print the JSON string representation of the object
print(Kits.to_json())

# convert the object into a dict
kits_dict = kits_instance.to_dict()
# create an instance of Kits from a dict
kits_from_dict = Kits.from_dict(kits_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


