import { AtSignIcon, CalendarIcon, EditIcon, ExternalLinkIcon } from '@chakra-ui/icons'
import { List, ListIcon, ListItem, Spacer } from '@chakra-ui/react'
import React from 'react'
import { NavLink } from 'react-router-dom'



// The default icon size is 1em (16px)



export default function SideBarA() {
  return (
    <List color="white" fontSize="1em" spacing={4}>
        <ListItem>
            <NavLink to="/">
                <ListIcon as={CalendarIcon} color="white"/>
                Dashborad
            </NavLink>
        </ListItem>
        <ListItem>
            <NavLink to="/DashboardA">
                <ListIcon as={EditIcon} color="white"/>
                Create
            </NavLink>
        </ListItem>
        <ListItem>
            <NavLink to="/Profil">
                <ListIcon as={AtSignIcon} color="white"/>
                Profile
            </NavLink>
        </ListItem>
        <ListItem paddingTop={{lg:"60vh"}}>
            <NavLink to="/">
                <ListIcon as={ExternalLinkIcon} color="white"/>
                LogOut
            </NavLink>
        </ListItem>
    </List>
  )
}
