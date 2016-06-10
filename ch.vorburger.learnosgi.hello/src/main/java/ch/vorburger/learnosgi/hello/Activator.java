package ch.vorburger.learnosgi.hello;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator implements BundleActivator {

    public void start(BundleContext context) throws Exception {
        System.out.println("hallo");
    }

    public void stop(BundleContext context) throws Exception {
        System.out.println("bye");
    }

}
