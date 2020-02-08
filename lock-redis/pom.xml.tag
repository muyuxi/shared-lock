<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <parent>
    <artifactId>shared-lock</artifactId>
    <groupId>net.madtiger.shared.lock</groupId>
    <version>1.0.0-RELEASE</version>
  </parent>
  <modelVersion>4.0.0</modelVersion>
  <artifactId>lock-redis</artifactId>
  <dependencies>
    <dependency>
      <groupId>org.springframework.data</groupId>
      <artifactId>spring-data-redis</artifactId>
    </dependency>
    <dependency>
      <groupId>${project.groupId}</groupId>
      <artifactId>lock-core</artifactId>
      <version>${project.version}</version>
    </dependency>
  </dependencies>


</project>