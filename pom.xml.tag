<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.2.4.RELEASE</version>
    <relativePath /> <!-- lookup parent from repository -->
  </parent>
  <groupId>net.madtiger.shared.lock</groupId>
  <artifactId>shared-lock</artifactId>
  <version>1.0.0-RELEASE</version>
  <packaging>pom</packaging>
  <properties>
    <java.version>1.8</java.version>
  </properties>


  <dependencies>
    <dependency>
      <groupId>org.projectlombok</groupId>
      <artifactId>lombok</artifactId>
      <optional>true</optional>
      <version>1.18.10</version>
    </dependency>
  </dependencies>


  <modules>
    <module>lock-core</module>
    <module>lock-redis</module>
    <module>lock-annotation</module>
    <module>lock-demo</module>
    <module>spring-boot-starter</module>
  </modules>


  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <configuration>
          <source>1.8</source>
          <target>1.8</target>
        </configuration>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-source-plugin</artifactId>
        <executions>
          <execution>
            <id>attach-sources</id>
            <phase>verify</phase>
            <goals>
              <goal>jar-no-fork</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>versions-maven-plugin</artifactId>
        <configuration>
          <newVersion>1.0.0-RELEASE</newVersion>
        </configuration>
      </plugin>

      <plugin>
        <artifactId>maven-deploy-plugin</artifactId>
        <executions>
          <execution>
            <id>default-deploy</id>
            <phase>deploy</phase>
            <goals>
              <goal>deploy</goal>
            </goals>
          </execution>
        </executions>
      </plugin>

      <plugin>
        <groupId>org.sonatype.plugins</groupId>
        <artifactId>nexus-staging-maven-plugin</artifactId>
        <extensions>true</extensions>
        <configuration>
          <serverId>ossrh</serverId>
          <nexusUrl>https://oss.sonatype.org/</nexusUrl>
          <autoReleaseAfterClose>true</autoReleaseAfterClose>
        </configuration>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-scm-plugin</artifactId>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-release-plugin</artifactId>
        <configuration>
          <mavenExecutorId>forked-path</mavenExecutorId>
          <useReleaseProfile>false</useReleaseProfile>
          <arguments>-Psonatype-oss-release</arguments>
          <pushChanges>false</pushChanges>
          <localCheckout>false</localCheckout>
          <autoVersionSubmodules>true</autoVersionSubmodules>
          <checkModificationExcludes>
            <checkModificationExclude>.idea/</checkModificationExclude>
            <checkModificationExclude>.idea/*</checkModificationExclude>
            <checkModificationExclude>.idea/libraries/*</checkModificationExclude>
            <checkModificationExclude>pom.xml</checkModificationExclude>
            <checkModificationExclude>release-pom.xml</checkModificationExclude>
            <checkModificationExclude>*.iml</checkModificationExclude>
          </checkModificationExcludes>
        </configuration>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <configuration>
          <aggregate>true</aggregate>
          <charset>UTF-8</charset>
          <encoding>UTF-8</encoding>
          <docencoding>UTF-8</docencoding>
          <additionalparam>-Xdoclint:none</additionalparam>
        </configuration>
        <executions>
          <execution>
            <id>attach-javadocs</id>
            <goals>
              <goal>jar</goal>
            </goals>
          </execution>
        </executions>
      </plugin>

      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-gpg-plugin</artifactId>
        <executions>
          <execution>
            <id>sign-artifacts</id>
            <phase>verify</phase>
            <goals>
              <goal>sign</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

  <scm>
    <url>https://github.com/spring-tools-plus/shared-lock</url>
    <connection>scm:git:ssh://github.com/spring-tools-plus/shared-lock.git</connection>
    <developerConnection>scm:git:ssh://git@github.com/spring-tools-plus/shared-lock.git</developerConnection>
    <tag>shared-lock-1.0.0-RELEASE</tag>
  </scm>

  <distributionManagement>
    <snapshotRepository>
      <id>ossrh</id>
      <url>https://oss.sonatype.org/content/repositories/snapshots</url>
    </snapshotRepository>
  </distributionManagement>

</project>