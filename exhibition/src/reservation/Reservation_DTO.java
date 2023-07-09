package reservation;

public class Reservation_DTO {
	private int reservation_no;
	private String member_id;
	private int exhibition_no;
	private int price_no;
	private String address;
	
	
	public Reservation_DTO() {
		
	}
	public Reservation_DTO(int reservation_no, String member_id, int exhibition_no, int price_no, String address) {
		this.reservation_no = reservation_no;
		this.member_id = member_id;
		this.exhibition_no = exhibition_no;
		this.price_no = price_no;
		this.address = address;
	}
	public int getReservation_no() {
		return reservation_no;
	}
	public void setReservation_no(int reservation_no) {
		this.reservation_no = reservation_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getExhibition_no() {
		return exhibition_no;
	}
	public void setExhibition_no(int exhibition_no) {
		this.exhibition_no = exhibition_no;
	}
	public int getPrice_no() {
		return price_no;
	}
	public void setPrice_no(int price_no) {
		this.price_no = price_no;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
