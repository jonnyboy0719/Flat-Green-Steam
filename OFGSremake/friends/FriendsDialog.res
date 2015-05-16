"Friends/FriendsDialog.res"
{
	controls
	{
		"FriendsDialog"
		{
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "1"
			"settitlebarvisible"    "1"
			style="FriendsPanel"    
			closeonescape=1
		}

		"BuddyList"
		{
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}

		"frame_title"
		{
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
			"textAlignment"   "center" [$OSX]
		}


		"DownLabel"
		{
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}

		"MenuBar"
		{
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"tabPosition"   "6"
			"paintbackground"   "1"
			zpos="-1" 
		}

		"FriendPanelSelf"
		{
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"0"
		}

		"AddFriendsButton"
		{
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "10"
			"ypos"    "687"
			"wide"    "150"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}


		"NoFriendsAddFriendButton"
		{
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"FriendsState"
		{
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "0"
		}
		
		friends_search { ControlName=TextEntry maxchars=16 hintText="#steam_library_search" style="FriendsSearch" unicode=1 tabposition=2 }
		friends_search_icon	{ ControlName=Label style="FriendsSearchIcon" zpos="4" }		
		
	}

  
	styles
	{
		FriendsPanel
		{			
			bgcolor="dialogBG"
			render_bg
			{
				1="image( x0, y0, x1, y1, skins/OFGSremake/graphics/clienttexture2)"
			}
		}	
		
		AddFriendsButton 
		{
			font-family=basefont
			font-size=12
			font-weight=400
			padding-left=0
			padding-right=0
			textcolor="labelfocus"
			bgcolor=none  
			

		}
		   

		AddFriendsButton:hover
		{
			textcolor=Over
		}	  	
		
		RootMenu
		{
			bgcolor="none"
		} 

				
		FriendsTitle 
		{
			textcolor="GreenBG"
		}
		
		"MenuBar MenuButton"
		{
			padding-right=14
			textcolor="Text"
			render
			{
			}
		}

		"MenuBar MenuButton:hover"
		{
			render
			{
			}
		}

		"MenuBar MenuButton:selected"
		{
			render
			{
			}
		}
		
		FriendsSearch
		{
			padding-left=-4
			padding-top=1
			textcolor="text"
			bgcolor="none"
			render_bg
			{
				0="fill( x0 - 21, y0, x1, y1, PropertySheetBG )"
			}
		}
		
		FriendsSearch:empty
		{
			font-style=italic
			textcolor="LabelDisabled"
			
		}
		
		FriendsSearch:hover
		{	
			textcolor="texthover"	
		}
		
		FriendsSearch:empty:hover
		{
			font-style=italic
			textcolor="texthover"
			
		}
			
		FriendsSearch:disabled
		{
			font-style=italic
			textcolor="None"
			
		}
			
		FriendsSearchIcon
		{
			inset="4 2 0 0"
			padding-left=0
			padding-right=-1
			padding-top=-1
			image="graphics/icon_button_search"
			bgcolor="none"
			visible=0
		}
		
		FriendsSearchIcon:disabled
		{
			inset="1 0 0 0"
			padding-left=0
			padding-right=-1
			image="none"
			bgcolor="none"
		}
		
		
	}
 	
 	layout
 	{


 		// the title bar is missing, so increase the size of the grip
		place { control="frame_captiongrip" margin=2 width=max height=38 }
		place { control="MenuBar" margin-left=2 height=24 margin-top=-1 }
		
		place { control="FriendPanelSelf,FriendsDialogSheet" align=left margin-left=7 margin-top=-1 margin-right=7 margin-bottom=38 y=26 width=max height=max dir=down spacing=2 }
		place { control="FriendPanelSelf" align=left margin-top=-1 margin-right=14 margin-left=6 y=26 }
		place { control="friends_search_icon" align=bottom margin-left=105 margin-bottom=10 }
		place { control="friends_search" align=bottom margin-left=127 margin-right=35 margin-bottom=8 width=max }
		place { control="addFriendsButton" align=bottom margin-left=7 margin-right=19 margin-bottom=8 height=24 }
 	}
 	
}


