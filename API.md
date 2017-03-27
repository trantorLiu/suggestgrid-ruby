

## Type Methods
Type methods are used for creating, getting, and deleting types.
Refer to [types](http://www.suggestgrid.com/docs/types) for an overview.

### Creates a Type
> `create_type(type, body)`

Creates a new type.

```ruby
SuggestGridClient.type.create_type('views')
```

```ruby
SuggestGridClient.type.create_type('views', {rating : "implicit"})
```

```ruby
SuggestGridClient.type.create_type('views', {rating : "explicit"})
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
##### Body Parameters

> TypeRequestBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
rating|string|false|The rating type of the type. Could be "explicit" or "implicit", where "implicit" is the default.
type|string|true|The name of the type.
### Gets Properties of a Type
> `get_type(type)`

Returns the options of a type. The response rating parameter.


```ruby
  response = SuggestGridClient.type.get_type('views')

  # get rating of type
  response.rating
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
type|string|true|The name of the type to get properties.
### Deletes a Type
> `delete_type(type)`

Warning: Deletes the type with all of its actions and its recommendation model.


```ruby
SuggestGridClient.type.delete_type('views')
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
type|string|true|The name of the type to be deleted.
### Gets All Types
> `get_all_types()`

Returns all type names in an array named types.


```ruby
  response = SuggestGridClient.type.get_all_types

  # get array of type names
  response.types
```

### Deletes All Types
> `delete_all_types`

Deletes ALL the types and ALL the actions.

```ruby
SuggestGridClient.type.delete_all_types
```



## Action Methods
Action methods are for creating, getting, and deleting actions.
Refer to [actions](http://www.suggestgrid.com/docs/actions) for an overview.

### Posts an Action
> `post_action(SuggestGrid::Action.new(type, user_id, item_id, rating = nil))`

Posts an action to the given type in the body.
The body must have user id, item id and type.
Rating is required for actions sent to an explicit type.


```ruby
SuggestGridClient.action.post_action(SuggestGrid::Action.new('views','10', '20'))
```

```ruby
SuggestGridClient.action.post_action(SuggestGrid::Action.new('views','10', '20', 10))
```

#### Parameters
##### Body Parameters

> Action (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
item_id|string|true|The item id of the item the action is performed on.
rating|number|false|The optional rating given by the user, if the type is explicit.
timestamp|integer|false|The optional UNIX epoch timestamp of the action. Defaults to the current timestamp.
type|string|true|The type that the action belongs to.
user_id|string|true|The user id of the performer of the action.
### Posts Actions
> `post_bulk_actions(actions)`

Posts bulk actions to SuggestGrid.
The recommended method for posting multiple actions at once.




There's a limit of lines, hence number of actions you can send in one requests. That's default to 10000.

An example for bulk action request is the following:

```ruby

actions = []

actions << SuggestGrid::Action.new('views','10', '18')
actions << SuggestGrid::Action.new('views','12', '1')
actions << SuggestGrid::Action.new('views','13', '40')
actions << SuggestGrid::Action.new('views','14', '302')
actions << SuggestGrid::Action.new('views','10', '22')

SuggestGridClient.action.post_bulk_actions(actions)
```

Explicit actions can be post as;

```ruby

actions = []

actions << SuggestGrid::Action.new('views','11', '22', 1)
actions << SuggestGrid::Action.new('views','32', '33', 10)
actions << SuggestGrid::Action.new('views','10', '20', 3)
actions << SuggestGrid::Action.new('views','12', '20', 4)

SuggestGridClient.action.post_bulk_actions(actions)

```

#### Parameters
### Gets Actions
> `get_actions(type = nil, user_id = nil, item_id = nil, older_than = nil)`

Get actions. Defaut responses will be paged by 10 actios each.
Type, user id, item id, or older than parameters could be provided.
The intersection of the provided parameters will be returned.



#### Get Actions Count

```ruby
response = SuggestGridClient.action.get_actions('views')

# get count
response.count
```

#### Get Actions Count by Query

You can include any of type, user_id, item_id, and older_than path parameters and SuggestGrid return the count of such actions.

If no type is provided, the total number of actions will be returned.

This method can be particularly useful before deleting actions by query.

```ruby
response = SuggestGridClient.action.get_actions(nil,'u5321', 'i1635', 891628467)

# get count
response.count
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
from|integer||The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1". 
item_id|string||Get actions of an item id.
older_than|string||Get actions older than the given duration, or the given time number. Could be a ISO 8601 duration, or a Unix time number. Specifications are available at https://en.wikipedia.org/wiki/ISO_8601#Durations, or https://en.wikipedia.org/wiki/Unix_time. 
size|integer||The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1". 
type|string||Get actions of a type.
user_id|string||Get actions of a user id.
### Delete Actions
> `delete_actions(type = nil, user_id = nil, item_id = nil, older_than = nil)`

Warning: Please use get actions with the exact parameters first to inspect the actions to be deleted.

* Type must be provided. 
* If user id is provided, all actions of the user will be deleted.
* If item id is provided, all actions on the item will be deleted.
* If older than is provided, all actions older than the timestamp or the duration will be deleted.
* If a number of these parameters are provided, the intersection of these parameters will be deleted.
* In addition to a type, at least one of these parameters must be provided. In order to delete all the actions of a type, delete the type.



#### Delete a User's Actions

```ruby
SuggestGridClient.action.delete_actions('views', '12')
```

#### Delete an Item's Actions

```ruby
SuggestGridClient.action.delete_actions('views', nil, '12')
```

#### Delete Old Actions

In addition to unix timestamps, the method could accept:

  * Seconds. (s) For example: 100s
  * Minutes. (m) For example: 30m
  * Hours. (h) For example: 12h
  * Days. (d) For example: 7d
  * Months. (M) For example: 6M
  * Years. (y) For example: 10y

```ruby
SuggestGridClient.action.delete_actions('views', nil, nil, '1d')
```

#### Delete Actions by Query

You can include any of user_id, item_id, and older_than parameters to the delete query and SuggestGrid would delete the intersection of the given queries accordingly.

For example, if all of user_id, item_id, and older_than are provided, SuggestGrid would delete the actions of the given user on the given item before the given time.

```ruby
SuggestGridClient.action.delete_actions('views', '1', '30', '891628467')
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
item_id|string||Delete actions of an item id.
older_than|string||Delete actions older than the given duration, or the given time number. Could be a ISO 8601 duration, or a Unix time number. Specifications are available at https://en.wikipedia.org/wiki/ISO_8601#Durations, or https://en.wikipedia.org/wiki/Unix_time. 
type|string|true|Delete actions of a type. This parameter and at least one other parameter is required.
user_id|string||Delete actions of a user id.


## Metadata Methods
Metadata methods are for creating, getting, and deleting user, and item metadata.
Refer to [metadata](http://www.suggestgrid.com/docs/metadata) for an overview.

### Posts a User
> `post_user(metadata)`

Posts a user metadata.
Note that this operation completely overrides previous metadata for the id, if it exists.


```ruby
SuggestGridClient.metadata.post_user({id: "9394182", age: 28, name: "Avis Horton"})
```

#### Parameters
##### Body Parameters

> Metadata (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
id|string|true|The id of the metadata of a user or an item. 
### Posts Users
> `post_bulk_users(metadata)`

Posts user metadata in bulk.
Note that this operation completely overrides metadata with the same ids, if they exist.



There's a limit of lines, hence number of actions you can send in one requests. That's default to 10000.

An example for bulk user request is the following:

```ruby

users = []

users << {id: "9394182", age: 28, name: "Avis Horton"}
users << {id: "6006895", age: 29, name: "Jami Bishop"}
users << {id: "6540497", age: 21, name: "Bauer Case"}
users << {id: "1967970", age: 30, name: "Rosetta Cole"}
users << {id: "6084106", age: 35, name: "Shaw Simon"}

SuggestGridClient.metadata.post_bulk_users(users)
```

#### Parameters
### Gets A User
> `get_user(user_id)`

Returns a user metadata if it exists.


```ruby
  user42 = SuggestGridClient.metadata.get_user("42")
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
user_id|string|true|The user id to get its metadata.
### Gets Users
> `get_users`

Get items and total count of items.
Page and per-page parameters could be set.



```ruby
  response = SuggestGridClient.metadata.get_users

  # get count of users
  response.count
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
from|integer||The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1". 
size|integer||The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1". 
### Deletes a User
> `delete_user(user_id)`

Deletes a user metadata with the given user id.

```ruby
SuggestGridClient.metadata.delete_user("10")
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
user_id|string|true|The user id to delete its metadata.
### Deletes All Users
> `delete_all_users`

Warning: Deletes all user metadata from SuggestGrid.


```ruby
SuggestGridClient.metadata.delete_all_users
```

### Posts An Item
> `post_item(metadata)`

Posts an item metadata.
Note that this operation completely overrides previous metadata for the id, if it exists.


```ruby
SuggestGridClient.metadata.post_item({id: "25922342", manufacturer: "Vicon", price: 348})
```

#### Parameters
##### Body Parameters

> Metadata (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
id|string|true|The id of the metadata of a user or an item. 
### Posts Items
> `post_bulk_items(metadata)`

Posts item metadata in bulk.
Note that this operation completely overrides metadata with the same ids, if they exist.



There's a limit of lines, hence number of actions you can send in one requests. That's default to 10000.

An example for bulk item request is the following:

```ruby

items = []

items << {id: "25922342", manufacturer: "Vicon", price: 348}
items << {id: "80885987", manufacturer: "Aquamate", price: 771}
items << {id: "71746854", manufacturer: "Exoplode", price: 310}
items << {id: "53538832", manufacturer: "Teraprene", price: 832}
items << {id: "72006635", manufacturer: "Ohmnet", price: 340}

SuggestGridClient.metadata.post_bulk_items(items)
```

#### Parameters
### Gets An Item
> `get_item(item_id)`

Returns an item metadata if it exists.


```ruby
  item42 = SuggestGridClient.metadata.get_item(42)
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
item_id|string|true|The item id to get its metadata.
### Gets Items
> `get_items`

Gets items and total count of items.
Page and per-page parameters could be set.



```ruby
  response = SuggestGridClient.metadata.get_items

  # get count of items
  response.count
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
from|integer||The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1". 
size|integer||The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1". 
### Delete An Item
> `delete_item(item_id)`

Deletes an item metadata with the given item id.

```ruby
SuggestGridClient.metadata.delete_user("10")
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
item_id|string|true|The item id to delete its metadata.
### Deletes All Items
> `delete_all_items`

Warning: Deletes all item metadata from SuggestGrid.


```ruby
SuggestGridClient.metadata.delete_all_items
```



## Recommnedation Methods
Recommnedation methods are for getting recommended items for users, or recommended users for items.
Refer to [recommendations](http://www.suggestgrid.com/docs/recommendations) for an overview.

### Gets Recommended Users
> `get_recommended_users(body)`

Returns recommended users for the query.

examples:

```ruby
response = SuggestGridClient.recommendation.get_recommended_users({type: 'view', item_id: "42"})
users = response.users # [{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_users({type: 'view', item_ids: ["42", "532", "841"]})
users = response.users # [{id:"121"},{id:"33"},{id:"12"},{id:"32"},{id:"49"},{id:"11"},{id:"23"},{id:"54"},{id:"62"},{id:"29"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_users({type: 'view', item_ids: ["42", "532", "841"], similar_user_id: "100", except: ["100"], size: 5})
users = response.users # [{id:"1"},{id:"84"},{id:"9"},{id:"32"},{id:"45"}]
```


```ruby
response = SuggestGridClient.recommendation.get_recommended_users({type: 'view', item_id: "42", size: 5, fields: ["name"], filter: { less_equal: {age: 60}}})
users = response.users # [{id:"11",name:"Robert"},{id:"848",name:"Mike"},{id:"2",name:"Jennifer"}]
```

You can read [filters](http://suggestgrid.com/docs/advanced-features#filters-parameter) and [fields](http://suggestgrid.com/docs/advanced-features#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetRecommendedUsersBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
except|array|false|These user ids that will not be included in the response.
fields|array|false|The metadata fields to be included in returned user objects.
filter||false|
from|integer|false|The number of most recommended items to be skipped from the response. Defaults to 0.
item_id|string|false|The item id of the query.
item_ids|array|false|The item ids of the query. Exactly one of item id or item ids parameters must be provided.
similar_user_id|string|false|Similar user that the response should be similar to.
similar_user_ids|array|false|Similar users that the response should be similar to. At most one of similar user and similar users parameters can be provided. 
size|integer|false|The number of users requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
type|string|false|The type of the query. Recommendations will be calculated based on actions of this type.
types|string|false|The types of the query. Exactly one of type or types parameters must be provided.
### Gets Recommended Items
> `get_recommended_items(body)`

Returns recommended items for the query.

examples:

```ruby
response = SuggestGridClient.recommendation.get_recommended_items({type: 'view', user_id: "42"})
items = response.items # [{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_items({type: 'view', user_ids: ["42", "532", "841"]})
items = response.items # [{id:"121"},{id:"33"},{id:"12"},{id:"32"},{id:"49"},{id:"11"},{id:"23"},{id:"54"},{id:"62"},{id:"29"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_items({type: 'view', user_ids: ["42", "532", "841"], similar_item_id: "321", size: 3})
items = response.items # [{id:"13"},{id:"65"},{id:"102"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_items({type: 'view', user_id: "42", size: 5, filter: {less_equal: {price: 100}}})
items = response.items # [{id:"930"},{id:"848"},{id:"102"},{id:"303"},{id:"593"}]
```

```ruby
response = SuggestGridClient.recommendation.get_recommended_items({type: 'view', user_id: "42", size: 5, fields : ["category"], filter: { exact: {manufacturer: "Apple"}}})
items = response.items # [{id:"930",category:"notebook"},{id:"848",category:"keyboard"},{id:"102",category:"watch"}]
```

You can read [filters](http://suggestgrid.com/docs/advanced-features#filters-parameter) and [fields](http://suggestgrid.com/docs/advanced-features#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetRecommendedItemsBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
except|array|false|These item ids that will not be included in the response.
fields|array|false|The metadata fields to be included in returned item objects.
filter||false|
from|integer|false|The number of most recommended items to be skipped from the response. Defaults to 0.
similar_item_id|string|false|Similar item that the response should be similar to.
similar_item_ids|array|false|Similar items that the response should be similar to. At most one of similar item and similar items parameters can be provided. 
size|integer|false|The number of items requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
type|string|false|The type of the query. Recommendations will be calculated based on actions of this type.
types|string|false|The types of the query. Exactly one of type or types parameters must be provided.
user_id|string|false|The user id of the query.
user_ids|array|false|The user ids of the query. Exactly one of user id or user ids parameters must be provided.


## Similarity Methods
Similarity methods are for getting similar items, or similar users.
Refer to [similarities](http://www.suggestgrid.com/docs/similarities) for an overview.

### Gets Similar Users
> `get_similar_users(body)`

Returns similar users for the query.

examples:

```ruby
response = SuggestGridClient.similarity.get_similar_users({type: "views", user_id: "1"})
users = response.users # [{id:"1"},{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.similarity.get_similar_users({type: "views", user_id: "1", except: ["1"]})
users = response.users # [{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.similarity.get_similar_users({type: "views", user_ids: ["42", "532", "841"], size: 3, fields: ["name"], filter: { less_equal: { age: 20}})
users = response.users # [{id:"400", name:"Jason"},{id:"132", name:"Scarlett"},{id:"503", name:"Amy"}]
```

You can read [filters](http://suggestgrid.com/docs/advanced-features#filters-parameter) and [fields](http://suggestgrid.com/docs/advanced-features#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetSimilarUsersBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
except|array|false|These user ids that will not be included in the response.
fields|array|false|The metadata fields to be included in returned user objects.
filter||false|
from|integer|false|The number of most similar users to be skipped from the response. Defaults to 0.
size|integer|false|The number of users requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
type|string|false|The type of the query. Similarities will be calculated based on actions of this type.
types|string|false|The types of the query. Exactly one of type or types parameters must be provided.
user_id|string|false|The user id of the query.
user_ids|array|false|The user ids of the query. Exactly one of user id or user ids parameters must be provided.
### Gets Similar Items
> `get_similar_items(body)`

Returns similar items for the query.

examples:

```ruby
response = SuggestGridClient.similarity.get_similar_items({type: "views", item_id: "1"})
items = response.items # [{id:"1"},{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.similarity.get_similar_items({type: "views", item_id: "1", except: ["1"]})
items = response.items # [{id:"451"},{id:"456"}]
```

```ruby
response = SuggestGridClient.similarity.get_similar_items({type: "views", item_ids:  ["3","5","8"], size: 3, fields: ["category"], filter: { greater: { capacity: 60}})
items = response.items # [{id:"451",category:"television"},{id:"656",category:"blu-ray-dvd-players"}]
```

You can read [filters](http://suggestgrid.com/docs/advanced-features#filters-parameter) and [fields](http://suggestgrid.com/docs/advanced-features#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetSimilarItemsBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
except|array|false|These item ids that will not be included in the response.
fields|array|false|The metadata fields to be included in returned item objects.
filter||false|
from|integer|false|The number of most similar items to be skipped from the response. Defaults to 0.
item_id|string|false|The item id of the query. Get similar items to given item id. Either item id or item ids must be provided.
item_ids|array|false|The item ids of the query. Exactly one of item id or item ids parameters must be provided. Get similar items to given item ids. Either item id or item ids must be provided.
size|integer|false|The number of items requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
type|string|false|The type of the query. Similarities will be calculated based on actions of this type.
types|string|false|The types of the query. Exactly one of type or types parameters must be provided.
