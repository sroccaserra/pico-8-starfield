A classic starfield effect in [PICO-8](https://www.lexaloffle.com/pico-8.php).

Note: requires PICO-8 v0.1.12 for the new `#include` instruction.

![Demo GIF](images/starfield_0.gif?raw=true)

You can try it live here:

- https://www.lexaloffle.com/bbs/?tid=34064

## Starting the demo

From the root of this repository, set the `PICO_8` environment variable to point to your `pico8` executable, and `make run`:

    $ PICO_8=/path/to/pico8 make run

Or you can run PICO-8 with these options:

    $ /path/to/pico8 -run carts/starfield.p8

## Changing the speed

Press `up` or `c` to accelerate.

Press `down` or `x` to decelerate.

## References

I used [Lou's Pseudo 3d Page](http://www.extentofthejam.com/pseudo/) to quickly find this formula:

    y_screen = (y_world/z_world) + (y_resolution/2)
