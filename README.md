* Vector heatmaps created with R and script from [FlowingData][].
* Start a localhost server with `python -m SimpleHTTPServer 8000`.

[FlowingData]: http://flowingdata.com/2014/02/05/where-people-run/

## Convert SVG polyline to path

Replace all instances of `<polyline` with `<path` and `points="` with `d="M`.

```diff
 <?xml version="1.0" encoding="utf-8"?>
 <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="1000px" height="1000px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
-<polyline fill="#FFFFFF" stroke="#000000" stroke-miterlimit="10" points="100.712,141.534 582.904,227.835 425.37,478.521
+<path fill="#FFFFFF" stroke="#000000" stroke-miterlimit="10" d="M100.712,141.534 582.904,227.835 425.37,478.521
  711.671,552.493 345.918,810.027 900.713,859.343 "/>
 </svg>
```

To close the path, you can also add `z` before the closing `"`. E.g. `900.713,859.343z "/>`.

Documented this in a [Gist](https://gist.github.com/andytlr/9283541).