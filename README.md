# Triton Container Seminar#

Introduction
  * Overview of Triton Services  - slides are at http://www.slideshare.net/misterbisson/the-7-characteristics-of-container-native-infrastructure-linuxconcontainercon-20150817
  * Triton Architecture
  * Lab Work  (See https://github.com/misterbisson/clustered-couchbase-in-containers for the following)
  * Set up an account
  * Run bash in a docker container
  * `apt-get install htop` and run it.
  * run prstat in the container
  * Run a docker container  (ghost or ?)
  * Compose a Docker Application
	* Set up a couchbase server cluster
	* Add a node to the server
	* Add cbc-pillowfight as an infrastructure container

Debugging docker applications
* Linux Tools
  * strace, tcpdump, ip, etc.
* Native tools
* DTrace, mdb, snoop, etc.
  * trace system calls, syscall latency, show profiling
* Lab Work
  * Compare performance impact of strace vs DTrace
  * Determine how load generator talks with the database cluster
  * Bugs
  
Performance Issues
* Determine latency of requests to/from cluster and the load generator, and between nodes within the cluster
