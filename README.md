# compton-shaders
A collection of GLSL shaders for use with compton

## Usage
For use with compton under the glx rendering backend

`compton --backend glx --force-win-blend --glx-fshader-win "$(cat shader.glsl)"`

## Shader Descriptions

`compton-fake-transparency-fshader-win.glsl` will replace the color #010101 in any window that compton does not "invert" with the color #000000E3

`crt-aperture.glsl` applies a aperture grill style crt shader to windows

`crt-pi.glsl` does the same as `crt-aperture.glsl` but is of lower quality and better performance

`grayscale.glsl` make windows render in grayscale

**Note:** `crt-aperture.glsl`, `crt-pi.glsl`, and `grayscale.glsl` will _not_ respect opacity properties

**Note:** none of the shaders will respect compton's invert colors

## Rights

These are only modifications of existing shader for my personal uses and compton. All rights to the respective original authors.
