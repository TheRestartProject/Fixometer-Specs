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
class AcceptanceTester extends \Codeception\Actor
{
    use _generated\AcceptanceTesterActions;

   /**
    * Define custom actions here
    */

    /**
     * @Given the following user account has been created
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
}
