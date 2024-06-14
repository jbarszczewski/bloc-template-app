# quick_notes

## Dev

### Default runner in watch mode

dart run build_runner watch -d

## Slang

### Runner for languages

One time: dart run slang apply

Watch mode: dart run slang watch

Analyze: dart run slang analyze --full

### iOS Config

Add the supported locales to your Info.plist file.

In this example, we support English (en) and German (de).

File: ios/Runner/Info.plist

```
<key>CFBundleLocalizations</key>
<array>
   <string>en</string>
   <string>pl</string>
</array>
```

## Splashscreen

### update

dart run flutter_native_splash:create

### remove

dart run flutter_native_splash:remove
