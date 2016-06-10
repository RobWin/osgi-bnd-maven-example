
bndtools-users, repo branch "maven_repos": Is it possible to avoid having to duplicate dependencies in pom.xml and only declare them in bnd.bnd -buildpath?

bnd.bnd -buildpath vs. pom.xml ?  Rm <dependencies> from pom.xml works in IDE, and solves double classpath container issue (below), but fails in mvn build :(

build.bnd ${build}/local & ${build}/release still needed? What for, if all in Maven?

How NOT to manually maintain central.mvn ?

____

merge /cnf/ext/base.bnd with /cnf/build.bnd

https://github.com/bndtools/bndtools/wiki/Changes-in-3.1.0#bnd-indexer-maven-plugin ?

slf4j dep

What is the <obrRepository>NONE</obrRepository> in https://github.com/cschneider/osgi-chat/blob/master/pom.xml good for?


Tests
-testpath: \
	osgi.enroute.junit.wrapper;version=4.12
junit why org.apache.servicemix.bundles.junit fixed in /cnf/build.bnd ?

Agent, with Karaf! https://github.com/osgi/osgi.enroute/tree/master/cnf/distro/biz.aQute.remote.agent and source on https://github.com/bndtools/bnd/tree/master/biz.aQute.remote

https://github.com/pkriens/org.openhab.binding/blob/master/cnf/build.bnd ?

src/main|test/resources how-to?!

Try to put project into sub-directory like in ODL.. note
http://enroute.osgi.org/tutorial_base/200-workspace.html "A bnd workspace is flat, the cnf directory and all project directories must reside in exactly the same parent directory, which is the workspace directory. Sorry, no exceptions."

M2E co-habitation?! Maven Dependencies Classpath container would disappear if there were no <dependencies> BUT the M2E Extension will not add the "Bnd Bundle Path" classpath container by itself; so TODO write M2E extension. (FYI: Complete uninstall M2E makes transition difficult and would remove useful Run As Maven launchers.  FYI Commiting .project/.classpath in git is, understandably, frowned up in ODL.)


git push osgi-bnd-maven-example




bndtools-users: JAR built by Maven built has Export-Package: ch.vorburger.learnosgi.hello despite Private-Package: ch.vorburger.learnosgi.hello in bnd.bnd ?!?  (The JAR built by bndtools and Gradle instead has not export)


https://groups.google.com/forum/#!topic/bndtools-users/6b7es7GOaQ0: conf not in WS with .metadata how to? Re-conf in new workspace after project move?  http://enroute.osgi.org/tutorial_base/200-workspace.html -- another disadvantage is also that you cannot create an Eclipse project to edit the files at the root (I mean e.g. README, .gitignore & Co.)

version ? pom.xml -VS- "Bundle-Version:1.0.0.${tstamp}" in bnd.bnd .. also mismatch in target/ JAR filename due to pom.xml <version> vs. (lack of) Bundle-Version in bnd.bnd; TODO make this in bnd.bnd work: Bundle-Version: ${project.version}

How to get in-IDE build by bndtools to correctly replace "Bundle-Name: ${project.groupId}.${project.artifactId}" in bnd, like mvn CLI build?




New BND OSGi project wizard

pom.xml at root, multi module

share bnd.bnd stuff between the 2 projects.  Classpath container? Close / re-open projects handled via workspace dependency resolution à la M2E?

share bnd.bnd stuff between separate repos how-to? Must be via Maven dependency not SCM URL.  Check out https://github.com/rkrzewski/bnd-multilevel-examples/tree/master/workspace-cnf-nested.  Create bnd-maven-example2 Git repo.

branch with bnd-maven-plugin from http://njbartlett.name/2015/03/27/announcing-bnd-maven-plugin.html instead of maven-bundle-plugin; note pro/con

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

branch gradle, and remove all gradle from master

test.sh should ideally somehow really integration test the OSGi bundle JAR it produced
