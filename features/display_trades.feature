Feature: As a user, I want to see all the trades in my portfolio

Scenario: trade list
	Given I have 10 trades
	When I visit the trade listing page
	Then I should see 10 trades

Scenario: trade attributes
	Given I have a trade like:
		| Attribute 			| Value 	  |
		| Counterparty 			| NYMEX 	  |
		| Trader 				| Bill Smith  |
		| Buy/Sell 				| Buy 		  |
		| Price 				| 75 		  |
		| Volume 				| 10000 	  |
		| Tenor Start 			| Apr-13      |
		| Tenor End 			| May-13      |
		| Delivery Location 	|  			  |
		| Instrument 			| NYMEX CL    |
		| Brokerage 			| OTC Global  |
		| Tags 					| #oil #hedge |
		| Notes					|  			  |
	When I visit the trade listing page
	Then I should see "NYMEX"
		And I should see "Bill Smith"
		And I should see "Buy"
		And I should see "$75.00"
		And I should see "10,000"
		And I should see "April 2013"
		And I should see "May 2013"
		And I should see "OTC Global"
		And I should see "#oil"
		And I should see "#hedge"

Scenario: price curve and market price
	Given I have a trade like:
		| Attribute 			| Value 	  |
		| MTM Curve				| NYMEX CL    |
		| Tenor Start 			| Apr-13      |
		| Tenor End 			| Apr-13      |
	When I visit the trade listing page
	Then I should see "$97.03"
		And I should see "NYMEX CL"

Scenario: trade mark-to-market value
	Given I have a trade
	When I visit the trade listing page
	Then I should see "MTM Value"

Scenario: mark-to-market value
	Given I have some trades
	When I visit the trade listing page
	Then I should see "Portfolio MTM Value"