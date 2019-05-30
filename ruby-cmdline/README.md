# Ruby Command Line Demo

Bundles a Ruby command line script along with its required Gems.

### Building

```bash
docker build -t aitkenably/ruby-cmdline .
```

### Running 

Our Dockerfile sets the ENTRYPOINT of our image to the bundled Ruby script. This allows us to pass command-line arguments to the script. 

```bash
 docker run --rm -it aitkenably/ruby-cmdline -h
```

```bash
 docker run --rm -it aitkenably/ruby-cmdline -v
```

### Bash Alias 

Running the full `docker run` command is too much to type. Defining a BASH alias makes it easy to run and rerun our command.

```bash
alias example='docker run --rm -it aitkenably/ruby-cmdline'	
example -h
example -v 
```