
bndtools-users: conf not in WS with .metadata how to? Re-conf in new workspace after project move?

close tabs

can run using PDE ?

email read

test Gradle build

branch gradle, and remove all gradle from master

pom.xml reading bnd.bnd

bndrun ?

Agent! https://github.com/bndtools/bnd/tree/master/biz.aQute.remote

src/test how-to? Needs to be on classpath, but not in JAR...

M2E co-habitation? Maven Dependencies Classpath container OK?

New BND OSGi project wizard

pom.xml at root, multi module

share bnd.bnd stuff between the 2 projects.  Classpath container? Close / re-open projects handled via workspace dependency resolution à la M2E?

share bnd.bnd stuff between separate repos how-to? Must be via Maven dependency not SCM URL.  Create bnd-maven-example2 Git repo.

branch with bnd-maven-plugin from http://njbartlett.name/2015/03/27/announcing-bnd-maven-plugin.html instead of maven-bundle-plugin; note pro/con

Bundle-SymbolicName automated from pom.xml.. how to with maven-bundle-plugin?  With bnd-maven-plugin see https://github.com/bndtools/bndtools/wiki/Changes-in-3.0.0#bnd-maven-plugin-changes POM properties can be used in the bnd.bnd file, e.g. "${project.groupId}.${project.artifactId}" BUT https://github.com/bndtools/bndtools/wiki/Changes-in-3.0.0#known-issues "The new feature of the bnd-maven-plugin to support POM properties in bnd files was broken just before release." ;)

conf sub? slides?

NOW LATE only look at Karaf specific integration stuff.. what's actually the minimum needed? https://groups.google.com/forum/#!topic/bndtools-users/7XPL3ooKDKs

email list to figure out what in cnf/ can safely go on .gitignore on what not.. e.g. cnf/templates/ ?? (NOTE org.bndtools.templates.osgi/org.bndtools.templates.osgi-3.2.0.jar, which certainly should not be in SCM)

PAX Exam how-to

OSGi Declarative Services Component

OSGi Blueprint Descriptor

Oomph model.. (Maven: how to e.g. get .project re-created in ./ and in conf/ ?)
