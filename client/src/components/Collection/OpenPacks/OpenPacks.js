import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'


export default function OpenPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn }) {
    document.title = 'Pocket Pros - Open Packs';

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])


    function handleStudioClick(e){
        axios.get(`/${e.target.textContent.toLowerCase()}_pack`)
        .then(r=>console.log(r.data))

        fetch("/me")
        .then((r) => {
          if (r.ok) {
            r.json().then((user) => {
              setUser(user)
              setUserCards(user.cards)
              setUserPacks(user.packs)
            })} 
    })}
    

    //{userPacks["booster"]}
    return (
        <div className='yourCards-container'>
            <div value='studio' className="pack booster" onClick={handleStudioClick}>
                STUDIO
            </div>
        </div>
    )
}