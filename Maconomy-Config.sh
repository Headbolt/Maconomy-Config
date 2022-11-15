#!/bin/sh
####################################################################################################
#
#       THIS SOFTWARE IS PROVIDED "AS IS" AND ANY
#       EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
#       WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
#       DISCLAIMED. IN NO EVENT SHALL The Author BE LIABLE FOR ANY
#       DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
#       (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#       LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
#       ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#       (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#       SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
###############################################################################################################################################
#
# ABOUT THIS PROGRAM
#
#	Maconomy-Config.sh
#	https://github.com/Headbolt/Maconomy-Config
#
# DESCRIPTION
#	This script will create the maconomy config files if not already there.
#
###############################################################################################################################################
#
# HISTORY
#
#   Version: 1.1 - 15/11/2022
#
#	14/02/2018 - V1.0 - Created by Headbolt
#
#	15/11/2022 - V1.1 - Updated by Headbolt
#							Better Reporting and error checking, better notation
#
###############################################################################################################################################
#
# DEFINE VARIABLES & READ IN PARAMETERS
#
###############################################################################################################################################
#
# Variables used by this script.
#
user=$3 # Grab the Logged In User from JAMF variable #3 eg. JoeBloggs
server=$4 # Grab the required Server Name from JAMF variable #4 eg. macoprod.companyname.com
port=$5 # Grab the required Server Port from JAMF variable #5 eg. 8080
database=$6 # Grab the required Database Name from JAMF variable #6 eg. macoprod
#
Stamp=$(date) # Grab The Current Time so we can output it for Reporting Purposes
ScriptName="Application | Maconomy Config" # Set the Script Name for Reporting Purposes
ExitCode=0 # Pre-Set the Exit Code
#
###############################################################################################################################################
#
#   Checking and Setting Variables Complete
#
###############################################################################################################################################
# 
# SCRIPT CONTENTS - DO NOT MODIFY BELOW THIS LINE
#
###############################################################################################################################################
#
# Defining Functions
#
###############################################################################################################################################
#
# Section End Function
#
SectionEnd(){
#
/bin/echo # Outputting a Blank Line for Reporting Purposes
/bin/echo  ----------------------------------------------- # Outputting a Dotted Line for Reporting Purposes
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
}
#
###############################################################################################################################################
#
# Script End Function
#
ScriptEnd(){
#
/bin/echo Ending Script '"'$ScriptName'"'
/bin/echo # Outputting a Blank Line for Reporting Purposes
/bin/echo  ----------------------------------------------- # Outputting a Dotted Line for Reporting Purposes
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
exit $ExitCode
#
}
#
###############################################################################################################################################
#
# End Of Function Definition
#
###############################################################################################################################################
# 
# Begin Processing
#
###############################################################################################################################################
#
/bin/echo # Outputting a Blank Line for Reporting Purposes
SectionEnd
#
Echo $Stamp # Display Current Time
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
# Checks for Existense of /Users/$user/Library/Preferences/com.deltek.maconomy
/bin/echo 'Checking for Existense of "'/Users/$user/Library/Preferences/com.deltek.maconomy'"'
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
if [ -d "/Users/$user/Library/Preferences/com.deltek.maconomy" ]
	then
    	/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy'" Exists'  
	else
		/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy'" Does Not Exist'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
		/bin/echo 'Creating "'/Users/$user/Library/Preferences/com.deltek.maconomy'"' 
		/bin/echo # Outputting a Blank Line for Reporting Purposes
	    mkdir "/Users/$user/Library/Preferences/com.deltek.maconomy"
	    /bin/echo 'Changing Owner of Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy'"' 
		/bin/echo # Outputting a Blank Line for Reporting Purposes
	    chown $user "/Users/$user/Library/Preferences/com.deltek.maconomy"
fi
SectionEnd
#
# Checks for Existense of /Users/$user/Library/Preferences/com.deltek.maconomy/user
/bin/echo 'Checking for Existense of "'/Users/$user/Library/Preferences/com.deltek.maconomy/user'"'
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
if [ -d "/Users/$user/Library/Preferences/com.deltek.maconomy/user" ]
	then
    	/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user'" Exists'  
	else
		/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user'" Does Not Exist'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
		/bin/echo 'Creating "'/Users/$user/Library/Preferences/com.deltek.maconomy/user'"'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
	    mkdir "/Users/$user/Library/Preferences/com.deltek.maconomy/user"
	    /bin/echo 'Changing Owner of Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user'"'
	    /bin/echo # Outputting a Blank Line for Reporting Purposes
	    chown $user "/Users/$user/Library/Preferences/com.deltek.maconomy/user"
fi
SectionEnd
#
# Checks for Existense of /Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata
/bin/echo 'Checking for Existense of "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata'"'
#
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
if [ -d "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata" ]
	then
    	/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata'" Exists'  
	else
		/bin/echo 'Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata'" Does Not Exist'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
		/bin/echo 'Creating "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata'"' 
		/bin/echo # Outputting a Blank Line for Reporting Purposes
	    mkdir "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata"
	    /bin/echo 'Changing Owner of Folder "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata'"' 
	    /bin/echo # Outputting a Blank Line for Reporting Purposes
	    chown $user "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata"
fi
SectionEnd
#
# Checks for Existense of /Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml
echo Checking for Existense of "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml"
#
# Outputs a blank line for reporting purposes
echo
#
if [ -f "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml" ]
	then
    	/bin/echo 'File "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml'" Exists'  
	else
		/bin/echo 'File "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml'" Does Not Exist'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
		/bin/echo 'Creating "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml'"'
		/bin/echo # Outputting a Blank Line for Reporting Purposes
        /bin/echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?><metadata><node name="address"><value value="'${server}'"/></node><node name="connectwithoutasking"><value value="true"/></node><node name="database"><value value="'${database}'"/></node><node name="port"><value value="'${port}'"/></node></metadata>' > "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml"
        /bin/echo 'Changing Owner of File "'/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml'"' 
		/bin/echo # Outputting a Blank Line for Reporting Purposes
	    chown $user "/Users/$user/Library/Preferences/com.deltek.maconomy/user/client metadata/instance.xml"
fi
SectionEnd
ScriptEnd
