package mvc.command;
//모든 명령어 핸들러가 동일 인터페이스를 상속받아 구현하는 형태의 클래스

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
  public String process(HttpServletRequest req, HttpServletResponse res)
  throws Exception;
}
