import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './floppydisk3.png'

import Card from '../../Card/Card'


export default function OpenPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn }) {
    document.title = 'Pocket Pros - Open Packs';

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])


    function handlePackClick(e) {
        axios.get(`/studio_pack`)
            .then(r => {
                if (r.data.length > 15) {
                    alert(r.data)
                } else {
                    console.log(r.data)
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

            })

    }


    //{userPacks["booster"]}
    return (
        <div className='yourCards-container'>
            <div className="pack booster" onClick={handlePackClick}>
                <div className='pack-info-container'>
                    <div>studio</div>
                    <img className='floppy' src={icon} />
                    <div>{userPacks["studio"]}</div>
                </div>
            </div>
        </div>
    )
}