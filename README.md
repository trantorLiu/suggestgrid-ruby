# [ SuggestGrid Ruby Client ]( http://www.github.com/suggestgrid/suggestgrid-ruby )

We will walk through how to get started with SuggestGrid Ruby Client in three steps:
    
1. [Configuration](#1-configuration)
    
2. [Post actions](#2-post-actions)
    
3. [Get recommendations](#3-get-recommendations)

## Getting Started

In this guide we will demonstrate how to display personalized recommendations on an existing Ruby project.

We have a movie catalog Ruby application, SuggestGridMovies, similar to IMDb.
For logged in users we want to display movies that *similar people viewed* on movie pages.
Let's implement this feature in five minutes with SuggestGrid!

### 1. Configuration

We are beginning the development by adding the client as a dependency.

```ruby
gem 'suggestgrid'
```



Once you [sign up for SuggestGrid](https://dashboard.suggestgrid.com/users/sign_up), you'll see your SUGGESTGRID_URL parameter on the dashboard in the format below:

`http://{user}:{pass}@{region}.suggestgrid.space/{app-uuid}`

You can authenticate your application using `SUGGESTGRID_URL` environment variable like the example below:

```ruby
require 'suggestgrid'

SuggestGridClient = SuggestGrid::SuggestGridClient.new ENV['SUGGESTGRID_URL']
```


Every recommendation logic needs to belong to a *type*.
For this demonstration we can create an implicit type named as `views`.
This could be done either from the dashboard or with a snippet like this:

```ruby
  begin
      SuggestGridClient.type.get_type('views')
      puts "SuggestGrid type named 'views' already exists, skipping creation."
  rescue SuggestGrid::APIException => e
      SuggestGridClient.type.create_type('views', {'rating': 'implicit'})
      puts "Views SuggestGrid type is created."
  end
```



### 2. Post actions

Once the type exists, let's start posting actions.
We should invoke SuggestGrid client's SuggestGridClient.action.post_action when an user views an item in our application.

We can do this by putting the snippet below on the relevant point:

```ruby
# Send action to SuggestGrid.
begin
    SuggestGridClient.action.post_action(SuggestGrid::Action.new('views',user.id, self.id))
rescue Exception => e
    puts "Exception while sending action #{e}"
end
```


The more actions SuggestGrid gets, more relevant and diverse its responses are.


### 3. Get recommendations

Finally, let's show "movies similar users viewed" on movie pages.

SuggestGrid needs *recommendation models* for returning recommendations.
Model generation is scheduled in every 24 hours.
In addition, instant model generations can be triggered on the dashboard.

Once the first model generated for 'views' type, recommendations could be get using a snippet like the following:

```ruby
begin
    items_response = SuggestGridClient.recommendation.get_recommended_items({'type': 'view', 'user_id': user.id, 'size': size})
    items_response.items
rescue Exception => e
    puts "Exception while getting recommendations #{e}"
end
```
