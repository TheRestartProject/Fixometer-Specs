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
use Page\Login as LoginPage;
use Page\AdminDashboard as AdminDashboardPage;

class AcceptanceTester extends \Codeception\Actor
{
    use _generated\AcceptanceTesterActions;

   /**
    * Define custom actions here
    */
    public function repairOutcomeValueFromText($repairOutcomeText)
    {
        switch ($repairOutcomeText)
        {
        case "Fixed":
            return 1;
        case "Repairable":
            return 2;
        case "End-of-life":
            return 3;
        default:
            throw Exception("Unknown repair outcome text.  Should be one of 'Fixed', 'Repairable' or 'End-of-life'");
        }
    }

    /**
     * @Given the following user accounts have been created
     */
    public function theFollowingUserAccountHasBeenCreated(\Behat\Gherkin\Node\TableNode $users)
    {
        foreach ($users->getHash() as $index => $row)
        {
            $created_at = date('Y-m-d H:i:s', time());
            # TODO: secret needs to be defined somewhere else, common to tests and app.
            $password = crypt($row['Password'], '$1$' . strrev(md5('foobar')));
            $role_id = $this->grabFromDatabase('roles', 'idroles', array('role' => $row['Role']));

            $userData = array(
                'idusers' => $index,
                'name' => $row['Name'],
                'email' => $row['Email'],
                'password' => $password,
                'created_at' => $created_at,
                'role' => $role_id
            );
            $userId = $this->haveInDatabase('users', $userData);

            $session = 'noToken'.md5(substr(time(), -8));
            $created_at = date('Y-m-d H:i:s', time() );
            $this->haveInDatabase('sessions', array('session' => $session, 'user' => $userId, 'created_at' => $created_at));
        }
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
     * @Then I should see that total devices restarted is :expectedNumDevices
     */
    public function iShouldSeeThatTotalDevicesRestartedIs($expectedNumDevices)
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
	    PHPUnit_Framework_Assert::assertEquals($expectedNumDevices, $trimmed_value);
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
		    $itemSelector = "#parties-thrown-value";
		    // Alternative method
		    // $this->seeElement("//div[@class='detail-wrap']/div[@class='detail'][h4[text()='Parties thrown']]/span[@class='big-number'][text()='$expectedNumParties']");
		    break;
	    case "/admin/stats/2":
		    PHPUnit_Framework_Assert::fail('"Total Parties Thrown" is not a valid observation on page ' . $pageId);
		    break;
	    }
	    $value = $this->grabTextFrom($itemSelector);
	    $actualNumParties = trim($value);
	    PHPUnit_Framework_Assert::assertEquals($expectedNumParties, $actualNumParties);
    }


    /**
     * @Given the following groups:
     */
    public function theFollowingGroups(\Behat\Gherkin\Node\TableNode $groups)
    {
        foreach ($groups->getHash() as $index => $row)
        {
            $groupRow = array(
                'idgroups' => $row['id'],
                'name' => $row['name']
            );

            $this->haveInDatabase('groups', $groupRow);
        }
    }


    /**
     * @Given the following events:
     */
    public function theFollowingEvents(\Behat\Gherkin\Node\TableNode $events)
    {
        foreach ($events->getHash() as $index => $row)
        {
            $groupName = $row['group'];

            $groupId = $this->grabFromDatabase('groups', 'idgroups', array('name' => $groupName));
            $eventData = array(
                'idevents' => $row['id'],
                'venue' => $row['venue'],
                'group' => $groupId
            );
            if (isset($row['participants']) && $row['participants'] != '')
                $eventData['pax'] = $row['participants'];
            if (isset($row['volunteers']) && $row['volunteers'] != '')
                $eventData['volunteers'] = $row['volunteers'];

            $this->haveInDatabase('events', $eventData);
        }
    }

    /**
     * @Given the following devices at the :eventName event:
     */
    public function theFollowingDevicesAtTheEvent($eventName, \Behat\Gherkin\Node\TableNode $devices)
    {
        foreach ($devices->getHash() as $index => $row)
        {
            $categoryName = $row['Category'];
            $categoryId = $this->grabFromDatabase('categories', 'idcategories', array('name' => $categoryName));

            $eventId = $this->grabFromDatabase('events', 'idevents', array('venue' => $eventName));

            $deviceRow = array(
                //'iddevices' => $index+1,
                'category' => $categoryId, 
                'category_creation' => $categoryId,
                'repair_status' => $this->repairOutcomeValueFromText($row['Repair Outcome']),
                'event' => $eventId
            );
            if (isset($row['Estimate']) && $row['Estimate'] != '')
                $deviceRow['estimate'] = $row['Estimate'];

            $this->haveInDatabase('devices', $deviceRow);
        }
    }


    /**
     * @When I view the headline stats for the :eventName event
     */
    public function iViewTheHeadlineStatsForTheEvent($eventName)
    {
        $eventId = $this->grabFromDatabase('events', 'idevents', array('venue' => $eventName));
        $this->amOnPage('/party/stats/'.$eventId);
    }

    /**
     * @Then the CO2 diverted should be :expectedCo2Diverted
     */
    public function theCO2DivertedShouldBe($expectedCo2Diverted)
    {
        $actualCo2Diverted = $this->grabTextFrom('#co2-diverted-value');
        PHPUnit_Framework_Assert::assertEquals($expectedCo2Diverted, $actualCo2Diverted);
    }

    /**
     * @Then the ewaste diverted should be :expectedEwasteDiverted
     */
    public function theEwasteDivertedShouldBe($expectedEwasteDiverted)
    {
        $actualEwasteDiverted = $this->grabTextFrom('#ewaste-diverted-value');

        PHPUnit_Framework_Assert::assertEquals($expectedEwasteDiverted, $actualEwasteDiverted);
    }


    /**
     * @Then the estimated CO2 per kilo of device for misc devices should be :estimate
     */
    public function theEstimatedCo2PerKiloOfDeviceForMiscDevicesShouldBe($estimate)
    {
        $actualValue = $this->grabFromDatabase('view_waste_emission_ratio', 'Ratio');
        $to4SignificantFigures = number_format($actualValue, 4);

        PHPUnit_Framework_Assert::assertEquals($estimate, $to4SignificantFigures);
    }

    /**
     * @Given :userName has logged in with email :email and password :password
     */
    public function userHasLoggedInWithEmailAndPassword($userName, $email, $password)
    {
        $this->amOnPage('/');
        $this->submitForm('#login', [
            'email' => $email,
            'password' => $password,
        ]);
    }

    /**
     * @When :userName views their Admin Dashboard
     */
    public function viewsTheirAdminDashboard($userName)
    {
        $this->amOnPage('/admin');
    }

    /**
     * @Then the stats in the party list for the :partyName party are:
     */
    public function theStatsInThePartyListForThePartyAre($partyName, \Behat\Gherkin\Node\TableNode $stats)
    {
        $statsRow = $stats->getHash()[0];

        $partyId = $this->grabFromDatabase('events', 'idevents', array('venue' => $partyName));

        $actualParticipants = $this->grabTextFrom('#party-'.$partyId.'-participants');
        $actualVolunteers = $this->grabTextFrom('#party-'.$partyId.'-volunteers');
        $actualCo2 = $this->grabTextFrom('#party-'.$partyId.'-co2-value');
        $actualFixed = $this->grabTextFrom('#party-'.$partyId.'-fixed');
        $actualRepairable = $this->grabTextFrom('#party-'.$partyId.'-repairable');
        $actualEndoflife = $this->grabTextFrom('#party-'.$partyId.'-dead');

        PHPUnit_Framework_Assert::assertEquals($statsRow['Participants'], $actualParticipants);
        PHPUnit_Framework_Assert::assertEquals($statsRow['Restarters'], $actualVolunteers);
        PHPUnit_Framework_Assert::assertEquals($statsRow['CO2'], $actualCo2);
        PHPUnit_Framework_Assert::assertEquals($statsRow['Fixed'], $actualFixed);
        PHPUnit_Framework_Assert::assertEquals($statsRow['Repairable'], $actualRepairable);
        PHPUnit_Framework_Assert::assertEquals($statsRow['End-of-life'], $actualEndoflife);
    }

    /**
     * @Then the stats from the API for the homepage should be:
     */
    public function theStatsFromTheApiForTheHomepageShouldBe(\Behat\Gherkin\Node\TableNode $stats)
    {
        $statsRow = $stats->getHash()[0];

        $this->amOnPage('/api/homepage_data');
        // Can't use REST module with WebDriver module, so grabbing raw response text...
        $source = $this->grabPageSource();
        $json = json_decode($source);
        $this->pauseExecution();
        $this->assertEquals($statsRow['Hours Volunteered'], $json->hours_volunteered);
        $this->assertEquals($statsRow['Items Fixed'], $json->items_fixed);
        $this->assertEquals($statsRow['Ewaste Diverted'], $json->weights);
    }


    /**
     * @Then the total headline stats are:
     */
    public function theTotalHeadlineStatsAre(\Behat\Gherkin\Node\TableNode $stats)
    {
        $I = $this;

        $statsRow = $stats->getHash()[0];

        $I->amOnPage(AdminDashboardPage::$URL);

        $I->assertEquals($statsRow['Participants'], $I->grabTextFrom(AdminDashboardPage::$allParticipantsStat));
        $I->assertEquals($statsRow['Hours Volunteered'], $I->grabTextFrom(AdminDashboardPage::$allHoursVolunteeredStat));
        $I->assertEquals($statsRow['Parties Thrown'], $I->grabTextFrom(AdminDashboardPage::$allPartiesThrownStat));
        $I->assertEquals($statsRow['Waste Prevented'], $I->grabTextFrom(AdminDashboardPage::$allWastePreventedStat));
        $I->assertEquals($statsRow['CO2 Emission Prevented'], $I->grabTextFrom(AdminDashboardPage::$allCo2PreventedStat));
    }


    /**
     * @When we produce a spreadsheet of all stats
     */
    public function produceASpreadsheetOfAllStats()
    {
        $I = $this;

        $I->amOnPage("/admin/stats/1"); // TODO
        $I->amOnPage("/admin/stats/2"); // TODO

        $I->amOnPage(LoginPage::$URL);

        $stats['login']['devices_restarted'] = $I->grabTextFrom(LoginPage::$devicesRestartedStat);
        $stats['login']['co2_prevented'] = $I->grabTextFrom(LoginPage::$partiesThrownStat);
        $stats['login']['waste_prevented'] = $I->grabTextFrom(LoginPage::$wastePreventedStat);
        $stats['login']['parties_thrown'] = $I->grabTextFrom(LoginPage::$partiesThrownStat);

        $I->submitForm(LoginPage::$loginForm, [
            'email' => 'devadmin@foo.com',
            'password' => 'adm1n'
        ]);

        $I->amOnPage(AdminDashboardPage::$URL);
        $I->see('Admin Console');
        $stats['admin_dash']['headline']['participants'] = $I->grabTextFrom(AdminDashboardPage::$allParticipantsStat);
        $stats['admin_dash']['headline']['hours_volunteered'] = $I->grabTextFrom(AdminDashboardPage::$allHoursVolunteeredStat);
        $stats['admin_dash']['headline']['parties_thrown'] = $I->grabTextFrom(AdminDashboardPage::$allPartiesThrown);
        $stats['admin_dash']['headline']['waste_prevented'] = $I->grabTextFrom(AdminDashboardPage::$allWastePrevented);
        $stats['admin_dash']['headline']['co2_prevented'] = $I->grabTextFrom(AdminDashboardPage::$allCo2Prevented);

        $parties = $I->findElements('.party-with-data');//$I->getModule('WebDriver')->_findElements('.party-with-data');
        foreach ($parties as $party)
        {
            $partyName = $party->findElement(WebDriverBy::className('location'))->getText();
            $participantsValue = $party->findElement(WebDriverBy::className('location'))->getText();
            $stats['admin_dash']['parties'][$partyName] = 'foo';
        }

        yaml_emit_file('stats.yml', $stats);
    }
}
