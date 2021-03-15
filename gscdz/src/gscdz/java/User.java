package gscdz.java;

public class User {
	private int id;
	private String uername;
	private String password;
	private String occupation;
	private int solvedQuestionNumber;
	private String concerningProblems;
	private String cuoTiji;
	public User(int id, int solvedQuestionNumber, String uername, String password, String occupation,
			String concerningProblems,String cuoTiJi) {
		super();
		this.id = id;
		this.solvedQuestionNumber = solvedQuestionNumber;
		this.uername = uername;
		this.password = password;
		this.occupation = occupation;
		this.concerningProblems = concerningProblems;
		this.cuoTiji=cuoTiJi;
	}
	
	public User() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUername() {
		return uername;
	}
	public void setUername(String uername) {
		this.uername = uername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public int getSolvedQuestionNumber() {
		return solvedQuestionNumber;
	}
	public void setSolvedQuestionNumber(int solvedQuestionNumber) {
		this.solvedQuestionNumber = solvedQuestionNumber;
	}
	public String getConcerningProblems() {
		return concerningProblems;
	}
	public void setConcerningProblems(String concerningProblems) {
		this.concerningProblems = concerningProblems;
	}
	public String getCuoTiji() {
		return cuoTiji;
	}
	public void setCuoTiji(String cuoTiji) {
		this.cuoTiji = cuoTiji;
	}
	

	

}

