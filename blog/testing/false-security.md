Why do you need 100% unit tests coverage? 🧪

✅ When all your tests are green you can be sure the software is acting as expected!

Except...

You don't.

Let's go with a CRUD ASP .NET WebAPI as an example. Think of the top thing that most frequently goes wrong. Here's my top. If yours are significantly different let me know in the comments below.

1. ORM setup or query doesn't communicate with your database as expected. (e.g. PostgreSQL doesn't accept non-utc datetime which you pass to it, you forgot to setup migration for your scheme changes, your raw sql query has a type-o after copying, etc.)
2. You forgot or badly register a service in DI-container
3. You forgot or misused some controller attribute
4. You just left a temporary `NotImplementedException` on some layer.

The funny thing is that each of this errors either rarely or never covered in a unit test. And now, here's the another list of possible errors:

- Incorrectly bypassing a call with slight parameters transformation.
- Breaking a chain of calls in any ways
- A mistake while comparing two values and throwing exception if the comparison result doesn't fit an expectation.
- Forgot to map something.
- Forgot to check a value for null or any other invalid value.

What's common about this mistakes is that you either just don't do them or repeat them in test. Yet, in my practice, the majority of unit tests covers one of the scenarios above. If it's not true for your codebase, please share your experience in the comments below.

- What's worse then absent security? 
- False sense of security.
- What's worse then false sense of security?
- Spending time coding and maintaining the false sense of security.

