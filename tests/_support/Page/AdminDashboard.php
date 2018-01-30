<?php
namespace Page;

class AdminDashboard
{
    public static $URL = '/admin/index';

    public static $allParticipantsStat = '#all-participants-value';
    public static $allHoursVolunteeredStat = '#all-hoursvolunteered-value';
    public static $allPartiesThrownStat = '#all-partiesthrown-value';
    public static $allWastePreventedStat = '#all-wasteprevented-value';
    public static $allCo2PreventedStat = '#all-co2prevented-value';

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
