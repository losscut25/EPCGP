package reservation.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.Reservation_DAO;
import reservation.Reservation_DTO;

@WebServlet("/reservation.do")
public class ReservationServlet extends HttpServlet {
	
	private Reservation_DAO reservationDAO = new Reservation_DAO();
       
    public ReservationServlet() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/reservation.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reservation_no = Integer.parseInt(request.getParameter("reservation_no"));
		String member_id = request.getParameter("member_id");
		int exhibition_no = Integer.parseInt(request.getParameter("exhibition_no"));
		int price_no = Integer.parseInt(request.getParameter("price_no"));
		String address = request.getParameter("address");
		
		Reservation_DTO reservation = new Reservation_DTO();
		reservation.setReservation_no(reservation_no);
		reservation.setMember_id(member_id);
		reservation.setExhibition_no(exhibition_no);
		reservation.setPrice_no(price_no);
		reservation.setAddress(address);
		 
		try {
			reservationDAO.saveReservation(reservation);
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/payment.do");
		dispatcher.forward(request, response);
	}

}
