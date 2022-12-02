<div align = "center">

<h1><a href="https://2kabhishek.github.io/dog">🎯 dog 🐶</a></h1>

<a href="https://github.com/2KAbhishek/dog/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/dog?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/dog/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/dog?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/dog/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/dog?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/dog/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/dog?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/dog/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/dog?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/dog/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/dog?style=flat&color=e06c75&label="> </a>

<h3>Minimal cat clone written in dart 🐶🎯</h3>

<figure>
  <img src= "images/screenshot.png" alt="dog Demo">
  <br/>
  <figcaption>dog screenshot</figcaption>
</figure>

</div>

## What is this

dog is a rewrite of the `cat` utility in dart, written for learning purposes.

## Inspiration

Wanted to learn about building CLIs using dart.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of `dart`

## Getting dog

To get dog, follow these steps:

```bash
git clone https://github.com/2kabhishek/dog
cd dog
dart run bin/dog.dart -n README.md
```

## Using dog

```bash
USAGE:
    dog [-nh] [path]

FLAGS:
    -h, --help              Prints help information.
    -n, --line-number       Prints file at $path with line numbers.

OPTIONS:
    path                    File to print using dog.

Example:
    dog -n README.md

```

## How it was built

dog was built using `dart` and `code`.

## Challenges faced

While building dog the main challenges were learning about dart conventions and the `dart` way of doing things.

## What I learned

- `final` vs `const` keywords
    -`final` should be used when we do not know the value at compile time
    -`const` should be used when we know values at compile time
- Using `Future` for long running task
- Using `Platform.environment` for fetching env values
- Null checks and the `??` null aware operator
- Reading args using `ArgParser`
- Setting exitCodes using `exitCode`
- Exception handling
- Managing packages with pub
- Dart tooling in general

Hit the ⭐ button if you found this useful.

## More Info

<div align="center">

<a href="https://github.com/2KAbhishek/dog">Source</a> | <a href="https://2kabhishek.github.io/dog">Website</a>

</div>
