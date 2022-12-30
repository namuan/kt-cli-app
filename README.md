# Kotlin Command Line Application

This is a sample Kotlin command line application.

## Setup

Install SDKMAN! (https://sdkman.io/install)

Download GraalVM

```shell
sdk install java 22.3.r19-grl
```

Install native-image builder

```shell
sdk use java 22.3.r19-grl
gu install native-image
```

Set environment variable for GraalVM.
Make sure you have it correctly setup if you get the following error

```text
--------------------------------------------------------
'gu' tool wasn't found. This probably means that JDK at isn't a GraalVM distribution.
```

```shell
export JAVA_HOME=`sdk home java 22.3.r19-grl`
```

Alternatively, use the following command from the project directory

```shell
sdk env
```

## Build

```shell
make build
```

## Run

```shell
make run
```

## Credits

Based on the previous work by [grodzickir](https://github.com/grodzickir/kotlin-jvm-cli-native-tool-template)