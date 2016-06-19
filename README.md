# Example Config

An example Emacs configuration for Clojure development with CIDER and clj-refactor.

## Usage

You can use this configuration as your base Emacs configuration, or adapt it to your own configuration.

1. Clone, copy, or merge this repository as your `~/.emacs.d/` directory
2. Add a flycheck-clojure configuration to your Clojure project(s)' `project.clj`. You can see [an example of this step](https://github.com/clojure-emacs/squiggly-clojure/blob/master/sample-project/project.clj) in the flycheck-clojure repository.

Load a Clojure file, and execute `cider-jack-in` (`C-c M-j`).

clj-refactor's prefix is `C-c RET`. It uses mnemonic keywords to provide shortcuts for common tasks. One example of its functionality is introduce let, which would be `C-c RET i l`. To view a complete list of its functionality, hit `C-c RET C-h`.

Happy Clojure hacking!

## Featured packages

* [paredit, very basic intro](http://www.braveclojure.com/using-emacs-with-clojure/#5__Paredit), [cheat sheet](https://github.com/joelittlejohn/paredit-cheatsheet)
* [flycheck](http://www.flycheck.org/), [quick start](http://www.flycheck.org/en/latest/guide/quickstart.html)
* [clojure-mode](https://github.com/clojure-emacs/clojure-mode)
* [cider](https://github.com/clojure-emacs/cider), [cider-mode](https://github.com/clojure-emacs/cider#cider-mode)
* [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el), [refactor functions](https://github.com/clojure-emacs/clj-refactor.el#usage)
* [flycheck-clojure, aka squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure)

## Package versions

Our dependencies largely come from MELPA Stable, which aims to hold only stable versions of packages.

### Using Emacs package management

Where possible, we make use of a helper function, require-package, that checks if a package is installed locally. If it is not installed locally, it will attempt to download and install that package from the package repositories. When you first use this config, Emacs will download all of the requirements that are not included with this configuration (i.e., the ones that we do not get from MELPA stable).

[Here is a link](http://ergoemacs.org/emacs/emacs_package_system.html) to more detailed information about package management in Emacs.

## User Customizations

Most users will eventually want more in their emacs config than the clojure-specific tools included here. If you wish to add additional functionality to your emacs config beyond what is in this setup, simply *add a file* called "user-customizations.el" to your .emacs.d/lisp/ directory. Within that file, you have access to the (require-package ...) function defined here (explained above), so for example, you could have:

```el
;; a line inside your own user-customizations.el in .emacs.d:

(require-package 'rainbow-delimiters)
```

This would be all that is needed for emacs to automatically download the Rainbow Delimiters package from Melpa. Additional configs of any kind could be added to this user-customizations.el file. If the file is ommitted, no problem, no customizations are run.

######Need Inspiration? [Here is one example of a user-customizations.el in action](https://github.com/hellofunk/example-config)

## Rationale

See [this issue](https://github.com/clojure-emacs/clj-refactor.el/issues/110) for the discussion which resulted in creating this sample configuration. The goal of this to provide a reference Emacs config which is specially focused on Clojure development with all the bells and whistles but does not have much else in it.

## License

Copyright © 2015 [contributors](https://github.com/clojure-emacs/example-config/graphs/contributors)

Distributed under the GNU General Public License, version 3
