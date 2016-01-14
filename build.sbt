lazy val root = (project in file(".")).
	settings(
		organization := "com.ipin",
		name := "vector_search_gen_java",
		version := "0.1.1-SNAPSHOT",
		scalaVersion := "2.10.4",
		crossPaths := false,
		autoScalaLibrary := false,
		libraryDependencies ++= Seq(
			"org.apache.thrift" % "libthrift" % "0.9.2",
      "com.ipin" % "common_gen_java" % "0.1.3-SNAPSHOT"
		)
	)
