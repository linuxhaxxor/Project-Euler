# Project Euler @ toastal

###### Main repo @ [Bitbucket](https://bitbucket.org/toastal/project-euler), Mirror @ [GitHub](https://github.com/toastal/Project-Euler)

[Project Euler](https://projecteuler.net/) contains an archive of mathematical
[problems](https://projecteuler.net/archives) that can be solved with
programming. As an aspiring polyglot, I want to use these as exercises to
practice different languages and their standard libraries with the least amout
of friction. Also the goal is it to be learning and trying new things rather
than always picking the most efficient or performant option.

#### Languages I Plan to Work With

- [JavaScript](http://www.ecmascript.org/) (ECMAScript 6, favoring new
  syntax and features)
- [CoffeeScript](http://coffeescript.org/) (v1.9, favoring functional
  programming/recursion)
- [Haskell](https://www.haskell.org/) (ghc v7.6)
- [Elixir](http://elixir-lang.org/) (v1.1)
- [Erlang](http://www.erlang.org/) (v6.1)
- [Python](https://www.python.org/) (v3, favoring list comprehensions)
- [Lua](http://www.lua.org/) (v5.2, LuaJIT)


#### Languages I Might Consider

- [Elm](http://elm-lang.org/) (Not sure how you'd use like a scripting
  language without it being a pain)
- [Clojure](http://clojure.org/) (LISP-y language would be cool, but
  I don't want to deal with the JVM, but there's still Racket...)
- [PHP](http://php.net/) (I use it for my job so it's relevant, but it's not i
  any fun to code in and the syntax is ugly)
- [Julia](http://julialang.org/) (It works with numbers pretty well and
  the syntax is easy to understand)
- [Rust](http://www.rust-lang.org/) (It could be a `C` replacement, is
  backed by my friends at Mozilla, and is an efficient, modern language,
  but I don't think it's primetime-ready enough to put on any of my
  machines to test)
- [SmallTalk](http://smalltalk.org/main/) or
  [Squeak](http://www.squeak.org/) (The actual OO)


### Directory Structure

To keep it all about as consistent as possible, the directory structure will
look like `eulers/PROBLEM_#/FILE_EXTENSION/main.ext`. Noteable exception is
Haskell with filename of `Main.hs`. This structure will make it easier to
manage, make senses of, and script.


### Running a 'Suite'

I say 'suite' because I have a minimal `bash` script that will run the scripts
of a problem @ `bash run_euler.sh <problem #>`.

### Observations thus far

- Functional programming is way more zen. :)
- Lua is very fast, but it's pretty bare bones.
- Haskell has, in my opinion, the prettiest, most expressive syntax--even
  if I don't fully understand it.
- ECMAScript6 is a step up from ECMAScript5, but I'm starting to feel that
  CoffeeScript is just nicer all around. It'll eventually get ES6 jazz
  when the browser support is good enough (which is currently none and I'm  using `babel-node` to supplement that the supports not even good enough
  on the backend, let alone in browsers). JavaScript has some nice things,
  but is so clunky to use. I'm sad that CoffeeScript's gotten a bad rep
  since naive people feel that ES6 supplants CoffeeScript. That being
  said, Elm, PureScript, and Haste seem like a nicer route than
  CoffeeScript and the birth and death of JavaScript is actually
  happening. Here's to hoping for ASM.js taking off.
- I don't understand the point of PHP considering most any other option is
  going to feel better.
- Erlang not having `string` type is weird in modern times.
