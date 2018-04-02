package pl.coderslab.dto;

public class PupilDTO {

	private String email;	
	private String name;
	private String numberPhone;
	private String comment;

	private String[] pupilsLevel;	


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumberPhone() {
		return numberPhone;
	}

	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String[] getPupilsLevel() {
		return pupilsLevel;
	}

	public void setPupilsLevel(String[] pupilsLevel) {
		this.pupilsLevel = pupilsLevel;
	}

	

}