import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function PackToOpen({ user, buying, packType,userPacks, handleOpenPackClick, handleBuyPackClick }) {
    const packLogos = require.context('../../img/pack_logos', true);


    let navigate = useNavigate();
    useEffect(() => {
        if (!user.username) {
          navigate('/');
        } 
      }, [])

    let logo;
    let packCost;
    let cardsPerPack;
    let packProb;
    switch (packType) {
        case 'booster':
            logo = './bwfolder.png';
            packCost = 0;
            cardsPerPack = 6;
            packProb = 'Very Low'
            break
        case ('regular'):
            logo = './bwfloppy.png'
            packCost = 50;
            cardsPerPack = 8;
            packProb = 'Low'
            break
        case ('pro'):
            logo = './bwfork.png';
            packCost = 100;
            cardsPerPack = 7;
            packProb = 'Medium'
            break
        case ('max'):
            logo = './bwglass.png';
            packCost = 175;
            cardsPerPack = 6;
            packProb = 'High'
            break
        case ('ultra'):
            logo = './bwcode.png';
            packCost = 275;
            cardsPerPack = 4;
            packProb = 'Very High'
            break
        case ('studio'):
            logo = './bwcubes.png';
            packCost = 450;
            cardsPerPack = 2;
            packProb = '100%'
            break
    }

    //differentiate action upon clicking pack
    function handlePackClick(){
        if (buying===true){
            handleBuyPackClick(packCost,packType)
        } else if (buying===false){
            handleOpenPackClick(packType)
        }
    }


    let packClass = 'pack ' + packType

    // if price is greater than user credit balance, display alternative cost styling
    let costClass = parseInt(user.credits) < parseInt(packCost) ? 'pack-cost locked' : 'pack-cost'
    
    // price to purchase pack will only display if on the buy packs page
    let marketCost = buying ? <div className='pack-information'>
                                <div className={costClass}>🪙 <b>{packCost}</b>
                                </div>
                            </div> : null

    return (
        <div className={packClass} onClick={handlePackClick}>
            {marketCost}
            <div className='pack-info-container'>
                <img className='pack-logo' src={packLogos(logo)} />
                <div className='pack-title top inverse'>POCKET PROGRAMMERS</div>
                {/* <div className={packType + '-text'} >{packType.toUpperCase()}</div> */}
                <div className={packType + '-text'} >{cardsPerPack} Cards</div>
                <div className={packType + '-text'}><b>{packProb}</b> CHANCE</div>
                <div className={'pack-count ' + packType + '-text'}>{userPacks[packType]}</div>
                <div className={packType + '-text'} >{packType.toUpperCase()}</div>
                <div className='pack-title bottom' >POCKET PROGRAMMERS</div>
            </div>
        </div>
    )
}