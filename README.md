# G4Music

Play your music in an elegant way.

![Window Mode](./shots/window.png)
![Play Bar](./shots/playbar.png)![Side Bar](./shots/playlist.png)

A fast, fluent, light weight music player written in GTK4, with a beautiful, adaptive user interface, so named G4Music. It is also focusing on high performance, for those people who has large number of songs.

## Features
- Supports most music file types, samba and any other remote protocols (thanks to great GIO and GStreamer).
- Fast loading and parsing hundreds of music files, in very few seconds.
- Low memory usage for large playlist with album covers, no thumbnail caches to store.
- Sort by album/artist/title or shuffle, supports full-text searching.
- Album cover is original resolution, can be exported.
- Gaussian blurred cover as window background, follow GNOME 42 light/dark mode.
- Supports MPRIS control.
- Supports drag-drop from file manager.
- Supports audio peaks visualizer.
- Supports gapless playback.
- Supports ReplayGain track mode.
- Supports pipewire audio sink.
- All these in a small package with 300KB.

## Install from Flathub
<a href="https://flathub.org/apps/details/com.github.neithern.g4music">
<img src="https://flathub.org/assets/badges/flathub-badge-en.png" width="120"/></a>

## How to build 
It is written in Vala, simple and clean code, with few third-party dependencies:

1. Clone the code from gitlab.
2. Install vala, develop packages of gtk4, libadwaita, gstreamer.
3. Run in the project directory:

    `meson setup build --buildtype=release`

    `meson install -C build`

## Change Log
Check the [release tags](https://gitlab.gnome.org/neithern/g4music/-/tags) for change log.
