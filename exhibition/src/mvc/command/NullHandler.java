package mvc.command;

<<<<<<< HEAD

=======
>>>>>>> hyeji
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullHandler implements CommandHandler {

	@Override
<<<<<<< HEAD
	   public String process(HttpServletRequest request, 
	         HttpServletResponse response)
	   throws Exception {
	      response.sendError(HttpServletResponse.SC_NOT_FOUND);
	      return null;
	   }
=======
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.sendError(HttpServletResponse.SC_NOT_FOUND);
		return null;
	}

	
>>>>>>> hyeji
}
