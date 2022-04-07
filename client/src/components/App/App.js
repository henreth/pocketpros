import './App.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes,Navigate, useNavigate } from "react-router-dom";
import axios from 'axios';

import Home from '../Home/Home'
import Collection from '../Collection/Collection'
import Auth from '../Auth/Auth';
import LogIn from '../Auth/LogIn/LogIn';
import Profile from '../Profile/Profile';

export default function App() {
  const [signedIn,setSignedIn] = useState(false)

  let navigate = useNavigate();
  function handleClick() {
    navigate("/");
  }


  return (
    <React.Fragment>
      {/* <div>APP</div> */}
      <Routes>
        <Route exact path="/" element={signedIn?<Home />:<Auth signedIn={signedIn} setSignedIn={setSignedIn} />} />
        <Route path="/collection" element={<Collection handleClick={handleClick} signedIn={signedIn} />} />
        <Route path="/auth" element={<Auth setSignedIn={setSignedIn} signedIn={signedIn} />} />
        <Route path="/logIn" element={<LogIn setSignedIn={setSignedIn} signedIn={signedIn} />} />
        <Route path="/profile" element={<Profile signedIn={signedIn} setSignedIn={setSignedIn}/>} />
        <Route path="/*" element={signedIn?<Home />:<Auth signedIn={signedIn} setSignedIn={setSignedIn} />} />
      </Routes>
    </React.Fragment>
  );
}

