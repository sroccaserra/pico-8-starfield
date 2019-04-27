A classic starfield effect in [PICO-8](https://www.lexaloffle.com/pico-8.php).

Note: requires PICO-8 v0.1.12c for the new `#include` instruction.

![demo](images/starfield_0.gif?raw=true)

## Starting the demo

From the root of this repository, set the `PICO_8` environment variable to point to your `pico8` executable, and run `make`:

    $ PICO_8=/path/to/pico8 make run

This starts PICO-8 with the `carts` dir set to this repository's `carts` dir.

Then within PICO-8, load and run the cart:

    > load starfield
    loaded starfield.p8 (73 chars)
    > run

## Changing the speed

Press `up` or `c` to accelerate.

Press `down` or `x` to decelerate.

## References

I used [Lou's Pseudo 3d Page](http://www.extentofthejam.com/pseudo/) to quickly find this formula:

    y_screen = (y_world/z_world) + (y_resolution/2)
