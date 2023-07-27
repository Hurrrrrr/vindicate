# vindicate

This CLI program is deprecated and no longer maintained regularly. The most
up-to-date version can be found at https://github.com/Hurrrrrr/vindjango
This does recieve occasional updates, mostly for testing features
before deploying them to the webapp.

Vindicate is an app that lets users improve their wine knowledge by trying to
identify an unknown wine based on a tasting note. Users can select a narrow
scope, with only the most well-known styles available, to a wide scope where
anything goes. To make the task more challenging and simulate the real-world
experience of being an imperfect taster, Vindicate will procedurally generate
tasting notes with a level of accuracy chosen by the user, from perfect to
horrible and everything in between.

This is my first independent coding project. It's written in Python and is the CLI
implementation of what became a webapp with more features. I made the choice 
to build the logic in Python because Javascript was alreadymy strongest language,
whereas I was totally unfamiliar with Django and wanted to learn. I've written
this with the intent of being as readable as possible with minimal comments,
rather than favouring performance.

New-to-me technologies/skills which I learned for this project:
    software architecture design
    SQLite3/database management in Python
    porting a project from Python to webapp using Django
    prompt engineering

This was my first time using an LLM for coding assistance, though it was used
minimally because of the simple structure of this program.
GPT4 was used primarily for input on the architecture of this app, as well as
writing some repetitive code such as the getters in the Wine class. The vast majority
of code was written by me.

Features currently being developed for launch:
    Becoming a webapp
    Graphical display and GUI
    Hardening

Many features to come post-launch:
    More wines beyond the most narrow scope (zero)
    Improved tasting note output: more varied notes and more complex notes
    Add sparkling, fortified, sweet, rose, and orange wines
    More customisation (focus on certain countries, styles, etc.)
    User accounts and results sharing
