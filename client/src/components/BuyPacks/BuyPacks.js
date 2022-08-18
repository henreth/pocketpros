import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";
import Pack from '../PackToOpen/PackToOpen'


export default function BuyPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn, handleBuyPackClick, handleOpenPackClick }) {
    document.title = 'Pocket Pros - Open Packs';

    let packTypes = ["regular", "pro", "max", "ultra", "studio"]
    let navigate = useNavigate();

    useEffect(() => {
        if (!user.username) {
            navigate('/');
        }
    }, [])

    let packsToDisplay = packTypes.map(packType => {
        return (
            <Pack buying={true} packType={packType} user={user} setUser={setUser} setUserCards={setUserCards} signedIn={signedIn} userPacks={userPacks} setUserPacks={setUserPacks} handleBuyPackClick={handleBuyPackClick} handleOpenPackClick={handleOpenPackClick} />
        )
    })


    function handleClickBack() {
        navigate(-1)
    }

    return (
        <React.Fragment>
            <div className='yourCards-overlay'></div>
            <div className='packs-container' >
                {packsToDisplay}
            </div>
            <div className="back_button" onClick={handleClickBack}>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
        </React.Fragment>

    )
}