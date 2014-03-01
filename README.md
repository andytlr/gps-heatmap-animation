* Vector heatmaps created with R and script from [FlowingData][].
* To convert `<polyline>` to `<path>` in Illustrator, make sure there is at least one curve between points and Illustrator will generate a path instead of a polyline.
* Start a localhost server with `python -m SimpleHTTPServer 8000`.

[FlowingData]: http://flowingdata.com/2014/02/05/where-people-run/

### Convert polyline to path

From [StackOverflow](http://stackoverflow.com/questions/13679495/examples-of-polygons-drawn-by-path-vs-polygon-in-svg):

It's trivial: You can basically take the points attribute of a polygon and turn it into a path's d attribute by prepending M and appending z. Like so:

```xml
<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
  <polygon points="20,20 100,20 100,100 30,110"/>
  <path        d="M20,20 100,20 100,100 30,110z" fill="green" transform="translate(100,0)"/>
</svg>
```

`points` to `d`. Add `M` and `z` to the start and end FFS.

Adding `z` to the end appears to close the path. Simply adding `M` seems to work.