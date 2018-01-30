<?php
namespace Page;

class Login
{
    public static $URL = '/user/login';

    public static $devicesRestartedStat = '#devices-restarted-value';
    public static $co2PreventedStat = '#co2-prevented-value';
    public static $wastePreventedStat = '#waste-prevented-value';
    public static $partiesThrownStat = '#parties-thrown-value';

    public static $loginForm = "#login";
    public static $emailField = '#email';
    public static $passwordField = '#password';

    /**
     * Basic route example for your current URL
     * You can append any additional parameter to URL
     * and use it in tests like: Page\Edit::route('/123-post');
     */
    public static function route($param)
    {
        return static::$URL.$param;
    }


}
