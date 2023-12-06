# TF2Classic-Tools
SourceMod gamedata and shim plugin for TF2Classic dedicated servers.

### Usage ###
If you need to use SourceMod with TF2Classic, grab the latest public version (1.11) from [here](https://www.sourcemod.net/downloads.php). The minimum required version is 6950. Then, grab the latest version of TF2Classic-Tools from [the release page](https://github.com/tf2classic/SM-TF2Classic-Tools/releases) and extract it to your server's game folder (AKA, merge them together), overwriting anything and everything.

The main purpose of this repositoy is to remap the natives and forwards that TF2 plugins rely on from the TF2 extension and have them point to the plugin instead. This is because loading the extension on TF2C is impossible without a (more) custom build of SourceMod. To avoid that headache, simply edit and recompile plugins from TF2 (given that they work on TF2C) and they will no longer rely on the TF2 extension.

Just go into the plugin(s) you want to use and change:
```cpp
#include <tf2>
// Or
#include <tf2_stocks>
```
To
```cpp
#include <tf2c>
```
NOTE: As of Patch 2.1.3, SourceMod detects TF2Classic's engine as SDK2013 rather than TF2. Certain plugins check for this engine version for them to work, so you may need to make further edits before recompiling.

Be aware that a simple recompilation isn't a guaranteed import! TF2Classic does not support certain natives and behaviors that TF2 does.
