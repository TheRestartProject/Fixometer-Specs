<?php
namespace Helper;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

class Acceptance extends \Codeception\Module
{
    public function findElements($selector)
    {
        return $this->getModule('WebDriver')->_findElements($selector);
    }

    public function grabPageSource()
    {
        $url = $this->getModule('WebDriver')->_getUrl();
        $uri = $this->getModule('WebDriver')->_getCurrentUri();

        $address = substr($url, 0, -1) . $uri;

        return file_get_contents($address);
    }
}
