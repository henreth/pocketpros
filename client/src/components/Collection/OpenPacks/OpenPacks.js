import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'


export default function OpenPacks({ user,userPacks,setUserPacks,signedIn }) {
  document.title = 'Pocket Pros - Open Packs';

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])

  return (
    <div className='yourCards-container'>
      <div className="card"><div className="noImage">{userPacks["booster"]}</div></div>
      <div className="card"><div className="noImage">{userPacks["regular"]}</div></div>
      <div className="card"><div className="noImage">{userPacks["pro"]}</div></div>
      <div className="card"><div className="noImage">{userPacks["max"]}</div></div>
      <div className="card"><div className="noImage">{userPacks["ultra"]}</div></div>
      <div className="card"><div className="noImage">{userPacks["studio"]}</div></div>
      <div className="card"><div className="noImage">BUY MORE</div></div>
    </div>
  )
}