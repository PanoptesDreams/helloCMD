::
:: Adam Hart | help@panoptes.live
::
:: January 14, 2022 | January 14, 2022
::
:: Learning about Variables
::

@ECHO OFF

:: Passed variables have a single % symbols
:: E.G "%0" represents the batch script 'Part 1 -variables.bat'
:: "%1" is the first passed argument, "%2" the second, and so on...
:: Assigned variables use two % symbols

::Variable Declaration - Variables do not need to be declared
::Use SET to assign a variable
SET foo=bar
::Note the lack of whitespave between 'foo' and 'bar'
::These can NOT have a space inbetween them

::The '/A' switch allows for arithmetic operations during assignment
SET /A window=1+1

::It is standard for variable names to be written in lowercase

ECHO %foo%
ECHO %window%

PAUSE