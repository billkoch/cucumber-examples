package com.karbonsoftware.examples.cucumber;

import static org.junit.Assert.assertEquals;
import cuke4duke.annotation.I18n.EN.Given;
import cuke4duke.annotation.I18n.EN.Then;
import cuke4duke.annotation.I18n.EN.When;
import cuke4duke.spring.StepDefinitions;

@StepDefinitions
public class CalculatorSteps {

	// This could have the @Autowired Spring annotation to pull the bean
	// definition from cucumber.xml
	private Calculator calculator;

	private int actualSum;

	@Given("^I have a Calculator$")
	public void intializeCalculator() {
		this.calculator = new Calculator();
	}

	@When("^I add (-?\\d) and (-?\\d)$")
	public void whenIAddTwoNumbers(int firstNumber, int secondNumber) {
		this.actualSum = this.calculator.add(firstNumber, secondNumber);
	}

	@Then("^the sum should be (-?\\d)$")
	public void thenTheSumShouldBe(int expectedSum) {
		assertEquals("The expected sum does not equal the actual sum", expectedSum, this.actualSum);
	}
}
