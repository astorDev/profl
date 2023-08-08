The main benefit of unit testing 👆

"Unit Tests allow you to make big changes to code quickly."

This is the very first point of the [accepted answer](https://stackoverflow.com/questions/67299/is-unit-testing-worth-the-effort?noredirect=1&lq=1) to the question "Is Unit Testing worth the effort?".

Let's do an experiment! Try to remember the last time you were about to "make big changes to code". I'm sure it was something like changing internal logic of a bunch of methods without changing their input or output. Moreover, the logic most likely wasn't changing the method behaviour so your tests all stayed the same. And because you had unit tests in place you've just run them and were able to 10x your productivity by getting early feedback! 🎉

Just kidding!

I would actually expect the "big changes" to look like a global restructuring of components communication and responsibilities. So here's what you'll have to do with your unit tests. For every class or method, you have to change your unit test. Do you feel that increased development speed? Oh wait, now you'll need to re-setup your mocks, too - remember, you've changed a lot of method signatures. Do you understand how quick it is now? You may ask how was those unit tests helpful. But, unit testing isn't about asking the question, so just admit that you feel the productivity boost and we can go on.

In case you're wondering, this was sarcasm. Unit testing improving your productivity when performing a huge change is just another unit testing myth. If you have a story of a huge change you've made where you feel like unit tests brought more good than harm, please share in the comments below!

