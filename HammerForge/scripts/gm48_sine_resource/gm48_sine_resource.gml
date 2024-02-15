// taken from https://gm48.net/resource/33/sine-waves-make-your-game-prettier

// y = sin(x * 2pi / period) * amplitude + midpoint
/*
y is the property we want to change
x is time (increasing constantly)
2pi is a mathematical constant (it's the circumference of a circle with radius 1)
period is how long one cycle of the sine wave takes
amplitude is how high up and down the sine wave goes
*/

function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}