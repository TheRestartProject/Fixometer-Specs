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
     * @Given I have three fixed devices 
     *
     */
    public function iHaveThreeFixedDevices()
    {
	    // Define a set of test records to include three devices
	    $this->haveInDatabase('groups', array('idgroups' => '1000', 'name' => 'Foo HQ', 'location' => 'HQ'));
	    $this->haveInDatabase('events', array('idevents' => '2000', 'group' => '1000', 'event_date' => '2011-10-02', 'start' => '09:00:00', 'end' => '13:00:00', 'location' => 'Bar', 'latitude' => '51.5477', 'longitude' => '-0.163824'));
	    // Estimate must be provided as otherwise will default to null - this breaks the aggregation.
	    // TODO: Fix the aggregation in the devices model SQL statement to use ifnull(sum(...))
	    $this->haveInDatabase('devices', array('iddevices' => '10000', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10001', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10002', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
    }

    /**
     * @Given I have three events organised by three different groups
     */
    public function iHaveThreeEventsOrganisedByThreeDifferentGroups()
    {
	    $this->haveInDatabase('groups', array('idgroups' => '1000', 'name' => 'Foo HQ', 'location' => 'HQ'));
   	    $this->haveInDatabase('events', array('idevents' => '2000', 'group' => '1000', 'event_date' => '2011-10-02', 'start' => '09:00:00', 'end' => '13:00:00', 'location' => 'Bar', 'latitude' => '51.5477', 'longitude' => '-0.163824'));

	    $this->haveInDatabase('groups', array('idgroups' => '1001', 'name' => 'Foo North', 'location' => 'North'));
   	    $this->haveInDatabase('events', array('idevents' => '2001', 'group' => '1001', 'event_date' => '2011-10-03', 'start' => '10:00:00', 'end' => '14:00:00', 'location' => 'Bar North', 'latitude' => '50.5477', 'longitude' => '-0.163824'));

	    $this->haveInDatabase('groups', array('idgroups' => '1002', 'name' => 'Foo South', 'location' => 'South'));
	    $this->haveInDatabase('events', array('idevents' => '2002', 'group' => '1002', 'event_date' => '2011-10-04', 'start' => '11:00:00', 'end' => '15:00:00', 'location' => 'Bar South', 'latitude' => '52.5477', 'longitude' => '-0.163824'));
    }

    /**
     * @Given I have one medium laptop fixed at each event
     */
    public function iHaveOneMediumLaptopFixedAtEachEvent()
    {
	    $this->haveInDatabase('devices', array('iddevices' => '10000', 'event' => '2000', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10001', 'event' => '2001', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10002', 'event' => '2002', 'category' => 16, 'category_creation' => 16, 'repair_status' => 1, 'estimate' => ''));
    }

    /**
     * @Given I have one large laptop fixed at each event 
     */
    public function iHaveOneLargeLaptopFixedAtEachEvent()
    {
	    $this->haveInDatabase('devices', array('iddevices' => '10003', 'event' => '2000', 'category' => 15, 'category_creation' => 15, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10004', 'event' => '2001', 'category' => 15, 'category_creation' => 15, 'repair_status' => 1, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10005', 'event' => '2002', 'category' => 15, 'category_creation' => 15, 'repair_status' => 1, 'estimate' => ''));
    }

    /**
     * @Given I have one small laptop not fixed at each event 
     */
    public function iHaveOneSmallLaptopNotFixedAtEachEvent()
    {
	    $this->haveInDatabase('devices', array('iddevices' => '10006', 'event' => '2000', 'category' => 17, 'category_creation' => 17, 'repair_status' => 2, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10007', 'event' => '2001', 'category' => 17, 'category_creation' => 17, 'repair_status' => 2, 'estimate' => ''));
	    $this->haveInDatabase('devices', array('iddevices' => '10008', 'event' => '2002', 'category' => 17, 'category_creation' => 17, 'repair_status' => 2, 'estimate' => ''));
    }

    /**
      * @When I go to login page
      */
    public function iGoToLoginPage()
    {
        $this->amOnPage("/user/login");
    }

    /**
     * @When I go to the fixometer admin stats page
      */
    public function iGoToTheFixometerAdminStatsPage()
    {
        $this->amOnPage("/admin/stats/2");
    }

    /**
     * @Then I should see that total devices restarted is :num1
     */
    public function iShouldSeeThatTotalDevicesRestartedIs($num1)
    {
	    $pageId = $this->grabFromCurrentUrl();
	    ##file_put_contents("/tmp/codeception.debug.currentURL.log", $pageId);
	    switch ($pageId) {
	    case "/user/login":
		    // Note - the page construction looks wrong, why is span element a child of span element?
		    $itemPath = "//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Devices Restarted']]/span[@class='big-number']/span[@class='big-number']";
		    // Alternative approach:
		    // $this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Devices Restarted']]/span[@class='big-number']/span[@class='big-number'][text()='$num1']");
		    break;
	    case "/admin/stats/2":
		    // Not available on this page
		    PHPUnit_Framework_Assert::fail('"Devices Restarted" is not a valid observation on page ' . $pageId);
		    break;
	    }
	    $value = $this->grabTextFrom($itemPath);
	    $trimmed_value = trim($value);
	    PHPUnit_Framework_Assert::assertEquals($trimmed_value, $num1);
    }

    /**
     * @Then I should see that total waste prevented is :num1
     * Note - formatted text should be passed as input e.g. "5,306 kg" rather than 5306
     */
    public function iShouldSeeThatTotalWastePreventedIs($num1)
    {
	    $pageId = $this->grabFromCurrentUrl();
	    switch ($pageId) {
	    case "/user/login":
		    $itemPath = "//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Waste prevented']]/span[@class='big-number']";
		    #$value = $this->grabTextFrom("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Waste prevented']]/span[@class='big-number']");

		    // Alternative approach:
		    // $this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Waste prevented']]/span[@class='big-number'][text()='$num1']");
		    break;
	    case "/admin/stats/2":
		    $itemPath = "//section[@id='impact-dataviz']/div/span[@class='datalabel'][text()='Total waste prevented: ']/../span[@class='blue']";
		    ##$value = $this->grabTextFrom("//section[@id='impact-dataviz']/div/span[@class='datalabel'][text()='Total waste prevented: ']/../span[@class='blue']");
		    // strip leading and trailing spaces as the site is padding
		    break;
	    }
	    $value = $this->grabTextFrom($itemPath);
	    $trimmed_value = trim($value);
	    PHPUnit_Framework_Assert::assertEquals($trimmed_value, $num1);
    }


    /**
      * @Then I should see that total parties thrown is :expectedNumParties
      */
    public function iShouldSeeThatTotalPartiesThrownIs($expectedNumParties)
    {
	    $pageId = $this->grabFromCurrentUrl();
	    switch ($pageId) {
	    case "/user/login":
		    $itemPath = "//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Parties thrown']]/span[@class='big-number']";
		    // Alternative method
		    // $this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Parties thrown']]/span[@class='big-number'][text()='$expectedNumParties']");
		    break;
	    case "/admin/stats/2":
		    PHPUnit_Framework_Assert::fail('"Total Parties Thrown" is not a valid observation on page ' . $pageId);
		    break;
	    }
	    $value = $this->grabTextFrom($itemPath);
	    $trimmed_value = trim($value);
	    PHPUnit_Framework_Assert::assertEquals($expectedNumParties, $trimmed_value);
    }

}
