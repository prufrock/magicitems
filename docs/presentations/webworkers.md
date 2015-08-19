title: Web Workers
author:
  name: David Kanenwisher
  twitter: davidkanen
  url: http://prufrock.ghost.io/
output: public/docs/presentations/webworkers.html
controls: true
--
# Web Workers
## Do more
--
### Why?
Perform intense or long running calculations without affecting the user experience.
--
### Like When?
1. You have to large merge changes from the server with your collections.
2. You have to calculate a running on average for all of the rows in a table.
3. You have to performs physics or A.I. calculations
--
### The API
1. Creation new WebWorker(scriptName)
2. Send messages to and from with postMessage.
3. Listen for "message" events.
--
### Limitations
1. No shared state.
2. No access to the DOM.
3. Doesn't have access to WebSockets in all browsers.
4. Not supported by older browsers.