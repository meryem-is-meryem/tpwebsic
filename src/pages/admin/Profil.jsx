import { Grid, GridItem ,Heading,Text} from '@chakra-ui/react'
import React from 'react'
import SideBarA from '../../components/SideBarA'

export default function Profil() {
  return (
    <Grid templateColumns="repeat(6, 1fr)" bg="gray.50" >
      <GridItem as="aside"
        minHeight={{lg:"90vh"}}
        colSpan={{base:"6",lg:"2",xl:"1"}}
        bg="gray.800"
        p={{base:"20px",lg:"30px"}}
        >
          <SideBarA/>
      </GridItem>
      <GridItem as="main" colSpan={{base:"6",lg:"4",xl:"5"}} p="40px">
        <Heading ad="h1">Profil</Heading>  
        <Text mt="10px">nom utilisateur</Text> 
      </GridItem>
    </Grid>
  )
}
