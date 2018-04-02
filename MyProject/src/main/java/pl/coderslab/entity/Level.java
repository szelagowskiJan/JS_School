package pl.coderslab.entity;

import javax.persistence.Table;

//@Entity
@Table(name = "levels")
public class Level {

	 
	private String podstawowy;
	private String gimnazjalny;
	private String licealny;
	private String techniczny;
	private String wyższy;

	public Level(String podstawowy, String gimnazjalny, String licealny, String techniczny, String wyższy) {
		this.podstawowy = podstawowy;
		this.gimnazjalny = gimnazjalny;
		this.licealny = licealny;
		this.techniczny = techniczny;
		this.wyższy = wyższy;
	}

	public String getPodstawowy() {
		return podstawowy;
	}

	public void setPodstawowy(String podstawowy) {
		this.podstawowy = podstawowy;
	}

	public String getGimnazjalny() {
		return gimnazjalny;
	}

	public void setGimnazjalny(String gimnazjalny) {
		this.gimnazjalny = gimnazjalny;
	}

	public String getLicealny() {
		return licealny;
	}

	public void setLicealny(String licealny) {
		this.licealny = licealny;
	}

	public String getTechniczny() {
		return techniczny;
	}

	public void setTechniczny(String techniczny) {
		this.techniczny = techniczny;
	}

	public String getWyższy() {
		return wyższy;
	}

	public void setWyższy(String wyższy) {
		this.wyższy = wyższy;
	}

	@Override
	public String toString() {
		return "Level [podstawowy=" + podstawowy + ", gimnazjalny=" + gimnazjalny + ", licealny=" + licealny
				+ ", techniczny=" + techniczny + ", wyższy=" + wyższy + "]";
	}

}