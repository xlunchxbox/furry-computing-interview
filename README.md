![molecule](https://app.moleculesoftware.com/assets/logo-login.png "Molecule Software")
=======================================================================================

Molecule Software 
=================

Glowing-Cyril Interview
-----------------------

Like any interview, this is intended to measure some aspect of the applicant's ability.  In this case, we're looking at the applicant's (that's you, BTW) ability to understand a real-world financial problem, break it down, and solve it.  Because at the moment we work mostly in Ruby with Rails, we're asking you to do it with same.  You may or may not know Rails (or Git or the command-line or any number of other things we'll be touching on); you may or may not understand finance, and all that may or may not matter.  Give it a try; you'll be surprised what you can do with a little hard work and some crafty Googling.

Also: you may be able to plagiarize a solution to this, but we'd recommend against it.  Let's say you do, and let's say you happen to hide that fact from us, get through any other interviews and such, and further that we decide to hire you.  It's likely that you'll be found out sooner or later, and that would be a [Bad Thing](http://www.catb.org/jargon/html/B/Bad-Thing.html).  That's not to say you can't use the Googles (by all means...), just do it yourself.  You will likely be asked to defend your solution, anyway, so it'd be best to understand what you've submitted.

-----

### Instructions

If you're already familiar with Ruby, Rails and Git, work however you'd like.  If not, you're welcome to set up your development environment however you'd like but for simplicity's sake we're going to recommend using [RailsInstaller](http://railsinstaller.org/) to get you up and running.  Go there and follow the instructions.  Need an editor?  We recommend [Sublime Text 2](http://www.sublimetext.com/2); it's not free, but there's a free evaluation and we think you'll like it enough to buy it (hint hint).

Now that that's over with, what to do?

1. Fork this repository to your GitHub account (you *did* set up a GitHub account, didn't you?).  See [here](https://help.github.com/articles/fork-a-repo) for instructions.
1. Write some code:
	* Create some structures to hold the data stored in /db/data/*.csv
		* Trades (trades.csv)
		* Price Curves (ice_brent.csv, ice_wti.csv, nymex.csv)
	* Display the trades:
		* All the trade's attributes
		* The trade's price curve type
		* The Market price (from the price curve data, the 'settle' column in each price curve dataset)
		* The trade's Mark-to-Market value for the entire tenor of the trade, as described by the formula:  
		![equation](http://latex.codecogs.com/gif.latex?%5Csum_%7Bt%3D1%7D%5E%7Bm%7Dv*%28p-c_%7Bt%7D%29)  
where _t_ is the period (usually a month), *m* is the total number of periods in the trade, *v* is the volume of the trade, *p* is the price of the trade, and *c* is the market price of the trade for that month, which is pulled from the respective curve for that trade.
		* Display the portfolio Mark-to-Market value, which is the sum of the MTM value of all the trades.
1. Submit a pull request to us.  Don't know what that is?  See [here](https://help.github.com/articles/creating-a-pull-request).
1. Profit!!!

This is due by 11:59pm on the day 1 week from when you received the instruction email from us.  If you need more time, you may contact us, but nothing is guaranteed.  Good Luck.

### Notes

Some things to keep in mind:

*	We've set up this Rails project to use as a template.  It's not required; you're free to do what you'd like.  You can, if you'd prefer, code this puppy in Fortran.  However, you should note that there are some [Cucumber](www.cukes.info) tests embedded in the application.  We also have an additional set of Cucumber tests and we'll run both against whatever is submitted.  We won't go so far as to say your sample *has* to pass the tests, but they really, _really_ should.  We're jus' sayin'...  To run the Cucumber specs, use a terminal window, change to the project directory, and run `rake cucumber`. 
*	We use [RSpec](http://rspec.info/), so we set this skeleton project up with same.  If you'd rather use [Test::Unit](http://test-unit.rubyforge.org/), that's fine.  You don't *have* to have unit tests, but we take the same approach our math teachers did back in high school: show your work.  To run specs, from the project directory, type `rake spec`.
*	Making it look pretty (i.e. images, fancy CSS, structured HTML, clever Javascript): your choice.  If you're a hard-core developer that never touches a UI, don't feel you have to do so here.  If you're a designer at heart and that's the skillset you'd like to show off, go to town and wow us.  This is your sample; it should reflect who you are and how you want to represent yourself.
