# Label

Object representing secondary labels to be included in the order. This object can be customized to hold additional data to an order or for customizations in fulfillment.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sample_id** | **str** |  | 
**label_line_1** | **str** |  | 
**label_line_2** | **str** |  | 

## Example

```python
from sofia.models.label import Label

# TODO update the JSON string below
json = "{}"
# create an instance of Label from a JSON string
label_instance = Label.from_json(json)
# print the JSON string representation of the object
print(Label.to_json())

# convert the object into a dict
label_dict = label_instance.to_dict()
# create an instance of Label from a dict
label_from_dict = Label.from_dict(label_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


