# vimeo_player pugin

vimeo_player plugin provides vimeo player Flutter widget based on the webview_flutter plugin.

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  vimeo_player: ^0.0.2
```

## Usage

Then you just have to import the package with

```dart
import 'import package:vimeo_player/vimeo_player.dart'
```

## Example

```dart
    Center(
        child: Column(
            children: [
            Container(
                height: 250,
                child: VimeoPlayer(
                videoId: videoId,
                ),
            ),
            ],
        ),
    ),
```

## Issues

Please feel free to [let me know any issue](https://github.com/prahack/vimeo_player/issues) regarding to this plugin.