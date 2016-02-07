# Docker Aware Prompt

[`docker-machine`][1] is an awesome tool that lets you control any remote Docker host. It works by declaring a set of environment variables (such as `DOCKER_HOST`) that are used by the Docker client. It is, however, easy to: a) forget if you have set up the Docker environment in your terminal, b) forget which machine you are controlling in case you do remember the latter.

To overcome this potential problems, this script provides a hint of the Docker host you are using in your command prompt – based on an original idea by [Jim Myhrberg][2].

![Docker Aware Prompt in Action](https://raw.github.com/ikanor/docker-aware-prompt/master/Terminal.png)

## Installation

Clone the repository into the `~/.bash` directory (or any other location you prefer):

```bash
mkdir -p ~/.bash; cd ~/.bash; git clone git://github.com/ikanor/docker-aware-prompt.git
```

Edit your `~/.profile` or `~/.bash_profile` and add the following lines:

```bash
source ~/.bash/docker-aware-prompt/main.sh
export PS1="\u@\h\[$txtcyn\]\$prompt_docker_machine\[$txtrst\] \w \$ "
```

Restart your terminal, or run `source ~/.profile` or `source ~/.bash_profile` to start using your Docker aware prompt right away.

## Notes

The suggested prompt assumes you have a UTF-8 enabled terminal. Should you want your prompt to remain ASCII-compatible, edit the `find_docker_machine` function in the `prompt.sh` file.

## License

`colors.sh` Copyright (C) 2014 Jim Myhrberg.

Otherwise, published under the terms of the MIT License (MIT).

[1]: https://docs.docker.com/machine/overview/
[2]: https://github.com/jimeh/git-aware-prompt


