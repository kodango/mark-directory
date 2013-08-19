INTRO
=====

Provides a quick way to change directory from the command line.

It's a improved version of [Quickly navigate your filesystem from the command-line](http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html) which originally written by [@jeroen janssens](https://twitter.com/jeroenhjanssens/):

* Provides a simple install/uninstall script;
* Only complete the first argument for `jump` or `unmark`;
* Make the marks command work both GNU Linux and MAC OSX;
* More hint when error occured, redirect error message to stderr;
* When run `mark` command, set default mark name to directory basename;

Usage
=====

First install from github:

    $ git clone https://github.com/dangoakachan/mark-directory
    $ cd mark-directory
    $ sh install_markrc.sh
    $ source ~/.markrc

Then play it with follow commands:

    $ cd /your/favorite/direcotry
    $ mark a-name-you-like # make a mark
    $ cd
    $ jump a-name-you-like # jump to the marked directory based on the name
    $ marks                # list the predefined marks
    $ unmark a-name-you-like # unmake the name

That's all!
