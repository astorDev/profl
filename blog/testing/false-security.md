Why do you need 100% coverage with unit tests? 🧪

✅ When all your tests are green you can be sure the software is acting as expected!

Except...

You don't.

Let's go with a CRUD ASP .NET WebAPI as an example. Think of the top thing that most frequently goes wrong. Here's my top. If yours are significantly different let me know in the comments below.

1. ORM setup or query doesn't communicate with your database as expected. (e.g. PostgreSQL doesn't accept non-utc `DateTime` which you pass to it, you forgot to set up migration for your scheme changes, your raw sql query has a type-o after copying, etc.)
2. You forgot or badly register a service in DI-container
3. You forgot or misused some controller attribute
4. You just left a temporary `NotImplementedException` on a layer.

The funny thing is that each of these errors is either rarely or never covered in a unit test. And now, here's another list of possible errors:

- Incorrectly bypassing a call with slight parameters transformation.
- Breaking a chain of calls in any way
- A mistake while comparing two values and throwing an exception if the comparison result doesn't fit an expectation.
- Forgot to map something.
- Forgot to check a value for null or any other invalid value.

What's common about these mistakes is that you either just don't do them or repeat them in a test. Yet, in my practice, the majority of unit tests cover one of the scenarios above. If it's not true for your codebase, please share your experience in the comments below.

- What's worse than absent security? 
- A false sense of security.
- What's worse then a false sense of security?
- Spending time coding and maintaining the false sense of security.

