package quickstart.action

import org.scalatest.funsuite._


class ApiActionTest extends AnyFunSuite{


  test("GET /api on ApiAction should return status 200") {
    get("/api") {
      status should equal(200)
    }
  }
}
