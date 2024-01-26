# hcuesplitter

Rhyming with 'hq splitter', this simple shell script permits you to use CUE files to split large audio files, even if they are high-quality!

Audiophiles, rejoice!

## Why wouldn't I just use shntool?

<details>
<summary>tl;dr: go ahead. If it works, great.</summary>

Firstly, I'll acknowledge that [shntool](http://shnutils.freeshell.org/shntool/) is very popular for some reason. Even the venerable [Arch wiki](https://wiki.archlinux.org/title/CUE_Splitting) reads like it's the only game in town, so if shntool works for you, then absolutely have at it. Nothing to see here, and godspeed!

Otherwise... well let's be honest, there's a billion cue-splitters online and shntool seems to be abandonware albeit its over-representation. It was last published almost fifteen years ago as of current writing (2009, march) and doesn't seem to handle my 24-bit or more-than-stereo audio files, even if I'm just using `.wav` files. I've seen patch notes claiming it does, but I get this annoying little message:
```
shnsplit: warning: unsupported format 0xfffe (Unknown) while processing file:
```

So perhaps it only supports 24-bit WAV's if they are not [WAVE_FORMAT_EXTENSIBLE](https://mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html), but ultimately it's lacking.

Regardless, the [CUE format](https://en.wikipedia.org/wiki/Cue_sheet_(computing)) is /not/ very complex, and [sox](https://sourceforge.net/projects/sox/) is fantastic, so why bother stumbling over shntool when we can simply employ sox to do the good work?

If that sounds good, follow the build/install/usage instructions below!
</details>

# Instructions

## Supported Operating Systems

  - Probably Linux (as in, "definitely my NixOS 23.05")
  - Maybe Mac.
  - Definitely not regular Windows, unless you're already into [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) (oof) or [Cygwin](https://cygwin.com/) (hmm!).

## Dependencies
If you're using NixOS, none. The nix-shell shebang will take care of it for you.

Otherwise:
  - [sox](https://sourceforge.net/projects/sox/)

## Build
It's just a bash-script, so you don't need to build it. Hallelujah.
Just copy the text files somewhere and make sure they're executable or that you run them with your shell e.g. `bash`.

## Running

First, meet the help message. Run...
 * On NixOS: `hcuesplitter -h`
 * On other systems with bash: `hcuesplitter.bash -h`

And then follow its instructions.

Here's a sample of me running it.

```
$ hcuesplitter Opeth-Watershed.cue Opeth-Watershed.flac Opeth\ -\ 2008\ Watershed\ 5.0\ Surround\ 48KHz\ 24bit/
$
$ # that was it!
$
$ ls Opeth\ -\ 2008\ Watershed\ 5.0\ Surround\ 48KHz\ 24bit/
Opeth-Watershed-split-0.flac
Opeth-Watershed-split-1.flac
Opeth-Watershed-split-2.flac
Opeth-Watershed-split-3.flac
Opeth-Watershed-split-4.flac
Opeth-Watershed-split-5.flac
Opeth-Watershed-split-6.flac
Opeth-Watershed-split-7.flac
```

Then just use [Picard](https://picard.musicbrainz.org/) or your other favorite tagging tool to tag!

# Helpful?

If this was helpful, please consider [tipping](https://ko-fi.com/nhebert)!
