---
title: Plain Text Accounting
rightnav_menu: index-rightnav.md
---

The [Plain Text Accounting](http://plaintextaccounting.org/) page contains a lot of useful resources.

The most widespread client application is [Ledger CLI](http://ledger-cli.org/).

## Ledger

Ledger-cli is a command-line interface to Ledger concept.

Interesting links:

- [Asset Allocation](https://www.ledger-cli.org/3.0/doc/ledger3.html#Asset-Allocation)
- [Extending with Python](https://www.ledger-cli.org/3.0/doc/ledger3.html#Extending-with-Python)
- [Import from GnuCash](https://github.com/MatzeB/pygnucash)

## Beancount

[Beancount](https://github.com/beancount/beancount) is Ledger implemented in Python.
[Fava](https://github.com/beancount/fava) is the web interface to Beancount.

- [Gnucash to Beancount](https://github.com/henriquebastos/gnucash-to-beancount)

## Import/Export

Piecash has an export module that can export GnuCash book into Ledger format.
[Piecash docs](http://piecash.readthedocs.io/en/latest/doc/doc.html?highlight=ledger)

- [Links](http://plaintextaccounting.org/#data-importconversion)

## GUI

Graphical user interfaces are also available.

- [GUI](http://plaintextaccounting.org/#ui-console)
- [GUI apps for entering transactions](https://github.com/ledger/ledger/wiki/Entering-transactions-with-ledgerhelpers-GUI-apps)

## Solutions

Several tips for using ledger.

### Capital Gains

Calculate manually and enter the CG split as a part of the sell transaction.

See

- [Buying and selling stock](https://www.ledger-cli.org/3.0/doc/ledger3.html#Buying-and-Selling-Stock)
- [Commodity Prices](https://www.ledger-cli.org/3.0/doc/ledger3.html#Commodity-prices)
- [Discussion on capturing stock trades](https://groups.google.com/forum/#!topic/ledger-cli/NNmkBgc4Tio)

and further.
Ledger expects all the splits to be there, with the purchase and sale prices. It will then just calculate the transaction to see if the capital gains split matches the numbers. This is what GnuCash already does on entry.
So, using Lots feature in GC provides the necessary details.

However, Lots also link 0-quantity splits for reporting purposes, which throw Ledger off balance.

### Asset Allocation

- [Asset Allocation](https://www.ledger-cli.org/3.0/doc/ledger3.html#Asset-Allocation)

A bonus in asset allocation implementation is that commodities can be split into several asset classes (i.e. mutual funds can be 60% international bonds and 40% domestic).

The allocation records are entered as:
```
= expr ( commodity == 'VIFSX' )
    (Allocation:Equities:Domestic)             1.000

= expr ( commodity == 'VTHRX' )
    (Allocation:Equities:Global)               0.240
    (Allocation:Equities:Domestic)             0.563
    (Allocation:Bonds/Cash)                    0.197

= expr ( commodity == 'VBMFX')
    (Allocation:Bonds/Cash)                    1.000
```    

A way to restrict asset allocation to specific account would be to specify (a part of) account name to be included, like

```
= /401K/ and expr ( commodity == 'VTHRX')
     (allocation:Equities:Domestic)  1.000
```     

### Commodity Prices

use `--download (-Q)` parameter? This worked with Yahoo finance quotes and might be deprecated.

Download prices separately and include into the file? Or maintain the latest prices in GC.

### Reports / HTML

- [Converting output to HTML](https://github.com/ledger/ledger/wiki/Converting-output-to-HTML)

recommends using ledger2html [script](http://github.com/lifepillar/ledger2html).

- [Ledger Web](https://github.com/peterkeen/ledger-web)

### Customization

Extending with Python:

- [Extending with Python](https://www.ledger-cli.org/3.0/doc/ledger3.html#Extending-with-Python)
