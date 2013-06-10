import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName         = "blog-db-evolution-git-example"
  val appVersion      = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    "org.squeryl" %% "squeryl" % "0.9.5-6",
    "postgresql" % "postgresql" % "9.1-901.jdbc3",
    jdbc,
    anorm
  )


  val main = play.Project(appName, appVersion, appDependencies).settings(
    // Add your own project settings here      
  )

}
