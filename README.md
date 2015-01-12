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
* [cider](https://github.com/clojure-emacs/cider), [cider-mode](https://github.com/clojure-emacs/cider#cider-mode)
* [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el), [refactor functions](https://github.com/clojure-emacs/clj-refactor.el#usage)

## Package versions

All package versions come from melpa stable apart from `clj-refactor`: this might change in the near future and `clj-refactor` will come from stable too. If you are not sure what melpa stable means check out next section about Emacs package management.

### Using Emacs package management

if you look at this code snippet

   ```elisp
   (require 'package)
   (add-to-list 'package-archives
                '("melpa-stable" . "http://stable.melpa.org/packages/") t)
   (setq package-user-dir (concat user-emacs-directory "packages"))
   (package-initialize)
   ```

this basically says that
- we want to use the emacs package management system
- we want to use the melpa-stable repo for packages (no snapshot versions from head of master branch of projects only released versions)
- we want the use the directory named `packages` under user-emacs-directory (resolves to `~/.emacs.d` here) to store the packages.

the above code snippet actually helps the maintainer when the time comes to upgrade packages (there are new releases) with a simple `M-x install package RET cider` for example. More detailed info about emacs [package management](http://ergoemacs.org/emacs/emacs_package_system.html).

## Rationale

See [this issue](https://github.com/clojure-emacs/clj-refactor.el/issues/110) for the discussion which resulted in creating this sample configuration. The goal of this to provide a reference emacs config which is specially focused on clojure development with all the bells and whistles but does not have much else in it.

## License

Copyright © 2015 [contributors](https://github.com/clojure-emacs/example-config/graphs/contributors)

Distributed under the GNU General Public License, version 3