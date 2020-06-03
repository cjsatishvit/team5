/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	Ratingfeedback.java
 * Purpose:       	Java class for feedback rating.
 * Class Used by:   InsertDatacreditcard.java, InsertDatagoldloan.java;
 * Classes Used:    -
 */

package javaservlet;

public class FEEDBACK {
	int glfeedbackid;
	int glrating;

	int clfeedbackid;
	int clrating;

	// Constructor
	public FEEDBACK(int clfeedbackid, int clrating, boolean dummy) {
		super();

		this.clfeedbackid = clfeedbackid;
		this.clrating = clrating;
	}

	public FEEDBACK(int glfeedbackid, int glrating) {
		super();
		this.glfeedbackid = glfeedbackid;
		this.glrating = glrating;
	}

	// Getter Setter
	public int getClfeedbackid() {
		return clfeedbackid;
	}

	public void setClfeedbackid(int clfeedbackid) {
		this.clfeedbackid = clfeedbackid;
	}

	public int getClrating() {
		return clrating;
	}

	public void setClrating(int clrating) {
		this.clrating = clrating;
	}

	public int getGlfeedbackid() {
		return glfeedbackid;
	}

	public void setGlfeedbackid(int glfeedbackid) {
		this.glfeedbackid = glfeedbackid;
	}

	public int getGlrating() {
		return glrating;
	}

	public void setGlrating(int glrating) {
		this.glrating = glrating;
	}

}
