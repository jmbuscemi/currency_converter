# Currency Converter

## Description

Create two Ruby classes: one for storing currencies and another for converting currencies.

### Currency objects:

* Are created with an amount and a currency code. The currency object can take codes that are one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figures out the correct currency code. It can also take two arguments, one being the amount and the other being the currency code (USD, EUR, etc).
* Currency objects can only be added and subtracted to currency with the same code, otherwise a `DifferentCurrencyCodeError` is displayed.


### CurrencyConverter objects:

* Are initialized with a Hash of currency codes and conversion rates based on $1.00.
* Currently the rates supported are USD ($), EUR(€), GBP(£), and JPY(¥).
* Currency objects that have a known currency code can be converted to a requested currency code (provided the requested code is known) and returns a new Currency object with the right amount in the new currency code.
* An `UnknownCurrencyCodeError` is displayed when you try to convert from or to a currency code it doesn't know about.
