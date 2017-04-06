# Calabash Automation test

## Install calabash

    ./install-calabash-local-osx.rb

This will install Calabash and gems in a `~/.calabash` directory.

## Or do-it-yourself

Or if you're already a Ruby user, make sure you have bundler installed:

    gem install bundler

Install gems in the `Gemfile`:

    bundle install

## Running the tests

### iOS

You need OS X with Xcode (6.1 recommended) installed with command-line tools.

To run the iOS tests run

    ./run.rb ios

or

    bundle exec cucumber -p ios

### Android

To run the Android tests, ensure a recent Android SDK is installed, and that

* environment variable `ANDROID_HOME` is set to point to the sdk folder, for example `/Users/krukow/android/adt/sdk`

Run

    ./run.rb android

or

    bundle exec calabash-android run prebuilt/Android-debug.apk -p android

## Calabash console

### IOS

To see the iOS console run

    ./console.rb ios
    
Run `start_test_server_in_background`.

### Android

To see the Android console run

    ./console.rb android

Run `start_test_server_in_background`.
