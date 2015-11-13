# snackk-web-api-recommed

## require
* lodash

## not amd
```
window.snackkModule.recommend
```

## functions
recommend:
* loadRecommendChannels
* loadRecommendUsers
* loadRecommendResources

## example
```
recommendModule.init server
recommendModule.loadRecommendChannels 1, 10, {
  'success': (res) =>
    debugger
  'error': (er) =>
    debugger
}
```


