# vindicate

Vindicate is an app that lets users improve their wine knowledge by trying to
identify an unknown wine based on a tasting note. Users can select a narrow
scope, with only the most well-known styles available, to a wide scope where
anything goes. To make the task more challenging and simulate the real-world
experience of being an imperfect taster, Vindicate will procedurally generate
tasting notes with a level of accuracy chosen by the user, from perfect to
horrible and everything in between.

This is my first independent coding project. Doubtless there are many best practices not practiced.
The original implementation is done in Python because I prefer working in it and I wanted to learn
how to use Python to build a webapp. I've written this code to favour readability over performance,
since I intend to use this as a portfolio piece.

New-to-me technologies/skills which I learned for this project:
    software architecture design
    CRUD SQL in Python
    using GPT4 for coding assistance
    porting a project from Python to webapp
    adding Gaussian noise to data to produce normally-distributed randomness
    complex text output formatting

GPT4 was used primarily for input on the architecture of this app, as well as
writing some repetitive code such as the getters in the Wine class. The vast majority
of code was written by me.

Features currently being developed for launch:
    Becoming a webapp

Features to come post-launch:
    Graphical display
    More wines beyond the most narrow scope
    More robust input parsing and menu-based input
    Improved tasting note output: more varied notes and more complex fruit notes
    Add sparkling, fortified, sweet, rose, and orange wines
    More customisation (focus on certain countries, styles, etc.)
    User accounts
