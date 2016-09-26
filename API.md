

## Type Methods
Type methods are used for managing SuggestGrid types.
For more information on types, refer to [Types concept documentation](http://www.suggestgrid.com/docs/concepts#types).

### Create a New Type
> `create_type(type, body)`

Creates a new implicit or explicit type.

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
type|string|true|The name of the type to be created.
##### Body Parameters

> TypeRequestBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
rating|string|false|Could be "explicit" or "implicit" The default is "implicit".
### Get Properties of a Type
> `get_type(type)`

Get the options of a type. Has rating parameter.


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
### Delete a Type
> `delete_type(type)`

Deletes a type with ALL of its actions and recommendation model.
Do not use this if you will need the type.


```ruby
SuggestGridClient.type.delete_type('views')
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
type|string|true|The name of the type to be deleted.
### Get All Types
> `get_all_types()`

Get all type names in an array named types.


```ruby
  response = SuggestGridClient.type.get_all_types

  # get array of type names
  response.types
```

### Delete All Types
> `delete_all_types`

Deletes ALL types and ALL actions.

```ruby
SuggestGridClient.type.delete_all_types
```



## Action Methods
Action methods are for posting and deleting actions.
For more information on actions, refer to [Actions concept documentation](http://www.suggestgrid.com/docs/concepts#actions).

### Post an Action
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
user_id|string|true|The user id of the performer of the action.
type|string|true|The type that the action belongs to.
rating|number|false|The optional rating, if the type is explicit.
item_id|string|true|The item id of the item the action is performed on.
### Post Bulk Actions
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
### Get Actions
> `get_actions(type = nil, user_id = nil, item_id = nil, older_than = nil)`

Type must be provided. Additionally,

* If both `user_id` and `item_id` are supplied it returns the count of the corresponding actions.
* If only `user_id` is provided, it returns the count of all the action of the given user.
* If only `user_id` is provided, it returns the count of all the action of the given item.
* If only `older_than` is provided, it returns the count of actions older than the given timestamp.
* If a few of these parameters are provided, it returns the count of the intersection of these parameters.
* If none of these are provided, it returns the count of the whole type.



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
type|string||The type of the actions.
user_id|string||The user id of the actions.
item_id|string||The item id of the actions.
older_than|string||Delete all actions of a type older than the given timestamp or time. Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195). 
### Delete Actions
> `delete_actions(type = nil, user_id = nil, item_id = nil, older_than = nil)`

Type must be provided. Additionally,

* If both user id and item id are supplied the user's actions on the item will be deleted.
* If only user id is provided, all actions of the user will be deleted.
* If only item id is provided, all actions on the item will be deleted.
* If only older than is provided, all actions older than the timestamp or the duration will be deleted.
* If a few of these parameters are provided, delete action will be executed within intersection of these parameters.
* One of these parameters must be provided. In order to delete all actions, delete the type.



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
type|string||The type of the actions.
user_id|string||The user id of the actions.
item_id|string||The item id of the actions.
older_than|string||Delete all actions of a type older than the given timestamp or time. Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195). 


## Metadata Methods
Metadata methods are for posting and deleting metadata.
For more information on metadata, refer to [Metadata concept documentation ](http://www.suggestgrid.com/docs/concepts#metadata).

### Post a User
> `post_user(metadata)`

Posts a user metadata.

```ruby
SuggestGridClient.metadata.post_user({id: "9394182", age: 28, name: "Avis Horton"})
```

#### Parameters
##### Body Parameters

> Metadata (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
id|string|true|
### Post Bulk Users
> `post_bulk_users(metadata)`

Post user metadata in bulk.
This metadata can be used to filter or to be included in recommendations and similars methods.



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
### Get Users
> `get_users`

Get information about users. Only returns count at the moment.


```ruby
  response = SuggestGridClient.metadata.get_users

  # get count of users
  response.count
```

### Delete a User
> `delete_user(user_id)`

Delete a user metadata with the given user_id.

```ruby
SuggestGridClient.metadata.delete_user("10")
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
user_id|string|true|The user_id to delete its metadata.
### Delete All Users
> `delete_all_users`

Deletes all user metadata from SuggestGrid.

```ruby
SuggestGridClient.metadata.delete_all_users
```

### Post an Item
> `post_item(metadata)`

Posts an item metadata.
This metadata can be used to filter or to be included in recommendations and similars methods.


```ruby
SuggestGridClient.metadata.post_item({id: "25922342", manufacturer: "Vicon", price: 348})
```

#### Parameters
##### Body Parameters

> Metadata (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
id|string|true|
### Post Bulk Items
> `post_bulk_items(metadata)`

Post item metadata in bulk.
This method is recommended for sharing stored data with SuggestGrid.



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
### Get Items
> `get_items`

Get information about items. Only returns count at the moment.


```ruby
  response = SuggestGridClient.metadata.get_items

  # get count of items
  response.count
```

### Delete an Item
> `delete_item(item_id)`

Delete an item metadata with the given item_id.

```ruby
SuggestGridClient.metadata.delete_user("10")
```

#### Parameters
##### URI/Query Parameters

Name | Type |Required| Description
--- | --- | --- | ---
item_id|string|true|The item_id to delete its metadata.
### Delete All Items
> `delete_all_items`

Delete all items metadata.
This method would flush all items metadata on SuggestGrid.


```ruby
SuggestGridClient.metadata.delete_all_items
```



## Recommnedation Methods
Recommnedation methods are for getting recommended items or users responses from SuggestGrid.
For more information on recommendations, refer to [Recommendations concept documentation](http://www.suggestgrid.com/docs/concepts#recommendations).

### Get Recommended Users
> `get_recommended_users(body)`

Recommend users for the given body parameters.

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

You can read [filters](/docs/concepts#filters-parameter) and [fields](/docs/concepts#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetRecommendedUsersBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
fields|array|false|
filter||false|
item_id|string|false|
except|array|false|These ids will not be included in the response. 
size|integer|false|
types|string|false|
item_ids|array|false|
type|string|false|
similar_user_id|string|false|
### Get Recommended Items
> `get_recommended_items(body)`

Recommend items for the given body parameters.

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

You can read [filters](/docs/concepts#filters-parameter) and [fields](/docs/concepts#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetRecommendedItemsBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
user_id|string|false|
user_ids|array|false|
fields|array|false|
filter||false|
similar_item_id|string|false|
except|array|false|These ids will not be included in the response. 
size|integer|false|
types|string|false|
type|string|false|


## Similarity Methods
Similarity methods are for getting similar items or users responses from SuggestGrid.
For more information on similars, refer to [Similarities concept documentation](http://www.suggestgrid.com/docs/concepts#similarities).

### Get Similar Users
> `get_similar_users(body)`

Get similar users to a user.

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

You can read [filters](/docs/concepts#filters-parameter) and [fields](/docs/concepts#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetSimilarUsersBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
user_id|string|false|
user_ids|array|false|
fields|array|false|
filter||false|
except|array|false|These ids will not be included in the response. 
size|integer|false|
types|string|false|
type|string|false|
### Get Similar Items
> `get_similar_items(body)`

Get similar items to an item.

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

You can read [filters](/docs/concepts#filters-parameter) and [fields](/docs/concepts#fields-parameter) documentations for further reference.

#### Parameters
##### Body Parameters

> GetSimilarItemsBody (`object`)

Name | Type |Required| Description
--- | --- | --- | ---
fields|array|false|
filter||false|
item_id|string|false|Get similar items to given item id. Either item id or item ids must be provided. 
except|array|false|These ids will not be included in the response. 
size|integer|false|
types|string|false|
item_ids|array|false|Get similar items to given item ids. Either item id or item ids must be provided. 
type|string|false|
