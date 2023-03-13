# # in the controller

# def search
#     @search_term = params[:query]
#     @results = Item.where('name LIKE ?', "%#{@search_term}%")
#   end
  
#   def trending_searches
#     @trending_searches = Item.order('cached_votes_total DESC').limit(10)
#   end
  
  
#   # in the view
  
#   <%= form_tag(search_path, method: "get") do %>
#     <%= text_field_tag :query, params[:query], placeholder: "Search for an item" %>
#     <%= submit_tag "Search" %>
#   <% end %>
  
#   <% if @results.any? %>
#     <h2>Search results for <%= @search_term %>:</h2>
#     <% @results.each do |result| %>
#       <p><%= result.name %></p>
#     <% end %>
#   <% else %>
#     <p>No results found for <%= @search_term %>.</p>
#   <% end %>
  
#   <h2>Trending Searches:</h2>
#   <% @trending_searches.each do |trending_search| %>
#     <p><%= trending_search.name %></p>
#   <% end %>
  