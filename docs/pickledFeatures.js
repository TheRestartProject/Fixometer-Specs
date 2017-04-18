jsonPWrapper ({
  "Features": [
    {
      "RelativeFolder": "7-Wordpress-Module/Upcoming Parties.feature",
      "Feature": {
        "Name": "Upcoming Parties",
        "Description": "A list of upcoming parties.\n\nThey should display until the end time of the party.\n\nHow many should be listed - all future ones?",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "5-Reporting/Hours Volunteered.feature",
      "Feature": {
        "Name": "Hours volunteered",
        "Description": "We provide stats on the hours volunteered at events.\n\nIf there is no figure recorded for the number of volunteers at\nthe party, then we assume 12 hours volunteered total by Restarters as a default.\nIf we do have recorded how many volunteers at the party, then we add 3 hours for\neach volunteer.\n\nIn addition to this, we add 9 hours on for the overall time volunteered by\nthe party host.\n\nTODO: should we calculate the hours volunteered based on the length of the\nparty?  At present, Restart parties are always 3 hours long, but we may need\nto be more flexible witht this.",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "5-Reporting/Impact Analysis.feature",
      "Feature": {
        "Name": "Group Impact Analysis",
        "Description": "    As a Host\n    In order to be able to showcase the work of my Group\n    I want to see an impact analysis of my Group's Events\n\nGroup hosts are able to get reports about the impact of individual Restart\nParties: total of waste prevented (kg), CO2 emissions prevented (kg), hours\nvolunteered.\n\nGroup hosts are also able to get an an aggregate total of all waste\nprevented (kg), CO2 emissions prevented (kg), hours volunteered for the\nentirety of their group’s events.\n\nTODO: Add larger dataset test and checking the algorithms.",
        "FeatureElements": [
          {
            "Name": "Impact analysis for event",
            "Slug": "impact-analysis-for-event",
            "Description": "",
            "Steps": [
              {
                "Keyword": "Given",
                "NativeKeyword": "Given ",
                "Name": "the following devices logged for the 'Homerton Library' event:",
                "TableArgument": {
                  "HeaderRow": [
                    "Id",
                    "Category",
                    "Comment",
                    "Brand",
                    "Model",
                    "Repair Status",
                    "Spare Parts?"
                  ],
                  "DataRows": [
                    [
                      "1",
                      "Laptop medium",
                      "Needs new screen",
                      "Apple",
                      "Mac Air",
                      "Repairable",
                      "Yes"
                    ]
                  ]
                },
                "StepComments": [],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "When",
                "NativeKeyword": "When ",
                "Name": "viewing the stats for the 'Homerton Library' event",
                "StepComments": [],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "Then",
                "NativeKeyword": "Then ",
                "Name": "the stats should be:",
                "TableArgument": {
                  "HeaderRow": [
                    "Participants",
                    "Restarters",
                    "CO2 Emissions Prevented",
                    "Fixed",
                    "Repairable",
                    "Dead"
                  ],
                  "DataRows": [
                    [
                      "35",
                      "5",
                      "914kg",
                      "12",
                      "21",
                      "5"
                    ]
                  ]
                },
                "StepComments": [],
                "AfterLastStepComments": []
              }
            ],
            "Tags": [],
            "Result": {
              "WasExecuted": false,
              "WasSuccessful": false
            }
          },
          {
            "Name": "Impact analysis for group",
            "Slug": "impact-analysis-for-group",
            "Description": "",
            "Steps": [
              {
                "Keyword": "When",
                "NativeKeyword": "When ",
                "Name": "viewing the stats for the '' group",
                "StepComments": [],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "Then",
                "NativeKeyword": "Then ",
                "Name": "the stats should be:",
                "StepComments": [],
                "AfterLastStepComments": []
              }
            ],
            "Tags": [],
            "Result": {
              "WasExecuted": false,
              "WasSuccessful": false
            }
          }
        ],
        "Background": {
          "Name": "",
          "Description": "",
          "Steps": [
            {
              "Keyword": "Given",
              "NativeKeyword": "Given ",
              "Name": "the following groups:",
              "TableArgument": {
                "HeaderRow": [
                  "Id",
                  "Name"
                ],
                "DataRows": [
                  [
                    "1",
                    "Hackney Fixers"
                  ]
                ]
              },
              "StepComments": [],
              "AfterLastStepComments": []
            },
            {
              "Keyword": "And",
              "NativeKeyword": "And ",
              "Name": "the following events:",
              "TableArgument": {
                "HeaderRow": [
                  "Id",
                  "Location",
                  "Date"
                ],
                "DataRows": [
                  [
                    "1",
                    "The Redmond Centre, Manor House",
                    "28/01/2017"
                  ],
                  [
                    "2",
                    "Homerton Library",
                    "19/11/2016"
                  ]
                ]
              },
              "StepComments": [],
              "AfterLastStepComments": []
            }
          ],
          "Tags": [],
          "Result": {
            "WasExecuted": false,
            "WasSuccessful": false
          }
        },
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "4-Events/TrackImpact.feature",
      "Feature": {
        "Name": "Track Impact",
        "Description": "- summary of groups impact\n- data visualisations",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "4-Events/EditHistoricEvent.feature",
      "Feature": {
        "Name": "Edit Historic Event",
        "Description": "",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "4-Events/EditEvent.feature",
      "Feature": {
        "Name": "Edit Event",
        "Description": "Add Device\n\n- Category\n- Comment\n- Brand/Model\n- Repair Status\n- Spare parts?\n\n- Estimate weight for none of the above",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "4-Events/Create Event.feature",
      "Feature": {
        "Name": "Create events",
        "Description": "Notes: In the absence of the Restarter role functionality being\nin place, new events are currently created with a default\nvolunteer.",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "3-Groups/EditGroupProfile.feature",
      "Feature": {
        "Name": "Edit Group Profile",
        "Description": "- Name\n- Description\n- Location\n- Geocode link\n- Location on map\n- Group Avatar\n- Reset/Save",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "2-UserAccounts/05 UserTypes.feature",
      "Feature": {
        "Name": "User Types",
        "Description": "Admin\n: Admin...\n\nHost\n: A Host can create events and edit the information recorded at an event.\nA Host can currently be associated with only one event?",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "2-UserAccounts/03 EditProfile.feature",
      "Feature": {
        "Name": "Edit Basic User Profile",
        "Description": "    As a User\n    In order to ...\n    I want to be able to edit basic profile information about myself\n\n\n- Add avatar\n- Set user name\n- Email\n- Change Password - Admin only?\n- Change Role (assume this is administrator only?)\n- Set which Restart Groups a member of - Admin only?\n- Save\n- Reset?",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "2-UserAccounts/04 PasswordRecovery.feature",
      "Feature": {
        "Name": "03 Password Recovery",
        "Description": "As a user\nIn order to",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "2-UserAccounts/02 UserAuthentication.feature",
      "Feature": {
        "Name": "02 User Authentication",
        "Description": "    As a user\n    In order to perform what I want to do on the site\n    I want to be able to log in",
        "FeatureElements": [
          {
            "Name": "Valid login",
            "Slug": "valid-login",
            "Description": "",
            "Steps": [
              {
                "Keyword": "When",
                "NativeKeyword": "When ",
                "Name": "a user logs in with email \"fry@planetexpress.com\" and password \"fry!\"",
                "StepComments": [],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "Then",
                "NativeKeyword": "Then ",
                "Name": "the user is logged in as \"Fry\" with email \"fry@planetexpress.com\"",
                "StepComments": [],
                "AfterLastStepComments": []
              }
            ],
            "Tags": [],
            "Result": {
              "WasExecuted": false,
              "WasSuccessful": false
            }
          },
          {
            "Name": "Valid login with alternate case email",
            "Slug": "valid-login-with-alternate-case-email",
            "Description": "",
            "Steps": [
              {
                "Keyword": "When",
                "NativeKeyword": "When ",
                "Name": "a user logs in with email \"FRY@PlAnetExPreSs.com\" and password \"fry!\"",
                "StepComments": [
                  {
                    "Text": "# Emails are case-insensitive."
                  }
                ],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "Then",
                "NativeKeyword": "Then ",
                "Name": "the user is logged in as \"Fry\" with email \"fry@planetexpress.com\"",
                "StepComments": [],
                "AfterLastStepComments": []
              }
            ],
            "Tags": [],
            "Result": {
              "WasExecuted": false,
              "WasSuccessful": false
            }
          },
          {
            "Name": "Invalid login due to password casing",
            "Slug": "invalid-login-due-to-password-casing",
            "Description": "",
            "Steps": [
              {
                "Keyword": "When",
                "NativeKeyword": "When ",
                "Name": "a user logs in with email \"fry@planetexpress.com\" and password \"FRY!\"",
                "StepComments": [
                  {
                    "Text": "# Passwords are case-sensitive."
                  }
                ],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "Then",
                "NativeKeyword": "Then ",
                "Name": "the user is not logged in",
                "StepComments": [],
                "AfterLastStepComments": []
              },
              {
                "Keyword": "And",
                "NativeKeyword": "And ",
                "Name": "a message is displayed to the user letting them know they have not been logged in",
                "StepComments": [],
                "AfterLastStepComments": []
              }
            ],
            "Tags": [],
            "Result": {
              "WasExecuted": false,
              "WasSuccessful": false
            }
          }
        ],
        "Background": {
          "Name": "",
          "Description": "",
          "Steps": [
            {
              "Keyword": "Given",
              "NativeKeyword": "Given ",
              "Name": "the following user account has been created",
              "TableArgument": {
                "HeaderRow": [
                  "Email",
                  "Password"
                ],
                "DataRows": [
                  [
                    "fry@planetexpress.com",
                    "fry!"
                  ]
                ]
              },
              "StepComments": [],
              "AfterLastStepComments": []
            }
          ],
          "Tags": [],
          "Result": {
            "WasExecuted": false,
            "WasSuccessful": false
          }
        },
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "2-UserAccounts/01 AccountRequest.feature",
      "Feature": {
        "Name": "01 Account Request",
        "Description": "    In order to be able to record my group's repairs and see my group's impact\n    As a potential User\n    I want to be able to request an Account\n\nCurrently accounts are requested via email. An account is then created manually\nwith a temporary password. The user is then associated with the corresponding\nRestart group.",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "1-Overview/4-Glossary.feature",
      "Feature": {
        "Name": "4 Glossary",
        "Description": "Event (AKA Restart Party)\n: Free community electronics repair event. People join us to fix their broken\nelectronics. At events, Restart Party Hosts log the status of devices, and\nafterwards feed into our online database.\n\nParticipant AKA Owner\n: A participant is someone who brings a device to an event for repair.\nWho comes to events? People who are frustrated with our throwaway culture,\npeople who cannot afford to buy new, people who are curious to get inside\ntheir black-box gadgets. In our experience, an equal number of men and women\nbring gadgets for repair, and participants come from all walks of life.\n\nDevice (AKA item)\n: Devices are brought to events in order to be fixed.\nWhat is a device? A wide range of items from laptops through to toasters.\nDevices are categorised into device categories.\n\nDevice categories.\n: There are 34 device categories.\n\nCategory cluster.\n: Devices categories are split into four clusters: computers and home office,\nelectronic gadgets, home entertainment, kitchen and household items.\n\nRepairers AKA Restarters.\n: We call our volunteer repairers \"Restarters\". They are talented amateurs,\nwith various backgrounds and experience. Owners get involved in the repair,\nhelping troubleshoot, disassemble and sometimes fix their own electronics.\n\nCalculations\n: For each category we maintain data on the average weight; data on how\nrepaired devices displace new devices (which is where the environmental\nbenefit comes in); and data on the carbon footprint to manufacture each type\nof electrical device.\n\nRepresentative products\n: A product which we deem to be representative of a particular category.\n\nAverage weight\n: We used the Furniture Reuse Network’s 2009 data as a starting point, updated\nsome figures, and sourced more online, as averages of representative products.\n\nDisplacement rate\n: The rate by which we prevent a new manufacture. Our biggest – and most\nnecessary – assumption is that a fix at a Restart Party displaces a new\nmanufacture by 50%. That is, that a repaired device will live on for an extra\n50% more than its intended life.\n\nCarbon footprint\n: The amount of carbon required to manufacture each type of electrical device.\n\nData quality indicators\n: Data quality indicators are used in carbon footprinting to ensure that the\naccuracy of each datapoint is understood and transparent.\n\nRepairability\n: Many devices leave a Restart Party that seem worthy of more effort.\nSome need spare parts that we don’t have at our immediate disposal.\nSometimes device owners go home ready to finish the job themselves – this\noccurs in about 4.6% of cases. Others are referred to professional repairers.\nThese are recorded as “repairable”.\n\nEnd-of-life\n: A device is labelled \"end-of-life\" when a Restarter and the owner decide it\nis not cost-effective or realistic to repair the device.\n\nReuse opportunity\n: We encourage owners of end-of-life devices to seek out a reuse opportunity\nbefore taking them to be recycled. This is the most resource-efficient option.\nMany devices can be sold or given away for parts. But ultimately, we would like\nto see devices recycled so that their materials can be recovered.\n\nTypes of fixes\n: There can be software fixes or hardware fixes.\nMany of our fixes are software related. Issues related to software contribute\nto a feeling of \"perceived obsolescence\", and motivate an owner of a device to\nabandon it, when a simple software fix can address the frustrations of a user\nand prolong the lifecycle of a gadget. In fact, often times mobiles, tablets\nand laptops can refuse to boot due to software problems. With laptops,\nsoftware fixes are just as common as hardware ones.\n\nFix frequency\n: The total amount of times particular devices are fixed at our events.\nDevices that are *brought* frequently may have a high fix frequency.\nLaptops, mobiles, and small kitchen items are brought frequently and as a\nresult have a high fix frequency.\n\nFix rates\n: Different from the fix frequency, this is the ratio that devices brought to\nevent ends up being fixed vs not fixed. The fix rate could then be an indicator\nof repairability of a particular category (although other factors, such as skill\nsets of repairers, also have a factor.) Musical instruments, toys, headphones\nand lamps have high fix rates. Flat screens and heating/cooling appliances have\nlow fix rates (however they are not that frequently brought to events.)\nWe also have trouble with PC accessories like mice, keyboards, and computer\nspeakers, kettles, decorative and/or safety lights.\n\nSpare parts\n: 18.8% of repairs require spare parts. In exceptional cases, especially for\nscreen repairs, participants bring the parts with them and we are able to fix\nthe device on the spot. Most require follow-up by the device owner.\nSpare parts for some devices and categories of devices are found for sale\nonline.\n\n\n\n\nNOTE - start making notes on which terminology is likely to be different across clients of the software.",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "1-Overview/3-Capabilities.feature",
      "Feature": {
        "Name": "3 Capabitilies",
        "Description": "",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "1-Overview/2-Goals.feature",
      "Feature": {
        "Name": "2 Goals",
        "Description": "",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    },
    {
      "RelativeFolder": "1-Overview/1-Vision.feature",
      "Feature": {
        "Name": "1 Vision",
        "Description": "The Fixometer is a data collection and visualisation tool that lets repair\norganisations easily and conveniently collect information on repairs, and\nvisualise the impact of those repairs.\n\nThe Fixometer fits into the Restart Project's vision of changing the world's\nrelationship with electronics, by providing a platform for the collection of\nopen repair data. It was the initial phase of our development of the open repair\ndata standard, which will allow for open repair data to be collected and pooled\ntogether from multiple organisations using different tools. The Fixometer\ncontinues to be developed as the flagship and archetype tool for open repair\ndata collection.\n\nFor further information, see https://therestartproject.org/fixometer.",
        "FeatureElements": [],
        "Result": {
          "WasExecuted": false,
          "WasSuccessful": false
        },
        "Tags": []
      },
      "Result": {
        "WasExecuted": false,
        "WasSuccessful": false
      }
    }
  ],
  "Summary": {
    "Tags": [],
    "Folders": [
      {
        "Folder": "7-Wordpress-Module/Upcoming Parties.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "5-Reporting/Hours Volunteered.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "5-Reporting/Impact Analysis.feature",
        "Total": 2,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 2
      },
      {
        "Folder": "4-Events/TrackImpact.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/EditHistoricEvent.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/EditEvent.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/Create Event.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "3-Groups/EditGroupProfile.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/05 UserTypes.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/03 EditProfile.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/04 PasswordRecovery.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/02 UserAuthentication.feature",
        "Total": 3,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 3
      },
      {
        "Folder": "2-UserAccounts/01 AccountRequest.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/4-Glossary.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/3-Capabilities.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/2-Goals.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/1-Vision.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      }
    ],
    "NotTestedFolders": [
      {
        "Folder": "7-Wordpress-Module/Upcoming Parties.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "5-Reporting/Hours Volunteered.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "5-Reporting/Impact Analysis.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/TrackImpact.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/EditHistoricEvent.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/EditEvent.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "4-Events/Create Event.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "3-Groups/EditGroupProfile.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/05 UserTypes.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/03 EditProfile.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/04 PasswordRecovery.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/02 UserAuthentication.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "2-UserAccounts/01 AccountRequest.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/4-Glossary.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/3-Capabilities.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/2-Goals.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      },
      {
        "Folder": "1-Overview/1-Vision.feature",
        "Total": 0,
        "Passing": 0,
        "Failing": 0,
        "Inconclusive": 0
      }
    ],
    "Scenarios": {
      "Total": 5,
      "Passing": 0,
      "Failing": 0,
      "Inconclusive": 5
    },
    "Features": {
      "Total": 17,
      "Passing": 0,
      "Failing": 0,
      "Inconclusive": 17
    }
  },
  "Configuration": {
    "SutName": "Restart Project Fixometer",
    "GeneratedOn": "18 April 2017 15:35:37"
  }
});