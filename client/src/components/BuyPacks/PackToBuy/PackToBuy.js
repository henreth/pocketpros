import './PackToBuy.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/bwfloppy.png'


export default function PackToBuy({user,packType, setUser, setUserCards, userPacks, setUserPacks }){

    let packCost;
    switch (packType){
        case ('regular'):
            packCost=15;
            break
        case ('pro'):
            packCost=30;
            break
        case ('max'):
            packCost=55;
            break
        case ('ultra'):
            packCost=100;
            break
        case ('studio'):
            packCost=350;
            break
    }
    
    function handlePackClick(e) {
        if(user.credits < packCost){
            alert(`ERROR: You do not have enough credits to purchase this pack.`)
        } else{
            let packToBuy = {
                "pack": packType,
                "cost": packCost
            }
            axios.post('buy_pack',packToBuy)
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

    let packClass = 'pack '+packType

    return(
        <div className={packClass} onClick={handlePackClick}>
        <div className='pack-info-container'>
            <img className='floppy' src={icon} />
            <div>{packType.toUpperCase()}</div>
            <div>{packCost}</div>
        </div>
    </div>
    )
}