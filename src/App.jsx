import { useState } from "react";
import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";
import Home from "./pages/Home";
import About from "./pages/About";
import NotFound from "./pages/NotFound";
import "bootstrap/dist/css/bootstrap.min.css";
import NavBar from "./components/NavBar";
import { ChakraProvider } from "@chakra-ui/react";
// import { lazy } from "react";
// const Home = lazy(() => import("./pages/Home.jsx"));
// const About = lazy(() => import("./pages/About.jsx"));

function App() {
  return (
    <Router>
      <ChakraProvider>
        <NavBar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/About" element={<About />} />
          <Route path="/NotFound" element={<NotFound />} />
        </Routes>
      </ChakraProvider>
    </Router>
  );
}

export default App;
