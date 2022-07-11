package quickstart.action

import xitrum.Action
import xitrum.annotation.{GET, Swagger}



@GET("/api")
@Swagger(
Swagger.Summary("sample api"),
Swagger.IntPath("/api")
)
class ApiAction extends Action {
  override def execute(): Unit = {
    respondJson(List(1,2,3))
  }
}

