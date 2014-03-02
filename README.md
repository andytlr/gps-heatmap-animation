# GSP Heatmap Generated with R and animated with D3.

[Demo](http://andytaylor.me/gps-heatmap-animation/)

## Make vector heatmap

Vector heatmaps created with R and script from [FlowingData](http://flowingdata.com/2014/02/05/where-people-run/).

### Install R and dependencies

1. Download and Install [R](http://www.r-project.org)
2. In terminal launch R with `R`.
3. In R, run `install.packages("plotKML")` to install dependencies for the script.
4. R will attempt to use XQuartz to ask you to choose a mirror to get packages from. If you don't have it, go [download](http://xquartz.macosforge.org/landing/), install and repeat #3.

### Convert multiple GPX files to one SVG heatmap

1. `cd` to the directory with `maps.R` and your source `.gpx` files.
2. Run `R CMD BATCH maps.R`
3. This will generate a PDF called `Rplots.pdf`. The process to make this PDF an SVG is manual (I'd like to try and automate it): open the PDF in Illustrator and save as an SVG.

## Convert SVG polylines to paths

Illustrator spits out each GPS line as SVG `<polyline>`s. To animate them we need them to be `<path>`s. To do so, you essentially need to replace all instances of `<polyline` with `<path` and `points="` with `d="M`. I've documented this process a bit further in this [Gist](https://gist.github.com/andytlr/9283541).

I've written a small Ruby script to automate this.

1. `cd` to directory containing `Rplots.svg` and `polyline-to-path.rb`.
2. run `ruby polyline-to-path.rb`

## Start localhost server and check it out

1. `cd` to directory containing `index.html` and start a localhost server with `python -m SimpleHTTPServer 8000`.
2. Visit http://localhost:8000

