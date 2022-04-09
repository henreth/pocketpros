import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'


export default function OpenPacks({ user }) {
  document.title = 'Pocket Pros - Open Packs';

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])

  return (
    <div className='yourCards-container'>
      <div className="card"><div className="noImage">1</div></div>
      <div className="card"><div className="noImage">1</div></div>
      <div className="card"><div className="noImage">1</div></div>
      <div className="card"><div className="noImage">1</div></div>
      <div className="card"><div className="noImage">1</div></div>
      <div className="card"><div className="noImage">1</div></div>
    </div>
  )
}