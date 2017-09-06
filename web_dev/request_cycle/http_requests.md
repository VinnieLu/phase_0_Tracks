2. What are some common HTTP status codes?
200 -- meaning everything's ok. Starts with a 2? Successful response.
404 -- client-side error. Requested service no longer available.
403 -- client-side error. Access forbidden.
500 -- server-side error. Catchall server error.
503 -- server-side error. Web server isn't available.
503 -- server-side error gateway timeout. Reload and try again, server might just have been busy.

3. A get request "requests a representation of a specified resource". You use it when you want to retrieve a page or an image to your browser from a specific location. It goes in the url and is held in the cache. A post request "submits data to be processed". You use it to update or submit data to the webpage from your browser. It is used for updating data, goes in the body of your html code, and does not go in your cache.

4. A cookie is a small piece of data that is sent with an http request. It stores particular pieces of data such as shopping cart information, game scores, whether the user is logged in or not, user preferences, themes, etc., so that the computer doesn't need to get this information new every time. It "remembers stateful information for the stateless HTTP protocol".