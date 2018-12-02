<a id="contents"></a>

## Contents

This is the git repository that houses the logic and source code for [ipatch.github.io](https://ipatch.github.io)

This project uses [hugo](https://gohugo.io/) to build a static site from the files contained in the [src](https://github.com/ipatch/ipatch.github.io/tree/master/src) directory, which are built by using **hugo**  I then use a modified version of the deploy script found in the hugo documentation to move the compiled static site from within [./src/build]() directory to the git repo [root](https://github.com/ipatch/ipatch.github.io).  The repo can be cloned and experimented with locally

```shell
git clone https://github.com/ipatch/ipatch.github.io.git \
cd ipatch.github.io.git/ \
hugo serve
```

If **hugo** is not installed on the local box, refer to the [hugo docs](https://gohugo.io/getting-started/installing/) for getting hugo setup.
