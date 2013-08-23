INTRO
=====

Provides a quick way to change directory from the command line.

It's an improved version to [which](https://github.com/dangoakachan/mark-directory/issues/new) originally written by [@jeroen janssens](https://twitter.com/jeroenhjanssens/).

The improved points:

* Provides a simple install or uninstall script;
* Supports both GNU Linux and MAC OSX;
* More smarter commands;
* See #Usage for more information...

It's so small that everyone can understand it and then customize for yourself.

Usage
=====

First install from github:

    $ git clone https://github.com/dangoakachan/mark-directory
    $ cd mark-directory
    $ sh install_markrc.sh
    $ source ~/.markrc

Then play it with following commands:

    $ g /your/favorite/direcotry     # uh... just jump to the directory directly
    $ s a-name-you-like              # save a mark with name 'a-name-you-like'
    $ g                              # like `cd`, jump to your home
    $ g -                            # like `cd -`, jump to last visited directory
    $ g a-name-you-like              # jump to the marked directory based on the name  
    $ g a-name                       # the same as above, the mark name will be expanded
    $ p                              # list all predefined marks
    $ d a-name-you-like              # delete the mark

You can use tab to complete the arguments if possible.

Commands
========

Jump command
-------------

Syntax: jump [markname|directory]

Shortcuts: j, g

Description: jump to the directory based on the argument, which can be mark name or directory.

The later behavior like `cd` built-in command.

Mark command
-------------

Syntax: mark [markname]

Shortcuts: m, s

Description: create a mark for current directory. 

Use current directory basename as mark name if the argument is not provided.

Unmark command
--------------

Syntax: unmark [markname]

Shortcuts: u, d

Description: delete the mark created before.

If you missing the mark name, this command will delete the mark name points to current directory.

List command
------------

Syntax: marks

Shortcuts: l, p

Description: list all mark names.

Feedback
==========

* Create a new [issue](https://github.com/dangoakachan/mark-directory/issues/new);
* Leave an comment on [my blog](http://kodango.com/quick-way-to-change-directory-from-the-cmdline);
