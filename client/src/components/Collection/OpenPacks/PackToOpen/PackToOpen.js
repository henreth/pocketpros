import './PackToOpen.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/floppydisk3.png'


export default function PackToOpen({setUser, setUserCards, userPacks, setUserPacks }){
    function handlePackClick(e) {
        if(userPacks["studio"] == 0){
            alert('ERROR: You have no Studio Packs left!')
        } else{
            axios.get(`/studio_pack`)
            .then(r => {
                    console.log(r.data)
                    //update user information
                    fetch("/me")
                    .then((r) => {
                        if (r.ok) {
                            r.json().then((user) => {
                                setUser(user)
                                setUserCards(user.cards)
                                setUserPacks(user.packs)
                            })
                        }
                    })        
                }

            )
        }

    }


    return(
        <div className="pack booster" onClick={handlePackClick}>
        <div className='pack-info-container'>
            <div>studio</div>
            <img className='floppy' src={icon} />
            <div>{userPacks["studio"]}</div>
        </div>
    </div>
    )
}