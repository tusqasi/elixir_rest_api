# UsersApi

This is just a basic api created by following a excellent [guide](https://blog.logrocket.com/build-rest-api-elixir-phoenix/#what-is-elixir-and-phoenix-web-framework).

It has basic CRUD operations on users.


Routes are defined in `./lib/users_api_web/router.ex`.   
What happens on those routes is defined in `./lib/users_api_web/controllers/user_controller.ex`.  

## Tesing the API 
- Get exisiting users
    `GET /api/users` 
    Returns a json object 
    ```json
        {
        "data" : [
             {"name": "User1", "email":"example@email.com", "address":"Novaher", "role": "god",     "id": "random"},
             {"name": "User2", "email":"other@email.com",   "address":"There",   "role": "demigod", "id":"random"}
        ]
        }
    ```
- Create a new user
    `POST /api/users` 
    Send a json object 
    ```json
         {"name": "User1", "email":"example@email.com", "address":"Novaher", "role": "god"}
    ```

To setup the project on your computer
    - Install elixir.
    - Setup phoenix.
    - Create a postgresql Database.
    - Clone this repo.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
