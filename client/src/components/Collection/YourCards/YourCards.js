import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';



export default function YourCards({user,userCards,setUserCards,handleBackClick,signedIn}){
    document.title = 'Pocket Pros - Your Cards';

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
          navigate('/');
        }
      }, [])


    return (
        <React.Fragment>
            <div className='test'>Test</div>
        </React.Fragment>
    )
}