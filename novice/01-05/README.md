# Asynchronous Programming, Konkurensi, dan Tooling
## Asynchronous Programming
Form of input/output processing that permits other processing to continue before the transmission has finished.
Asynchronous contain:
- Async & await
- Future
- Stream

### Async & await
If you want to use async and await you should put async modifief to it right after the function.

```dart
//so we put async modifier to main because we gonna use asynchronous in it
void main() async {
  
  //so here we put await modifier before we call the function that mean "go ahead, don't wait we"
  await hello();
  print('all done');
}

//here is the function that we gonna run asynchronously
//again put async modifier before the curly bracket{}
void hello() async {
  print('magic happen here');
}
```

# Future
A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.
- Uncompleted
When you call an asynchronous function, it returns an uncompleted future. That future is waiting for the function’s asynchronous operation to finish or to throw an error.

- Completed
If the asynchronous operation succeeds, the future completes with a value. Otherwise it completes with an error.

- Completing with a value
A future of type Future<T> completes with a value of type T. For example, a future with type Future<String> produces a string value. If a future doesn’t produce a usable value, then the future’s type is Future<void>.

- Completing with an error
If the asynchronous operation performed by the function fails for any reason, the future completes with an error.

In the following example, getUserOrder() returns a future that completes after printing to the console. Because it doesn’t return a usable value, getUserOrder() has the type Future<void>. Before you run the example, try to predict which will print first: “Large Latte” or “Fetching user order…”.

```dart
void main() {
  getUserProfile();
  print('fetching user profile...');
}

// Imagine that this function is fetching user info from another service or database
Future<void> getUserProfile() {
  return Future.delayed(Duration(seconds: 3),
      () => print('name, email, address, phone number, profile picture'));
}
```

**Another example :**

```dart
import 'dart:async';

void main() async {
  var x = await four();
  print(x);

  var mov = await movie();
  print(mov);
}

//abstract class future
Future<int> four() async {
  //return value
  return 6;
}

//abstract class future
Future<String> movie() async {
  //return value
  return 'Challenger Deep';
}
```

# Stream

A stream is a sequence of asynchronous events. It is like an asynchronous Iterable—where, instead of getting the next event when you ask for it, the stream tells you that there is an event when it is ready.
