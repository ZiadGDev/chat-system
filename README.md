# Chat System
This is an API for exposing chat system functionalities to consumers.

The system allows creating applications, adding chats to them, and adding messages to chats. It also allows getting or updating said entitis.

# Exposed Endpoints
* **GET /apps** - Lists all apps in the system
* **POST /apps/name={name}** - Creates a new app with included name
* **GET /apps/{token}** - Gets the app with the included token
* **PUT /apps/{token}?name={name}** - Updates the mentioned app with the new name
* **PATCH /apps/{token}?name={name}** - Updates the mentioned app with the new name

* **GET /apps/{app_token}/chats** - Lists all chats under the mentioned app token
* **POST /apps/{app_token}/chats** - Creates a new chat under the mentioned app token
* **GET /apps/{app_token}/chats/{number}** - Gets the chat with the mentioned number under the mentioned app token

* **GET /apps/{app_token}/chats/{chat_number}/messages** - Lists all messages under the mentioned chat
* **POST /apps/{app_token}/chats/{chat_number}/messages** - Creates a new message under the mentioned chat
* **GET /apps/{app_token}/chats/{chat_number}/messages/{number}** - Gets the message with the mentioned number under the mentioned chat number
* **PUT /apps/{app_token}/chats/{chat_number}/messages/{number}?body={body}** - Updates the mentioned message with the new body