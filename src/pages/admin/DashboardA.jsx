import React from 'react'
import SideBarA from '../../components/SideBarA'
import { Button, Flex, Grid, GridItem, Heading, Text,Table,
  Thead,
  Tbody,
  Tfoot,
  Tr,
  Th,
  Td,
  HStack, Box} from '@chakra-ui/react'
import { AddIcon } from '@chakra-ui/icons'
import { NavLink } from 'react-router-dom'



export default function DashboardA() {
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
        <Heading ad="h1">Dashboard</Heading>  
        <Text mt="10px">dashborad</Text> 
        <Flex mt="30px"  p="10px" minChildWith="200px" >
          <HStack spacing="60px">
            <Button colorScheme='pink'   as="a" href="#" pb="5px">Liste des produits</Button>
            <Button colorScheme='pink' leftIcon={<AddIcon/>} as="a" href="#" pb="5px">Ajouter un client</Button>
            <Button colorScheme='pink' leftIcon={<AddIcon/>} as="a" href="#" pb="5px">Ajouter un produit</Button>
          </HStack>
        </Flex>
        <Box border="1px solid #CED4DA" borderRadius="5px" p="10px" my="40px">
          <Text mb="20px" borderBottom="1px solid #CED4DA" >Les produits disponibles :</Text>
          <Table size='md' mt="10px" bg="pink" >
            <Thead >
              <Tr >
                <Th color="black">Produit</Th>
                <Th color="black">Catégorie</Th>
                <Th color="black">Quantité Stock</Th>
                <Th color="black" >Prix</Th>
                <Th color="black" >Liste de vente</Th>
              </Tr>
            </Thead>
            <Tbody>
              <Tr>
                <Td>Parfum Homme</Td>
                <Td>Parfum</Td>
                <Td>20</Td>
                <Td >500.00DA</Td>
                <Td><NavLink to="/">Lire plus</NavLink></Td>
              </Tr>
              <Tr>
                <Td>Parfum Femme</Td>
                <Td>Parfum</Td>
                <Td>10</Td>
                <Td >500.00DA</Td>
                <Td><NavLink to="/">Lire plus</NavLink></Td>
              </Tr>
              <Tr>
                <Td>Lotion nivea Femme</Td>
                <Td>lotion</Td>
                <Td>15</Td>
                <Td >500.00DA</Td>
                <Td><NavLink to="/">Lire plus</NavLink></Td>
              </Tr>
            </Tbody>
          </Table>
        </Box>
         
      </GridItem>
    </Grid>
  )
}
