# Balatro modding modules
This repository contains various files that can be quickly inserted into mod code to enable various features that are too small to warrant their own mods, but complex enough that more than "a few lines" is needed to implement them. All of these files are designed for [Steamodded](//github.com/Steamodded/smods) mods.

If you are going to directly add these files to your mod code, *PLEASE* link back to this repository (at least in source code) so that people who might possibly take parts of your code know where these files are from. On the other hand, if you are going to derive the code in the files for something else (i.e. change it), no linking is needed; it's become different enough that documentation on this repository don't apply well enough to said derivation.

## Using these files
There are two ways to use these files:
1. Copy and paste the code into your source code (please don't, that's just disorganized)
2. Add the file into your mod folder and load it via SMODS: `SMODS.load_file(...)`

Please bear in mind that different modules may want to be loaded at different times of mod loading. For example, Cardanim should be loaded after registering Centers, and JTML should be loaded before any written JTML. Information on when to load these files can be found on each file's wiki entries.

## FAQ
1. Why not just add these to Steamodded as features via pull requests?
   * To me, most of these features are not really relevant to most modders and thus don't really warrant implementation in Steamodded, which is designed to be general. For example, the current implementation of animations - which involves defining atypical card layers and macros, and allows for highly complex animations (non-linear sequence) - isn't relevant to most modders.
   * <s>also i can't work well with others' code, i don't wanna dig through smods source code</s>
2. Can *I* add these to Steamodded as features?
   * Sure, go ahead, though I won't guarantee that they'll let the feature in, and I'm not responsible for any issues that arise from the Steamodded derivation.
3. Why not just make these as API mods?
   * As of the making of this repository, there isn't a streamlined method to installing a mod *and* its dependencies. Making these modules as API mods would lead to dependency bloat on a mod, and require having to handle a bunch of mods just to be able to play one.
4. Why not just package these into a library mod?
   * Again, there's an issue with a lack of streamlined dependency downloading. I don't want to contribute to dependency hell being worsened.
5. I feel like you're overthinking it with the whole dependency issue.
   * Maybe. But I have seen complaints about it, and I do find it to be annoying myself. Until we have a better system for downloading mods *and* their dependencies, this problem will continue to be in my mind, and even afterwards, I might continue to be mindful of using too many dependencies.
6. Your code sucks!!!!/I have an idea on how to change this...
   * Feel free to make a pull request! Honestly, I'm still learning how to use Lua and Steamodded, so any suggestions for improvements are greatly appreciated.

## Adding modules to this repository
If you wish to add a module to the repository, feel free to make a pull request. At minimum, for your pull request to be accepted, you *must* write documentation of your module. You must also acknowledge that your code will be used by Balatro modders without direct credit and/or derived for other purposes.
