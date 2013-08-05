selfviz
=======

[![screen shot 2013-08-04 at 8 36 56 pm](https://f.cloud.github.com/assets/87753/908139/51757926-fd80-11e2-936b-7b7879437c6c.png)](https://github.com/davidad/selfviz/releases)

A LaTeX/TikZ rendering template for plotting some "quantified self" data against a UTC x-axis.
You may need an up-to-date installation of [TeXLive](http://www.tug.org/texlive/) ([OSX](http://www.tug.org/mactex/), [Unix](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz), [Windows](http://mirror.ctan.org/systems/texlive/tlnet/install-tl.zip))
to make this work.

To produce the pdf, run `make`. To open it as well, run `make open` (on OSX), or `make evince` (on Linux). I don't know about Windows.

Directions
----------

There's a bunch of sample data in `meals.tex`, `misc_events.tex`, `practice.tex` (intended for a hobby), `work.tex`,
`mood_log.txt`, and `sleep_log.txt`. I recommend linking the `.txt` files to your Dropbox:

    $ mv *.txt ~/Dropbox
    $ ln -s ~/Dropbox/mood_log.txt mood_log.txt
    $ ln -s ~/Dropbox/sleep_log.txt sleep_log.txt

Then you can edit these from anywhere you have a Dropbox client, including iOS or Android. The `.tex` files are harder
to edit on a mobile device, but should be maintained with the discipline of journaling. Also, edit `name.tex` (-:

Every week or so, you'll need to edit `dates.tex`.

Future work
-----------

Ideally, all these files (especially `dates.tex`) should be automatically generated out of a database, which could
then accept input from a Pebble app, an email parser, a Twilio parser, a Web interface, etc., etc.
It probably should also run as a Heroku app so you don't have to worry about maintaining a TeXLive installation and
a database server.
Pull requests are welcome, as is nagging.
