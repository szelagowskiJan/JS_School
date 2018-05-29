package pl.coderslab.entity;

import javax.persistence.Table;

//@Entity
@Table(name = "levels")
public class Level {

	 
	private String Basic_level;
	private String Junior_high_school;
	private String High_school;
	private String Technical;
	private String Studies;

	public Level(String Basic_level, String Junior_high_school, String High_school, String Technical, String Studies) {
		this.Basic_level = Basic_level;
		this.Junior_high_school = Junior_high_school;
		this.High_school = High_school;
		this.Technical = Technical;
		this.Studies = Studies;
	}

	public String getBasic_level() {
		return Basic_level;
	}

	public void setBasic_level(String basic_level) {
		Basic_level = basic_level;
	}

	public String getJunior_high_school() {
		return Junior_high_school;
	}

	public void setJunior_high_school(String junior_high_school) {
		Junior_high_school = junior_high_school;
	}

	public String getHigh_school() {
		return High_school;
	}

	public void setHigh_school(String high_school) {
		High_school = high_school;
	}

	public String getTechnical() {
		return Technical;
	}

	public void setTechnical(String technical) {
		Technical = technical;
	}

	public String getStudies() {
		return Studies;
	}

	public void setStudies(String studies) {
		Studies = studies;
	}

	@Override
	public String toString() {
		return "Level{" +
				"Basic_level='" + Basic_level + '\'' +
				", Junior_high_school='" + Junior_high_school + '\'' +
				", High_school='" + High_school + '\'' +
				", Technical='" + Technical + '\'' +
				", Studies='" + Studies + '\'' +
				'}';
	}
}