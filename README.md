# N

My escript sandbox.

To check following questions:

- Does an escript ensure all application has started before the `main/1` is called?
- Does an escript includes dependencies?

Answers of the both questions are "yes".

```
% mix do deps.get escript.build
Running dependency resolution
Dependency resolution completed
  certifi: 0.4.0
  hackney: 1.6.0
  httpoison: 0.9.0
  idna: 1.2.0
  metrics: 1.0.1
  mimerl: 1.0.2
  ssl_verify_fun: 1.1.0
All dependencies up to date
% ./n
19:43:32.729 [info]  starts main
Hello~
%HTTPoison.Response{body: "{\n  \"args\": {},\n  \"headers\": {\n    \"host\": \"httparrot.herokuapp.com\",\n    \"connection\": \"close\",\n    \"user-agent\": \"hackney/1.6.0\",\n    \"x-request-id\": \"6b564e6d-e9fa-41eb-93df-f520f92ed7e1\",\n    \"x-forwarded-for\": \"202.214.167.133\",\n    \"x-forwarded-proto\": \"http\",\n    \"x-forwarded-port\": \"80\",\n    \"via\": \"1.1 vegur\",\n    \"connect-time\": \"0\",\n    \"x-request-start\": \"1467888212378\",\n    \"total-route-time\": \"0\"\n  },\n  \"url\": \"http://httparrot.herokuapp.com/get\",\n  \"origin\": \"10.225.69.144\"\n}",
 headers: [{"Connection", "keep-alive"}, {"Server", "Cowboy"},
  {"Date", "Thu, 07 Jul 2016 10:43:31 GMT"}, {"Content-Length", "495"},
  {"Content-Type", "application/json"}, {"Via", "1.1 vegur"}], status_code: 200
```
