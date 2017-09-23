## Standard Preset

List the standard presets:

```
docker run -it --rm carolynvs/handbrakecli -z
```

Transcode a file:
1. `mkdir input output`
1. Put a video in the input directory.
1. Run the following command:

    ```
    docker run -it --rm carolynvs/handbrakecli \
        -v `pwd`:/tmp
        -i /tmp/input/inputfilename \
        -o /tmp/output/outputfilename \
        --preset "Fast 1080p30"
    ```
1. The completed video is saved to the output directory.

## Custom Preset

1. `mkdir input output config`
1. Put a video in the input directory.
1. Put a presets.json file in the config directory.
1. Run the following command:
    ```
    docker run -it --rm carolynvs/handbrakecli \
        -v `pwd`:/tmp
        -i /tmp/input/inputfilename \
        -o /tmp/output/outputfilename \
        --preset-import-file /tmp/config/presets.json \
        --preset "Custom Name"
```
