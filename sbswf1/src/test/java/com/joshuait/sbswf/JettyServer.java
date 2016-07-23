package com.joshuait.sbswf;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.webapp.Configuration;
import org.eclipse.jetty.webapp.WebAppClassLoader;
import org.eclipse.jetty.webapp.WebAppContext;
/**
 * 
 * 开发阶段使用Jetty运行调试Web应用, 输入回车快速重新加载应用。
 * 
 * @author Peter
 * @date 2016-06-30 12:18
 * @company joshuait.com
 * 
 */
public class JettyServer {
	private static final String WEBAPP_DIR = "src/main/webapp";
	private static final String CONTEXTPATH = "/";
	private static final Integer PORT = 8080;

	public static void main(String[] args) {
		Server server = new Server();
		// 设置在JVM退出时关闭Jetty。
		// If true, this server instance will be explicitly stopped when the JVM is shutdown. 
		// Otherwise the JVM is stopped with the server running.
		server.setStopAtShutdown(true);
		
		
		ServerConnector connector = new ServerConnector(server);
		connector.setPort(PORT);
		// 设置在JVM退出时关闭Jetty。解决Windows下重复启动Jetty居然不报告端口冲突的问题。
		connector.setReuseAddress(false);
        server.setConnectors(new Connector[] { connector });

		WebAppContext webapp = new WebAppContext(WEBAPP_DIR, CONTEXTPATH);
		
		// This webapp will use jsps and jstl. We need to enable the
        // AnnotationConfiguration in order to correctly
        // set up the jsp container
        Configuration.ClassList classlist = Configuration.ClassList
                .setServerDefault( server );
        classlist.addBefore(
                "org.eclipse.jetty.webapp.JettyWebXmlConfiguration",
                "org.eclipse.jetty.annotations.AnnotationConfiguration" );
 
        // Set the ContainerIncludeJarPattern so that jetty examines these
        // container-path jars for tlds, web-fragments etc.
        // If you omit the jar that contains the jstl .tlds, the jsp engine will
        // scan for them instead.
        webapp.setAttribute(
                "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern",
                ".*/[^/]*servlet-api-[^/]*\\.jar$|.*/javax.servlet.jsp.jstl-.*\\.jar$|.*/[^/]*taglibs.*\\.jar$" );
		
        server.setHandler(webapp);
		try {
			server.start();
//			server.join();

			System.out.println("[INFO] 应用已经启动，使用浏览器访问    http://localhost:" + PORT + CONTEXTPATH);
			System.out.println("[HINT] 按回车键重新加载应用");

			// 等待用户输入回车重载应用.
			while (true) {
				char c = (char) System.in.read();
				if (c == '\n') {
					System.out.println("[INFO] 正在重新加载...");
					webapp.stop();

					WebAppClassLoader classLoader = new WebAppClassLoader(webapp);
					classLoader.addClassPath("target/classes");
					classLoader.addClassPath("target/test-classes");
					webapp.setClassLoader(classLoader);

					webapp.start();

					System.out.println("[INFO] 重新加载完成。");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(-1);
		}
	}

}
