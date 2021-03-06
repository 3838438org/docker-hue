# **hue**
___

### Description
___

This image runs the official [*Cloudera Hue*](http://gethue.com/) on a Centos Linux distribution. The image is based on the [***parrotstream/centos-openjdk***](https://hub.docker.com/r/parrotstream/centos-openjdk). In order to run a fully functional Hue application you need to start all other servervice (ZooKeeper, Hadoop, Hive, Impala, Solr, Oozie, Sqoop, etc.).

The *latest* tag of this image is build with the [latest stable](http://gethue.com/category/release/) release of Cloudera Hue on Centos 7.

You can pull it with:

    docker pull parrotstream/hue


You can also find other images based on different Cloudera Hue releases, using a different tag in the following form:

    docker pull parrotstream/hue:[hue-release]


For example, if you want Apache Hue release 3.11 you can pull the image with:

    docker pull parrotstream/hue:3.11


Run with Docker Compose:

    docker-compose -p parrot up


Setting the project name to *parrot* with the **-p** option is useful to share the network created with the containers coming from other Parrot docker-compose.yml configurations.

Once started you'll be able to access the Hue Web console at:

| **HUE Web GUI**           |**URL**                            |
|:--------------------------|:----------------------------------|
| *Cloudera Hue*            | http://localhost:8000            |


### Available tags:

- Cloudera Hue 4.0.0 ([4.0.0](https://github.com/parrot-stream/docker-hue/blob/4.0.0/Dockerfile), [latest](https://github.com/parrot-stream/docker-hue/blob/latest/Dockerfile))
- Cloudera Hue 3.12.0 ([3.12.0](https://github.com/parrot-stream/docker-hue/blob/3.12.0/Dockerfile))
- Cloudera Hue 3.11.0 ([3.12.0](https://github.com/parrot-stream/docker-hue/blob/3.11.0/Dockerfile))
- Cloudera Hue 3.9.0-cdh5.12.0 ([3.9.0-cdh5.12.0](https://github.com/parrot-stream/docker-hue/blob/3.9.0-cdh5.12.0/Dockerfile))
