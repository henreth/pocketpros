import './Home.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Home() {
  let navigate = useNavigate();

  return (
    <React.Fragment>
      <div>HOME PAGE</div>
      <button onClick={()=>{navigate('/collection')}}>GO TO COLLECTION</button>
    </React.Fragment>
  );
}

