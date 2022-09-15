# TF2Classic-Tools
Basic tools for TF2Classic dedicated server development

Also comes with base SourceMod gamedata and binaries.

### Usage ###
If you need to use SourceMod with TF2Classic, grab the latest public version (1.11) from [here](https://www.sourcemod.net/downloads.php), then clone this repository and copy everything in the `sourcemod/` directory from your clone of this repo onto your server's `/tf/addons/sourcemod/` folder (AKA, merge them together), overwriting anything and everything. Currently only Linux is officially supported, and only on version 1.11. Sorry!

The main purpose of the rest of this repo is to remap the natives and forwards that TF2 plugins rely on from the TF2 extension and have them point to the plugin instead. This is because loading the extension on TF2C is impossible without a custom build of SourceMod. To avoid that headache, simply edit and recompile plugins from TF2 (given that they work on TF2C) and they will no longer rely on the TF2 extension.

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

Be aware that a simple recompilation isn't a guaranteed import! TF2Classic does not support certain natives and behaviors that TF2 does.
