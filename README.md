# Orbite

Barnes–Hut simulation to study the formation and evolution of self-gravitating systems.

## Configuration file

A configuration file is used to specify all the parameters of the simulation.
Simulation data will be written to the folder defined in the configuration file.
See conf.ini for an example.
It provides sensible default parameters to obtain an accurate simulation of a globular cluster's collapse.

## Run

Install Rust: https://www.rust-lang.org/tools/install

Use Cargo to build and run:

```sh
cargo run --release conf.ini
```

## Visualisation and data analysis

Plot energy, virial, density...: 

```sh
python ./scripts/plot.py <simulation-folder>
```

Analyse orbits:

```sh
python ./scripts/periode.py <simulation-folder>
```

Render a video of the simulation (use gnuplot + ffmpeg):

```sh
./scripts/gnuplot.sh <simulation-folder>
```






