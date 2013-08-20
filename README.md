INTRO
=====

Provides a quick way to change directory from the command line.

It's so small that everyone can understand it and then customize for yourself.

It's an improved version of which originally written by [@jeroen janssens](https://twitter.com/jeroenhjanssens/), thanks for his smart work.

[@jeroen janssens](https://twitter.com/jeroenhjanssens/) has posted an article "[Quickly navigate your filesystem from the command-line](http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html)" to introduce the smart tool

The improved points:

* Provides a simple install/uninstall script;
* Only complete the first argument for `jump` or `unmark`;
* Make the `marks` command work on both GNU Linux and MAC OSX;
* More hint when error occured, redirect error message to stderr;
* When run `mark` command, set default mark name to directory basename;
* Make `jump` command more smarter, just like `cd`;

Usage
=====

First install from github:

    $ git clone https://github.com/dangoakachan/mark-directory
    $ cd mark-directory
    $ sh install_markrc.sh
    $ source ~/.markrc

Then play it with following commands:

    $ cd /your/favorite/direcotry
    $ mark a-name-you-like # make a mark
    $ cd
    $ jump a-name-you-like # jump to the marked directory based on the name
    $ marks                # list the predefined marks
    $ unmark a-name-you-like # unmake the name

The `jump` command, which I've add an alias named `j` for, is very smarter:

    $ jump           # like `cd`, jump to your home
    $ jump -         # like `cd -`, jump to last visited directory
    $ jump $dir      # uh... just jump to the directory directly
    $ jump ~kodango  # same as above, ~kodango will be expanded to kodango's home directory
    $ jump markname  # jump to the corresponding marked directory

That's all!
