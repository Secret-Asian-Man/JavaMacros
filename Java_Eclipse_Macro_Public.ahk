﻿;Credits to David Wu for making this script©

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

VERSION=1.0.0
timeDate=(3:53 PM Saturday, October 1, 2016)

;==================================================================
	MsgBox, ,Version %VERSION% ,Type \help (Backslash above enter key.) anywhere to get started

;==================================================================

;==================================================================
;Variables

doubleClickToggle:=false
;==================================================================

;==================================================================
;Misc

SetKeyDelay, 10

;==================================================================

;==================================================================
;opens help menu
:O:\help::

Gui, Font, underline
Gui, Add, Text, x320 y0 cBlue gUpdateLink, Version %VERSION% (Click here for source code and updates!)
Gui, Font, norm
 
Gui, Add, Edit, ReadOnly x0 y25 w910 h480, Java_Eclipse_Macros.ahk`nPurpose: More efficient programming!`n`n@author David Wu`n@version %VERSION% %timeDate%`n`n`n`n`nHOTKEYS`n`nMiddle Mouse Button`nPressing the middle mouse button, aka the scrolling wheel, double clicks and selects words faster. Use Alt+D to toggle this feature. Default is off.`n`nAlt+D`nToggles double click when you press the middle mouse button`n`nAlt+B`nDeletes semicolon and adds brackets to function definitions.`n`nAlt+A`nAuto indents entire file.`n`n`nCtrl+Shift+1`nCopies selection onto it's own clipboard. (Note: There are 0 - 9 clipboards)`n`nCtrl+1`nPastes clipboard 1. (Note: There are 0 - 9 clipboards)`n`nCtrl+~`nConverts current clipboard into a macro, then types it.`n`n`n`n`nCOMMANDS`n(Notice: uses the backslash above your enter key. Start typing anywhere.)`n`n\help`nOpens up a list of commands and descriptions, duh.`n`n\exit`n\quit`n\close`nCloses the script.`n`n\while`n\w`nPastes in a while loop statement.`n`n\try`nPastes in a try/catch`n`n\ternary`n\tern`n\turn`n\t`nPastes in a ternary.`n`n\endl`n\newline`n\nl`n\n`n\el`n\e`nPastes in a end line statement.`n`n\if`nPastes in a if statement.`n`n\do while`n\dowhile`n\dw`n\do`nPastes in a do while statement`n`n\ifelse`n\ife`nPastes in a if else statement.`n`n\switchcase`n\switch`n\s`nPastes in a switch case statement.`n`n\header`n\head`n\h`nPastes in a standardized header documentation template.`n`n\function`n\func`n\f`nPastes in a standardized function documentation template`n`n\debug`n\d`nPastes in a debug statement with a variable.`n`n\class`n\c`nPastes in a label format to help initialize a new class.`n`n\debug2`n\d2`nPastes in a comment only debug statement`n`n\for`nPastes in a for loop statement.`n`n\for2`nPastes in a slightly different for loop statement.`n`n\paste`nConverts current clipboard into a macro, then types it.`n`n`n`n`nAUTO CORRECT`n(::typo::correction)`n`n::reutnr::return`n::reutrn::return`n::int he::in the`n::t he::the`n::toekn::token`n::fucntion::function`n::stauts::status`n::sutats::status`n::stats::status`n::remtoe::remote`n::git s::git status`n::git l::git log`n::git r::git remote`n::reutn::return`n::ruent::return`n::rutne::return`n::retunr::return`n::virtural::virtual`n::treu::true`n::ture::true`n::funciton::function`n::fucntion::function`n::\::    (removes stray backslashes)`n
; Generated using SmartGUI Creator for SciTE

Gui, Show, w916 h508, Help
Send, Edit, {PGUP}
return

UpdateLink:
Run https://github.com/Secret-Asian-Man/JavaMacros

GuiClose:
gui, destroy

;~ HOTKEYS`nPressing the middle mouse button, aka the scrolling wheel, double clicks.`n`nAlt+B`nDeletes semicolon and adds brackets to function definitions.`n`nAlt+A`nAuto indents entire file.`n`nCtrl+Shift+1`nCopies selection onto it's own clipboard. (Note: There are 1 - 5 clipboards)`n`nCtrl+1`nPastes clipboard 1. (Note: There are 1 - 5 clipboards)`n`nCtrl+~`nConverts current clipboard into a macro, then types it.`n`n`n`n`nCOMMANDS`n(Notice: uses the backslash above your enter key. Start typing anywhere)`n`n\help`nOpens up a list of commands and descriptions, duh.`n`n\exit`n\quit`n\close`nCloses the script.`n`n\while`n\w`nPastes in a while loop statement.`n`n\endl`n\e`nPastes in a end line statement.`n`n\if`nPastes in a if statement.`n`n\ifelse`n\ife`nPastes in a if else statement.`n`n\switchcase`n\switch`n\s`nPastes in a switch case statement.`n`n\header`n\head`n\h`nPastes in a standardized header documentation template.`n`n\function`n\func`n\f`nPastes in a standardized function documentation template`n`n\again`nPastes in a small do again program.`n`n\debug`n\d`nPastes in a debug statement.`n`n\for`nPastes in a for loop statement.`n`n\for2`nPastes in a slightly different for loop statement.`n`n`n`n`nAUTO CORRECT`n::typo::correction`n`n::enld::endl`n::ednl::endl`n::null::NULL`n::reutnr::return`n::reutrn::return`n::int he::in the`n::t he::the`n::toekn::token`n::fucntion::function`n::ednk::endl`n::endk::endl`n::stauts::status`n::sutats::status`n::stats::status`n::remtoe::remote`n::freidn::friend`n::git s::git status`n::git l::git log`n::git r::git remote`n::@include::#include`n::reutn::return`n::ruent::return`n::rutne::return`n::retunr::return`n::virtural::virtual`n::treu::true`n::ture::true`n::funciton::function`n::fucntion::function`n::\::    (removes stray backslashes)`n

return
;==================================================================

;==================================================================
;Closes the script
:O:\exit::
:O:\quit::
:O:\close::

ExitApp
;==================================================================

;==================================================================
;When ALT+d is pressed
;toggles double click for middle mouse button

!d::
doubleClickToggle:=!doubleClickToggle

return
;==================================================================

;==================================================================
;When middle mouse button is pressed
;double clicks
MButton::
if (doubleClickToggle)
{
	MouseClick,left
	MouseClick,left
}
else
{
	send, {MButton}
	sleep, 150
}

return
;==================================================================

;==================================================================
;When ALT+b is pressed
;deletes semicolon and adds brackets to functions at the bottom of the program.

!b::
Send {Backspace}{Enter}{{}{Enter}

return
;==================================================================

;==================================================================
;When ALT+a is pressed
;does ctrl+a then ctrl+i

!a::
Send ^a^i

return
;==================================================================

;==================================================================
;When ALT+f is pressed
;Add a function description (optimized for Eclipse)

!f::
Send /**{enter}

return
;==================================================================

;================================================================== (Learn how it works below)
;adds a while statement

:O:\while::	;when user types out \while
:O:\w::		;or when user types out \w
ClipSaved := ClipboardAll	;saves what is currently on the clipboard to a temporary clipboard
Clipboard =	;sets the clipboard to whatever is between the parenthesis( )
(
while(true)
{
        
}
)
Send ^v	;Pastes the clipboard
sleep 150
Clipboard := ClipSaved ;returns the clipboard to the original
ClipSaved = ;empties the temporary clipboard
return
;==================================================================

;==================================================================
;adds an do while statement
:O:\do while::
:O:\dowhile::
:O:\dw::
:O:\do::
ClipSaved := ClipboardAll
Clipboard = 
(
do
{
	
} while(true);
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds an try/catch statement
:O:\try::
ClipSaved := ClipboardAll
Clipboard = 
(
    try
    {

    }
    catch(insertVariableType error)
    {
        switch (error)
        {

        case insertConditionHere:
            System.out.println("ERROR insertErrorMessageHere ");
            break;

        default:
            System.out.println("Unknown Error... ");
            break;
        }
    }
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds an end line to console
:O:\endl::
:O:\e::
:O:\el::
:O:\newline::
:O:\nl::
:O:\n::
ClipSaved := ClipboardAll
Clipboard = 
(
System.out.println();
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds an if statement

:O:\if::
ClipSaved := ClipboardAll
Clipboard = 
(
if (true)
{
        
}
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds an if else statement

:O:\ife::
:O:\ifelse::

ClipSaved := ClipboardAll
Clipboard = 
(
if (true)
{
        
}
else
{
		
}
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds a switch case statement

:O:\switchcase::
:O:\switch::
:O:\case::
:O:\s::

ClipSaved := ClipboardAll
Clipboard = 
(
switch (insertVariableHere)
{
case insertConditionHere:
    
    break;
    
default:
    System.out.println("Invalid key...");
    break;
}
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds a standardized header documentation template

:O:\header::
:O:\head::
:O:\h::

FormatTime, dateVar,Mdyyyyhmtt

ClipSaved := ClipboardAll
Clipboard = 
(
/**
    enterCourseYouAreTakingHere
    fileName.extensionName
    Purpose: enterPurposeOfProgramHere

    @author enterNameHere
    @version enterVersionNumberHere (%dateVar%)
*/
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
;adds a standardized function documentation template
;NOTE: make it smarter. Highlight the function, save it into clipboard and covert to a string variable, tokenize the variable to find the name, parameters, and return type. returnType name(parameterType name, parameterType* name, parameterType &name)

:O:\function::
:O:\func::
:O:\f::

ClipSaved := ClipboardAll
Clipboard = 
(
/**
    enterPurposeOfFunctionHere

    @param enterDesriptionOfAllParametersHere
    @return enterDesriptionOfReturnHere
*/
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
:O:\class::
:O:\c::
ClipSaved := ClipboardAll
Clipboard = 
(
    //Constructors


    //Accessors


    //Mutators


    //Functions


    //Private Member Variables
	 
    
    //Private Functions


)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================


;==================================================================
:O:\debug::
:O:\d::
ClipSaved := ClipboardAll
Clipboard = 
(
System.out.println("DEBUG: " + insertVariable);
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
:O:\debug2::
:O:\d2::
ClipSaved := ClipboardAll
Clipboard = 
(
System.out.println("DEBUG @@@@@@@@@@@@@@@@@@@@@@@@@@@@: ");
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
:O:\output::
:O:\out::
:O:\o::
:O:\p::
:O:\print::
ClipSaved := ClipboardAll
Clipboard = 
(
System.out.println("insertTextHere");
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;==================================================================

;==================================================================
:O:\for::
ClipSaved := ClipboardAll
Clipboard = 
(
for (int i=0;i<something;++i)
{
    
}
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;================================================================== 

;==================================================================
:O:\for2::
ClipSaved := ClipboardAll
Clipboard = 
(
for (int j=0;j<something;++j)
{
    
}
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;================================================================== 

;==================================================================
:O:\t::
:O:\turn::
:O:\tern::
:O:\ternary::

ClipSaved := ClipboardAll
Clipboard = 
(
condition ? value_if_true : value_if_false;
)
Send ^v
sleep 150
Clipboard := ClipSaved
ClipSaved =
return
;================================================================== 

;####################################################################### Multiple Clipboards #########################################################################

; Hotkeys
^+1::Copy(1) ;Control+Shift+1
^1::Paste(1) ;Control+1

^+2::Copy(2)
^2::Paste(2)

^+3::Copy(3)
^3::Paste(3)

^+4::Copy(4)
^4::Paste(4)

^+5::Copy(5)
^5::Paste(5)

^+6::Copy(6)
^6::Paste(6)

^+7::Copy(7)
^7::Paste(7)

^+8::Copy(8)
^8::Paste(8)

^+9::Copy(9)
^9::Paste(9)

^+0::Copy(0)
^0::Paste(0)

:O:\paste::

sleep, 150
PasteSend()
return

^`::PasteSend()

Copy(clipboardID)
{
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard = ; Erase the clipboard first, or else ClipWait does nothing
	Send ^c
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel 
	{
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	
	ClipboardData%clipboardID% := ClipboardAll
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Cut(clipboardID)
{
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard = ; Erase the clipboard first, or else ClipWait does nothing
	Send ^x
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel 
	{
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	ClipboardData%clipboardID% := ClipboardAll
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Paste(clipboardID)
{
	global
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard := ClipboardData%clipboardID%
	
	Send ^v

	sleep, 200
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
	oldClipboard = 
}

PasteSend() ;pastes with keystrokes instead (for apps that don't allow pasting)
{
	global
	 
	 temp := clipboard
	 
	SendEvent {Raw}%temp%
	temp = 

}




;#########################################################################################################################################################################


;==================================================================
;AutoCorrect (Keep adding common typos in here.) 
;   ::typo::correction

::reutnr::return
::reutrn::return
::int he::in the
::t he::the
::toekn::token
::fucntion::function
::stauts::status
::sutats::status
::stats::status
::remtoe::remote
::git s::git status
::git l::git log
::git r::git remote
::reutn::return
::ruent::return
::rutne::return
::retunr::return
::treu::true
::ture::true
::funciton::function
::fucntion::function
::\::

return
;==================================================================


;==================================================================
;					HELP MENU
;~ HOTKEYS

;~ Pressing the middle mouse button, aka the scrolling wheel, double clicks.

;~ Alt+B
;~ Deletes semicolon and adds brackets to function definitions.

;~ Alt+A
;~ Auto indents entire file.

;~ Alt+F
;~  Automatically adds in a function header. Optimized for Eclipse IDE. 

;~ Ctrl+Shift+1
;~ Copies selection onto it's own clipboard. (Note: There are 1 - 5 clipboards)

;~ Ctrl+1
;~ Pastes clipboard 1. (Note: There are 1 - 5 clipboards)

;~ Ctrl+~
;~ Converts current clipboard into a macro, then types it.



;~ COMMANDS
;~ (Notice: uses the backslash above your enter key)

;~ \help
;~ Opens up a list of commands and descriptions, duh.

;~ \exit
 ;~ \quit
 ;~ \close
;~ Closes the script.

;~ \while
;~ \w
;~ Pastes in a while loop statement.

;~ \endl
;~ \el
;~ \e
;~ \newline
;~ \nl
;~ \n
;~ Pastes in a end line statement.

;~ \if
;~ Pastes in a if statement.

;~ \ifelse
;~ \ife
;~ Pastes in a if else statement.

;~ \switchcase
;~ \switch
;~ \s
;~ Pastes in a switch case statement.

;~ \header
;~ \head
;~ \h
;~ Pastes in a standardized header documentation template.

;~ \function
;~ \func
;~ \f
;~ Pastes in a standardized function documentation template

;~ \debug
;~ \d
;~ Pastes in a debug statement.

;~ \for
;~ Pastes in a for loop statement.

;~ \for2
;~ Pastes in a slightly different for loop statement.




;~ AUTO CORRECT
 ;~ ::typo::correction

;~ ::reutnr::return
;~ ::reutrn::return
;~ ::int he::in the
;~ ::t he::the
;~ ::toekn::token
;~ ::fucntion::function
;~ ::ednk::endl
;~ ::endk::endl
;~ ::stauts::status
;~ ::sutats::status
;~ ::stats::status
;~ ::remtoe::remote
;~ ::git s::git status
;~ ::git l::git log
;~ ::git r::git remote
;~ ::@include::#include
;~ ::reutn::return
;~ ::ruent::return
;~ ::rutne::return
;~ ::retunr::return
;~ ::treu::true
;~ ::ture::true
;~ ::funciton::function
;~ ::fucntion::function
;~ ::\::    (removes stray backslashes)
;==================================================================
