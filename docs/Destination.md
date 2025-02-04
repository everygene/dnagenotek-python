# Destination


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**co_first_name** | **str** |  | 
**co_last_name** | **str** |  | 
**co_phone_number** | **str** |  | 
**company** | **str** |  | [optional] 
**address_1** | **str** |  | 
**address_2** | **str** | Must be blank for country: CA | [optional] 
**city** | **str** |  | 
**region** | **str** |  | 
**country** | **str** |  | 
**postal_code** | **str** | Canada: C#C#C#, US: #####/#####-#### | 

## Example

```python
from sofia.models.destination import Destination

# TODO update the JSON string below
json = "{}"
# create an instance of Destination from a JSON string
destination_instance = Destination.from_json(json)
# print the JSON string representation of the object
print(Destination.to_json())

# convert the object into a dict
destination_dict = destination_instance.to_dict()
# create an instance of Destination from a dict
destination_from_dict = Destination.from_dict(destination_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


