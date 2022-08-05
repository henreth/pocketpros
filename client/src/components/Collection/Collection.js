import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function Collection({ signedIn }) {
  document.title = 'Pocket Pros - Collection';

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])

  function handleOpenPacksClick() {
    navigate('/openpacks');
  }

  function handleYourCardsClick() {
    navigate('/cards');
  }


  return (
    <React.Fragment>
      <div id="menu">
        <div className="menu__slot" onClick={handleYourCardsClick}>
          <div className="blackscreen"></div>
          <div className="char lamarr"></div>
          <div className="slot-item-1">
            <h3>Your Cards</h3>
            <p>View all of your cards in one place.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleOpenPacksClick}>
          <div className="blackscreen"></div>
          <div className="char vanrossum"></div>
          <div className="slot-item-2">
            <h3>Open Packs</h3>
            <p>Open any available packs to unlock more cards.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => navigate('/')}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
          <div className="slot-item-3">
            <h3>Back</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

