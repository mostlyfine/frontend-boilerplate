ES2015 Boilerplate.

webpack and babel required.

## QuickStart on Docker
```
docker pull node:slim
docker run --rm -v $PWD:/home/node/app -w /home/node/app node:slim yarn install
```

## Build ES2015
```
docker run --rm -v $PWD:/home/node/app -w /home/node/app node:slim yarn build
docker run --rm -v $PWD:/home/node/app -w /home/node/app node:slim yarn watch
```


## Test
```
docker run --rm -v $PWD:/home/node/app -w /home/node/app node:slim yarn test
docker run --rm -v $PWD:/home/node/app -w /home/node/app node:slim yarn test -- --watch
```


## Development
```
docker build . -t nodedev
docker run --rm -it -v $PWD/src:/code/src:cached -v $PWD/dist:/code/dist:cached nodedev
```


