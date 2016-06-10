
bndrun ?

test Gradle build
pom.xml reading bnd.bnd
	https://github.com/cschneider/osgi-chat/blob/master/pom.xml
	https://github.com/apache/aries-rsa
mvn install and run in fresh Felix or Equinox (from repo or via file:/// ?)
branch gradle, and remove all gradle from master

read http://enroute.osgi.org/tutorial_maven/050-start.html

slf4j dep
bnd.bnd -buildpath vs. pom.xml
https://github.com/bndtools/bndtools/wiki/Changes-in-3.1.0#bnd-indexer-maven-plugin ?

https://github.com/pkriens/org.openhab.binding/blob/master/cnf/build.bnd ?

Agent! https://github.com/osgi/osgi.enroute/tree/master/cnf/distro/biz.aQute.remote.agent and source on https://github.com/bndtools/bnd/tree/master/biz.aQute.remote

src/test how-to? Needs to be on classpath, but not in JAR...





https://groups.google.com/forum/#!topic/bndtools-users/6b7es7GOaQ0: conf not in WS with .metadata how to? Re-conf in new workspace after project move?  http://enroute.osgi.org/tutorial_base/200-workspace.html

put project into sub-directory like in ODL.. note
http://enroute.osgi.org/tutorial_base/200-workspace.html "A bnd workspace is flat, the cnf directory and all project directories must reside in exactly the same parent directory, which is the workspace directory. Sorry, no exceptions."

M2E co-habitation?! Maven Dependencies Classpath container NOK.. Complete uninstall M2E makes transition difficult and would remove useful Run As Maven launchers.








New BND OSGi project wizard

pom.xml at root, multi module

share bnd.bnd stuff between the 2 projects.  Classpath container? Close / re-open projects handled via workspace dependency resolution à la M2E?

share bnd.bnd stuff between separate repos how-to? Must be via Maven dependency not SCM URL.  Check out https://github.com/rkrzewski/bnd-multilevel-examples/tree/master/workspace-cnf-nested.  Create bnd-maven-example2 Git repo.

branch with bnd-maven-plugin from http://njbartlett.name/2015/03/27/announcing-bnd-maven-plugin.html instead of maven-bundle-plugin; note pro/con

Bundle-SymbolicName automated from pom.xml.. how to with maven-bundle-plugin?  With bnd-maven-plugin see https://github.com/bndtools/bndtools/wiki/Changes-in-3.0.0#bnd-maven-plugin-changes POM properties can be used in the bnd.bnd file, e.g. "${project.groupId}.${project.artifactId}" BUT https://github.com/bndtools/bndtools/wiki/Changes-in-3.0.0#known-issues "The new feature of the bnd-maven-plugin to support POM properties in bnd files was broken just before release." ;)

git push osgi-bnd-maven-example

blog

conf sub? slides?

contribute a template? like https://github.com/bndtools/workspace but for Maven.

IFF fail, then eval. if ODL could NOT use bndtools BUT still use just Agent?  Problem will be JAR file build?  May be possible to use Project Output directory, but not sure this is a good idea... Note https://github.com/bndtools/bndtools/wiki/Changes-in-3.0.0: "use the built JAR file instead of the bin folder with version=latest. version=project uses the bin folder directly."

NOW LATE only look at specific Karaf in-IDE integration stuff.. It's low prio because external launch is fine? What's actually the minimum needed? https://groups.google.com/forum/#!topic/bndtools-users/7XPL3ooKDKs, http://karaf.922171.n3.nabble.com/Bndtools-amp-Karaf-the-right-way-td4043765.html

email list to figure out what in cnf/ can safely go on .gitignore on what not.. and contribute to template.  See also https://github.com/pkriens/org.openhab.binding/blob/master/cnf/.gitignore.  Why not e.g. cnf/templates/ ?? (NOTE org.bndtools.templates.osgi/org.bndtools.templates.osgi-3.2.0.jar, which certainly should not be in SCM)

PAX Exam how-to

OSGi Declarative Services Component

OSGi Blueprint Descriptor

Oomph model.. (Maven: how to e.g. get .project re-created in ./ and in conf/ ?)




https://github.com/bndtools/bndtools/wiki/JARs,-Bundles,-&-Packages

