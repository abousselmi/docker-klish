# docker-klish
A docker image for the klish CLI (for testing). The klish is a framework for implementing a CISCO-like CLI on a UNIX systems. It is configurable by XML files. The KLISH stands for Kommand Line Interface Shell.

## Build the docker image

```shell
git clone https://github.com/abousselmi/docker-klish.git
cd docker-klish
docker build -t docker-klish:1.0 .
```

## Run it

```shell
docker run -it --rm docker-klish:1.0 ./bin/clish
```

The output should be something like:

```shell
********************************************
*        Welcome to my awesome CLI         *
*                                          *
*    For more information, please visit    *
*    https://src.libcode.org/pkun/klish    *
*                                          *
*        Klish(Clish) + Docker = ❤         *
********************************************
        
Welcome root it is Sun Feb 23 23:59:21 UTC 2020
# 
  exit   Exit from the CLI
  hello  Greeting command
  info   Get system info
  net    Get some network info


# 
```

You can also execute it without arguments to get simply a bash:

```shell
docker run -it --rm docker-klish:1.0
```

## More info

Finally, more info are available here:

  * Homepage: [http://klish.libcode.org](http://klish.libcode.org)
  * Additional documentation: [http://klish.googlecode.com](http://klish.googlecode.com)
  * Repository: [https://src.libcode.org/pkun/klish](https://src.libcode.org/pkun/klish)

