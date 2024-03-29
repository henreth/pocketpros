import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Home from '../Home/Home'
import Collection from '../Collection/Collection'
import YourCards from '../Collection/YourCards/YourCards'
import OpenPacks from '../Collection/OpenPacks/OpenPacks'
import BuyPacks from '../BuyPacks/BuyPacks'
import Auth from '../Auth/Auth';
import LogIn from '../Auth/LogIn/LogIn';
import SignUp from '../Auth/SignUp/SignUp';
import About from '../About/About';
import Profile from '../Profile/Profile';
import Edit from '../Auth/Edit/Edit';

import video from '../../video/rainbowrain.mp4'
import Marketplace from '../Marketplace/Marketplace';
import LogOut from '../Auth/LogOut/LogOut';

export default function App() {

  //Sign Up:
  const [signUpFirstName, setSignUpFirstName] = useState("");
  const [signUpLastName, setSignUpLastName] = useState("");
  const [signUpPasswordConfirmation, setSignUpPasswordConfirmation] = useState("");

  // Log In:
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  // Users:
  const [user, setUser] = useState({});
  const [users, setUsers] = useState([]);

  // Market:
  let [marketCards, setMarketCards] = useState([]);
  let [marketSelectedRarity, setMarketSelectedRarity] = useState('all')
  let [marketSearchTerm, setMarketSearchTerm] = useState('');

  // Packs:
  const [openedCards, setOpenedCards] = useState([]);
  const [showModal, setShowModal] = useState(false);


  useEffect(() => {
    fetch("/me")
      .then((r) => {
        if (r.ok) {
          r.json().then((user) => setUser(user))
        }
        else {
          navigate("/");
        }
      })

    let marketCardsReq = axios.get('/marketcards')
    let usersReq = axios.get('/users')
    axios.all([marketCardsReq, usersReq])
      .then(axios.spread((res1,res2) => {
        setMarketCards(res1.data)
        setUsers(res2.data)
      }))

  }, [])


  let navigate = useNavigate();
  function handleClick() {
    navigate("/");
  }

  function handleSignUpSubmit(e) {
    e.preventDefault();
    const signUpDetails = {
      "first_name": signUpFirstName,
      "last_name": signUpLastName,
      username,
      password,
      "password_confirmation": signUpPasswordConfirmation,
    }
    axios.post("/signup", signUpDetails)
      .then(r => {
        setUsername('');
        setPassword('');
        setSignUpPasswordConfirmation('');
        setSignUpFirstName('');
        setSignUpLastName('');
        navigate('/login')
        alert('Account Created!\nPlease sign in with your provided details')
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          let msg = '';
          error.response.data.errors.map(error => { msg += error + '\n' })
          alert(msg)
        } else if (error.request) {
          console.log(error.request);
        } else {
          console.log('Error', error.message);
        }
      });

  }

  function handleLogInSubmit(e) {
    e.preventDefault();
    const logInDetails = {
      username,
      password
    }

    axios.post("/login", logInDetails)
      .then((r) => {
        fetch("/me")
          .then((r) => {
            if (r.ok) {
              r.json().then((user) => {
                setUser(user)

                let marketCardsReq = axios.get('/marketcards')
                let usersReq = axios.get('/users')
                axios.all([marketCardsReq, usersReq])
                  .then(axios.spread((res1,res2) => {
                    setMarketCards(res1.data)
                    setUsers(res2.data)
                  }))

              })
            }
            else {
              navigate("/");
            }
          })

        navigate('/');
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          let msg = '';
          error.response.data.errors.map(error => { msg += error + '\n' })
          alert(msg)
        } else if (error.request) {
          console.log(error.request);
        } else {
          console.log('Error', error.message);
        }
      });
  }

  function handleLogOut() {
    axios.delete('/logout')
      .then(r => {
        alert('You have now been logged out.')
        navigate('/');
        setUser({});
        window.location.reload();
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          let msg = '';
          error.response.data.errors.map(error => { msg += error + '\n' })
          alert(msg)
        } else if (error.request) {
          console.log(error.request);
        } else {
          console.log('Error', error.message);
        }
      });

  }


  // ? Pack Functions

  function handleBuyPackClick(packCost, packType) {
    if (user.credits < packCost) {
      alert(`ERROR: You do not have enough credits to purchase this pack.`)
    } else {
      let packToBuy = {
        "pack": packType,
        "cost": packCost
      }
      axios.post('buypack', packToBuy)
        .then(r => {
          alert(`${packType[0].toUpperCase() + packType.slice(1,)} Pack bought!`)
          //update user information
          fetch("/me")
            .then((r) => {
              if (r.ok) {
                r.json().then((user) => setUser(user)
                )
              }
            })
        }

        )
        .catch(function (error) {
          if (error.response) {
            console.log(error.response.data.errors);
            let msg = '';
            error.response.data.errors.map(error => { msg += error + '\n' })
            alert(msg)
          } else if (error.request) {
            console.log(error.request);
          } else {
            console.log('Error', error.message);
          }
        });

    }

  }

  function handleOpenPackClick(packType) {
    if (user.packs[packType] == 0) {
      alert(`ERROR: You have no ${packType[0].toUpperCase() + packType.slice(1, packType.length)} Packs left!`)
    } else {
      axios.get(`/${packType}_pack`)
        .then(r => {
          document.title = (`Opening ${packType} Pack`)
          setOpenedCards(r.data)
          setShowModal(true)
          //update user information
          fetch("/me")
            .then((r) => {
              if (r.ok) {
                r.json().then((user) => {
                  setUser(user)
                })
              }
            })
        }
        )
    }

  }


  const userIDBar = user.username ? <div className='user-id-bar'><div className='user-identification'>👤 {user.username} - 🟦 {user.packs['total']} - 🟥 {user.cards.length} - 🪙 {user.credits}</div></div> : null;
  return (
    <React.Fragment>
      <video width="400" autoPlay={true} muted playsInline loop id="bg-video">
        <source src={video} type="video/ogg"></source>
      </video>
      <div id="video-overlay"></div>

      {userIDBar}
      <Routes>
        <Route exact path="/" element={user.username ? <Home /> : <Auth user={user} />} />
        <Route path="/collection" element={<Collection user={user} />} />
        <Route path="/cards" element={<YourCards
          user={user}
          setUser={setUser}
          marketCards={marketCards}
          setMarketCards={setMarketCards}
          users={users}
          setMarketSearchTerm={setMarketSearchTerm}
          setMarketSelectedRarity={setMarketSelectedRarity}
        />} />
        <Route path="/openpacks" element={<OpenPacks
          user={user}
          setUser={setUser}
          handleOpenPackClick={handleOpenPackClick}
          handleBuyPackClick={handleBuyPackClick}
          openedCards={openedCards}
          setOpenedCards={setOpenedCards}
          showModal={showModal}
          setShowModal={setShowModal}
        />} />
        <Route path="/buypacks" element={<BuyPacks
          user={user}
          setUser={setUser}
          handleOpenPackClick={handleOpenPackClick}
          handleBuyPackClick={handleBuyPackClick}
        />} />
        <Route path="/marketplace" element={<Marketplace
          user={user}
          setUser={setUser}
          marketCards={marketCards}
          setMarketCards={setMarketCards}
          handleClick={handleClick}
          users={users}
          marketSearchTerm={marketSearchTerm}
          setMarketSearchTerm={setMarketSearchTerm}
          marketSelectedRarity={marketSelectedRarity}
          setMarketSelectedRarity={setMarketSelectedRarity}
        />} />
        <Route path="/auth" element={<Auth user={user} />} />
        <Route path="/logIn" element={<LogIn
          user={user}
          username={username}
          setUsername={setUsername}
          password={password}
          setPassword={setPassword}
          handleLogInSubmit={handleLogInSubmit}
        />} />
        <Route path="/signup" element={<SignUp
          user={user}
          username={username}
          setUsername={setUsername}
          password={password}
          setPassword={setPassword}
          signUpPasswordConfirmation={signUpPasswordConfirmation}
          setSignUpPasswordConfirmation={setSignUpPasswordConfirmation}
          signUpFirstName={signUpFirstName}
          setSignUpFirstName={setSignUpFirstName}
          signUpLastName={signUpLastName}
          setSignUpLastName={setSignUpLastName}
          handleSignUpSubmit={handleSignUpSubmit}
        />} />
        <Route path="/about" element={<About
          user={user}

        />} />
        <Route path="/profile" element={<Profile
          handleLogOut={handleLogOut}
        />} />
        <Route path="/edit" element={<Edit
          user={user}
          setUser={setUser}
        />} />
        <Route path="/logout" element={<LogOut
          user={user}
          setUser={setUser}
          handleLogOut={handleLogOut}
        />} />
        <Route path="/*" element={user.username ? <Home /> : <Auth user={user} />} />
      </Routes>
    </React.Fragment>
  );
}

