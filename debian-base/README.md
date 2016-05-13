- Create base image with Debian linux distro 
- Install essential linux packages
- Install Open JDK 7. All hadoop images should extend this one.


Building the image
----
- ``docker build -t anoopnair/hadoop_base_debian .``

Version
---
- Debian linux: 8.3 (jessie)
- Java: Open JDK 7 

