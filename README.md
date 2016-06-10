OSGi example project, based on BND with Maven

Case study for http://OpenDaylight.org with http://bndtools.org (http://bnd.bndtools.org)

I'd like ODL to eventually adopt Gradle, but that will be a separate project, so try Maven, for now.

Originally initiated by Michael Vorburger.ch (@ work @ Red Hat),
together with Kai Kreuzer, during Unconference day at EclipseCon France 2016.

Contrary to https://github.com/osgi/osgi.enroute.examples.maven, this is an example of a Maven instead Gradle-based build.
(The osgi.enroute.examples.maven is an example of a Maven instead BND repo, but with a Gradle build.)


Notes
-----

* mvn install hapens automatically, from IDE, all the time, no more manually needed
* Dependencies, e.g. osgi.core, are in bnd.bnd's -buildpath: and NOT in *.gradle or pom.xml
* Run felix.bndrun to see it hot auto-reloads change to any used bundle
* See EquinoxExampleLaunch.launch, just as an example, to explain (problem: Target Platform in p2 format instead of from Maven)
* ./gradlew build => generated/*.jar (NOT in build/)
* Karaf demo 1: Start, log:tail, copy built JAR into deploy/, bundle:list, bundle:stop ch.vorburger.learnosgi.hello, bundle:start ch.vorburger.learnosgi.hello
* Karaf demo 2: bundle:install -s mvn:ch.vorburger.learnosgi/hello/0.0.1-SNAPSHOT; make change, mvn install - change is hot auto-reloaded!  (bundle:watch ch.vorburger.learnosgi.hello is NOT required - I think?)
