## Docker SASS
Small docker container with SASS CSS cli https://sass-lang.com/
## Usage

The image has the `sass` binary as its entrypoint, so it should be invoked with whatever arguments you would normally pass to sass. For example,

```bash
$ cat file.scss
$blue: #00f;
.thing { color: $blue; }

$ docker run --rm -v $(pwd):$(pwd) -w $(pwd) --user $(id -u):$(id -g) deryabinsergey/sass file.scss
.thing {
  color: #00f; }
```

You may also want to create a bash alias:

```bash
alias sass="docker run -it --rm -v \$(pwd):\$(pwd) -w \$(pwd) --user \$(id -u):\$(id -g) deryabinsergey/sass"
```

so you will be able to simply run

```
$ sass file.scss
.thing {
  color: #00f; }

$ sass --version
$ sass --help
```

etc...