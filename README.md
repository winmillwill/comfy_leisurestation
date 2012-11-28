
Comfy Leisurestation: A Repeatable, Documented, Decomposable, Shareable and Iterative OSX (ruby) Enjoyment Environment

# NOTICE
Comfy Leisurestation depends on [opscode-cookbooks/dmg](https://github.com/opscode-cookbooks/dmg).  You will need to clone the dmg cookbook alongside comfy_leisurestation.

	cd ~/cookbooks; git clone https://github.com/opscode-cookbooks/dmg

# Why?

It takes a long time to set up a workstation, and doing it by hand leads to as many different setups as you have workstations.  Comfy Leisurestation automates the  installation the applications you want (the canned ones, e.g. VLC, as well as the compiled ones, i.e. homebrew's suite) and tweaks the settings you usually set by hand.  Comfy Leisurestation automates the process so you can decide what you want your machine to look like then do other things while your workstation chugs away, downloading, compiling, installing and configuring.

# OK, I'm ready to dive in. How should I use this?

First, make sure you've got Xcode and the Xcode command line tools installed, then:

- [soloistrc builder](http://soloistrc-builder.herokuapp.com/)
	
	Soloistrc Builder can be pointed at any cookbook and will help you build a soloistrc. Many thanks to [Winston Teo](https://github.com/winston/).

# I want to write my own recipe, what should I know?
Soloist (or your preferred method of running chef) usually runs chef-solo as root.  This means the current user is root, and ~ will be expanded to root's home directory.  Some constants, WS_USER and WS_HOME are available when needed.

