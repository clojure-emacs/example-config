# Example Config

Example Emacs configuration for clojure development with cider and clj-refactor.

## Usage

1. Clone this repository as your `~/.emacs.d/` directory (or alternatively copy the contents into your `.emacs.d`)
2. copy the provided `profiles_sample.clj` to your `~/.lein/` directory and rename it to `profiles.clj` (again alternatively just merge the contents of the sample profiles.clj with your existing profiles.clj if you already have one)

Alternatively you can cherry pick packages and/or config from here for clojure development with cider and clj-refactor and add it to your already existing `~/.emacs.d` directory.

Either way you should be able to `cider-jack-in` on any clojure file of your favourite clojure project with `C-c M-j`. Prefix for clj-refactor is set to `C-c RET` so for example introduce let would be `C-c RET i l`.

Happy clojure hacking!

## Featured packages

* [paredit, very basic intro](http://www.braveclojure.com/using-emacs-with-clojure/#5__Paredit), [cheat sheet](https://github.com/joelittlejohn/paredit-cheatsheet)
* [clojure-mode](https://github.com/clojure-emacs/clojure-mode)
* [cider](https://github.com/clojure-emacs/clojure-mode), [cider-mode](https://github.com/clojure-emacs/cider#cider-mode)
* [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el), [refactor functions](https://github.com/clojure-emacs/clj-refactor.el#usage)

## Package versions

All package versions come from melpa stable apart from `clj-refactor`: this might change in the near future and `clj-refactor` will come from stable too.

## Rationale

See [this issue](https://github.com/clojure-emacs/clj-refactor.el/issues/110) for the discussion which resulted in creating this sample configuration. The goal of this to provide a reference emacs config which is specially focused on clojure development with all the bells and whistles but does not have much else in it.

## License

Copyright © 2015 [contributors](https://github.com/clojure-emacs/example-config/graphs/contributors)

Distributed under the GNU General Public License, version 3