Feature: Invite volunteers to a group 
   As a host of a group
   In order to maintain my list of volunteers and help coordinate event invitations
   I should be able to invite new and existing members to my group
   
TODO: admins can also send group invitations - document this
TODO: other members of a group can also send group invitations - document this
   
Invites can either be managed through the platform, or through discussion outside of the platform.

Invite via email address.

  - you can do this currently (for both existing members and new volunteers)
  - new volunteers (someone not already on the platform):
    - some issues raised around this, i.e. is it OK to send 'unsolicited' emails from restarters.net?
      - has to have been some communication already between host and new volunteer already (e.g. an email sign up at an event)
      - it is encumbent on the host to ensure this
  - existing members
    - currently you have to know the email address, ideally you should be able to invite by name (see below)

Invite via name.

  - not currently possible - you need to know the email address - we need to add name search in
  - this is only for volunteers that are already members of the platform
    - only search for people within a certain radius of the area of the group?
      - automatically show people within a certain radius?
    - if member has opted out of email notifications, we can create the invite in platform, but not send an email
      - pending the update to the notifications feature, the member will see a notification when logged in
    - if member has opted in to email notifications, invitation created and notification (in platform, and via email)
      - clicking on the link in the email will automatically add the member to the selected group

Invite manually.

We shouldn't expect all member/group associations to happen via the in-platform invitation process.  In some cases,
a member might sign up automatically to the group (see Join Group feature).  Or a host might just suggest to a new
volunteer - sign up at restarters.net and join our group there.  That would mean the new member would need to find
the group within the app once they've registered, and click Join Group - so we should provide clear instructions on
how to do that.  One way to streamline this could be to provide 'sign up links' that a host can personally email to
the volunteer, which when clicked will initiate the registration process, and automatically register the new member
to the group when completed.

Scenario: Permissions for group invitations
    Given I am a host of a group
    When I view the group actions
    Then I can see the 'Invite to group option'

Scenario: Inviting one new volunteer to group  
    Given I am a host of a group
    When I click the invite to group option
    And add the email address of a new volunteer
    And click the button to send the invitation
    Then the volunteer receives the email invitation

# TODO: the search for a member feature probably needs splitting off into its own feature
Scenario: Inviting existing member to group
    Given I am a host of a group
    When I click the invite to group option
    And search for an existing member of the group by name
    And click the button to send the invitation
    Then the member does is invited to the group
    Then and the member receive an email invitation

Scenario: Inviting existing member to group, opted out of email notifications
    Given I am a host of a group
    When I click the invite to group option
    And search for an existing member of the group who has opted out of email notifications
    And click the button to send the invitation
    Then the member does is invited to the group
    But the member does not receive an email notification
    And I am alerted to the fact that the member has opted out of email notifications
