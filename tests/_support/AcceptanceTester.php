<?php


/**
 * Inherited Methods
 * @method void wantToTest($text)
 * @method void wantTo($text)
 * @method void execute($callable)
 * @method void expectTo($prediction)
 * @method void expect($prediction)
 * @method void amGoingTo($argumentation)
 * @method void am($role)
 * @method void lookForwardTo($achieveValue)
 * @method void comment($description)
 * @method \Codeception\Lib\Friend haveFriend($name, $actorClass = NULL)
 *
 * @SuppressWarnings(PHPMD)
*/
use \Codeception\Util\Locator;

class AcceptanceTester extends \Codeception\Actor
{
    use _generated\AcceptanceTesterActions;

   /**
    * Define custom actions here
    */

    /**
     * @Given the following user accounts have been created
     */
    public function theFollowingUserAccountHasBeenCreated()
    {
        //throw new \Codeception\Exception\Incomplete("Step `the following user account has been created` is not defined");
    }

    /**
     * @When a user logs in with email :email and password :password
     */
     public function aUserLogsInWithEmailAndPassword($email, $password)
     {
         $this->amOnPage('/');
         $this->submitForm('#login', [
            'email' => $email,
            'password' => $password,
         ]);
     }

    /**
     * @Then the user is logged in as :name with email :email
     */
    public function theUserIsAuthenticatedAs($name, $email)
    {
         $this->see('Welcome, ' . $name);
    }

    /**
     * @Then the user is not logged in
     */
    public function theUserIsNotLoggedIn()
    {
         $this->seeInTitle('Login');
    }

    /**
     * @Then a message is displayed to the user letting them know they have not been logged in
     */
    public function aMessageIsDisplayedToTheUserLettingThemKnowTheyHaveNotBeenLoggedIn()
    {
         $this->see('No user account was found for the email and password provided. Please check your details and try again.');
    }

    /**
     * @Then the user is taken to the Administrator Dashboard
     */
    public function theUserIsTakenToTheAdministratorDashboard()
    {
        $this->seeInTitle('Administrator Dashboard');
    }

    /**
     * @Then the user is taken to the Host Dashboard
     */
    public function theUserIsTakenToTheHostDashboard()
    {
        $this->seeInTitle('Host Dashboard');
    }

    /**
      * @Given I am not logged in
      */
    public function iAmNotLoggedIn()
    {
        //throw new \Codeception\Exception\Incomplete("Step `I am not logged in` is not defined");
	    //TODO: Define 
	    //
    }

    /** 
     * @Given I have three fixed devices in the database
     *
     */
    public function iHaveThreeFixedDevicesInTheDatabase()
    {
	    // Define a set of test records to include three devices
	    $this->haveInDatabase('groups', array('idgroups' => '1000', 'name' => 'Foo HQ', 'location' => 'HQ'));
	    $this->haveInDatabase('events', array('idevents' => '2000', 'group' => '1000', 'event_date' => '2011-10-02', 'start' => '09:00:00', 'end' => '13:00:00', 'location' => 'Bar', 'latitude' => '51.5477', 'longitude' => '-0.163824'));
	    /* Not needed 
		    $this->haveInDatabase('users', array('idusers' => '3000', 'email' => 'foo@foo', 'name' => 'foo', 'password' => 'bar'));
	     */
	    // Estimate must be provided as otherwise will default to null - this breaks the aggregation.
	    // TODO: Fix the aggregation in the devices model SQL statement to use ifnull(sum(...))
	    $this->haveInDatabase('devices', array('iddevices' => '10000', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10001', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10002', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
    }

    /**
      * @When I go to login page
      */
    public function iGoToLoginPage()
    {
        $this->amOnPage("/user/login");
    }

    /**
     * @Then I should see that total devices restarted is :num1
     */
    public function iShouldSeeThatTotalDevicesRestartedIs($num1)
    {
        // Note - the page construction looks wrong, why is span element a child of span element?
	$this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Devices Restarted']]/span[@class='big-number']/span[@class='big-number'][text()='$num1']");
    }

    /**
     * @Then I should see that total waste prevented is :num1
     * Note - formatted text should be passed as input e.g. "5,306 kg" rather than 5306
     */
    public function iShouldSeeThatTotalWastePreventedIs($num1)
    {
	$this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Waste prevented']]/span[@class='big-number'][text()='$num1']");

    }
}
