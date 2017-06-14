# Crütech Scripts #

A scripting repo for Crütech!

## Scripts ##
Currently included scripts can be found in the ```bin``` directory of this project.
These scripts are:
  * ```add-template-to-homes.pl```
  * ```clean-users.pl```
  * ```find-user-files.pl```
  * ```setup-users.pl```

to call these scripts, run them from the project root:
```bin/<script-name>.pl [options]```
All scripts implement a --help option documentation can be retrieved with:
```perldoc <script-name>```

All of the scripts are written in Perl5 and only utilise core modules. As such any system perl should be able to execute these scripts. In the case where this is not so (A system with an incomplete core library) you may consult the ```.cpanfile``` for a complete list of modules used.
If you are having issues with dependencies it may be worth looking into plenv to setup an independent perl build to your system perl.
