/*
 * Author:        	Hirthik Mathavan
 * Reg. No.:      	18BCE2036
 * Name:        	Quesans.java
 * Purpose:       	Java class for FAQs
 * Class Used by:   FaqsDAO.java;
 * Classes Used:    -
 */

package javaservlet;

public class Quesans {

	String question;
	String answer;
	String creditcardquestion;
	String creditcardanswer;

	// Constructor
	public Quesans(String creditcardquestion, String creditcardanswer, boolean dummy) {
		super();

		this.creditcardquestion = creditcardquestion;
		this.creditcardanswer = creditcardanswer;

	}

	public Quesans(String question, String answer) {
		super();

		this.question = question;
		this.answer = answer;

	}

	// Getter Setter
	public String getCreditcardquestion() {
		return creditcardquestion;
	}

	public void setCreditcardquestion(String creditcardquestion) {
		this.creditcardquestion = creditcardquestion;
	}

	public String getCreditcardanswer() {
		return creditcardanswer;
	}

	public void setCreditcardanswer(String creditcardanswer) {
		this.creditcardanswer = creditcardanswer;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
