import React from 'react';
import { useNavigate } from "react-router-dom";

export default function Home() {
  document.title = 'Pocket Pros - Home';

  let navigate = useNavigate();

  return (
    <React.Fragment>
      <div id="menu">
        <div className="menu__slot" onClick={() => { navigate('/collection') }}>
          <div className="blackscreen"></div>
          <div className="char turing"></div>
          <div className="slot-item-one">
            <h3>Your Deck</h3>
            <p>View your current collection and open any unused packs.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/buypacks') }}>
          <div className="blackscreen"></div>
          <div className="char hopper"></div>
          <div className="slot-item-two">
            <h3>Buy Packs</h3>
            <p>Use credits to buy more card packs.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/marketplace') }}>
          <div className="blackscreen"></div>
          <div className="char reddy"></div>
          <div className="slot-item-three">
            <h3>Marketplace</h3>
            <p>Buy and sell cards with other users.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/about ') }}>
          <div className="blackscreen"></div>
          <div className="char hamilton"></div>
          <div className="slot-item-four">
            <h3>About</h3>
            <p>Learn more about this app and the programmer behind it.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/profile ') }}>
          <div className="blackscreen"></div>
          <div className="char annie"></div>
          <div className="slot-item-five">
            <h3>Profile</h3>
            <p>View and edit your account details.</p>
          </div>
        </div>
      </div>

    </React.Fragment>
  );
}

