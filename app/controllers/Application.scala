package controllers

import play.api.mvc._
import models.AppDB
import org.squeryl.PrimitiveTypeMode._

object Application extends Controller {

  def index = Action {
    val entries = inTransaction {
      from(AppDB.entries)(entries =>
        select(entries)
      ).toList
    }
    Ok(views.html.index(entries))
  }

}