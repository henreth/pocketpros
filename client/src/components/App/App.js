import './App.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, Navigate, useNavigate } from "react-router-dom";
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



export default function App() {

  //Sign Up
  const [signUpFirstName, setSignUpFirstName] = useState("");
  const [signUpLastName, setSignUpLastName] = useState("");
  const [signUpPasswordConfirmation, setSignUpPasswordConfirmation] = useState("");

  // Log In:
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");



  const [user,setUser]= useState(null)
  const [userCards,setUserCards] = useState([]);
  const [userPacks,setUserPacks] = useState({});
  const [userCredits,setUserCredits] = useState(0);
  const [signedIn,setSignedIn] = useState(false)

  useEffect(() => {
    fetch("/me")
      .then((r) => {
        if (r.ok) {
          r.json().then((user) => {
            setUser(user)
            setUserCards(user.cards)
            setUserPacks(user.packs)
            setUserCredits(user.credits)
            setSignedIn(true)
          })}
        else {
          navigate("/");
        }
      })
    },[])

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
        alert('Please sign in with your provided details')
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          alert(error.response.data.errors)
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
              setUserCards(user.cards)
              setUserPacks(user.packs)
              setUserCredits(user.credits)
              setSignedIn(true)
            })}
          else {
            navigate("/");
          }
        })
  
        navigate('/');
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          alert(error.response.data.errors)
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
        setSignedIn(false);
        navigate('/');
        setUser(null);
        setUserCards(null);
        setUserPacks(null);
        setUserCredits(null)
        window.location.reload();
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data.errors);
          alert(error.response.data.errors)
        } else if (error.request) {
          console.log(error.request);
        } else {
          console.log('Error', error.message);
        }
      });

  }

  function handleBackClick(){
    navigate(-1);
  }

  return (
    <React.Fragment>
            <video width="400" autoPlay={true} muted playsInline loop id="bg-video">
        <source src={video} type="video/ogg"></source>
      </video>
      <div id="video-overlay"></div>

      {user?<div className='user-identification'>👤 {user.username} - 🟦 {user.packs['total']} - 🟥 {user.cards.length} - 🪙 {user.credits}</div>:null}
      <Routes>
        <Route exact path="/" element={signedIn?<Home />:<Auth signedIn={signedIn} setSignedIn={setSignedIn} />} />
        <Route path="/collection" element={<Collection user={user} signedIn={signedIn} handleBackClick={handleBackClick} />} />
        <Route path="/cards" element={<YourCards 
          user={user} 
          userCards={userCards}
          setUserCards={setUserCards}
          handleClick={handleClick} 
          signedIn={signedIn} 
          handleBackClick={handleBackClick}
          />} />
        <Route path="/openpacks" element={<OpenPacks user={user} setUser={setUser} setUserCards={setUserCards} signedIn={signedIn} userPacks={userPacks} setUserPacks={setUserPacks}/>} />
        <Route path="/buypacks" element={<BuyPacks user={user} userCredits={userCredits} setUserCredits={setUserCredits} setUser={setUser} setUserCards={setUserCards} signedIn={signedIn} userPacks={userPacks} setUserPacks={setUserPacks}/>} handleBackClick={handleBackClick} />
        <Route path="/auth" element={<Auth setSignedIn={setSignedIn} signedIn={signedIn} />} />
        <Route path="/logIn" element={<LogIn setSignedIn={setSignedIn} signedIn={signedIn} username={username} setUsername={setUsername} password={password} setPassword={setPassword} handleLogInSubmit={handleLogInSubmit} handleBackClick={handleBackClick}/>} />
        <Route path="/signup" element={<SignUp 
            setSignedIn={setSignedIn} 
            signedIn={signedIn} 
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
            handleBackClick={handleBackClick}/>} />
        <Route path="/about" element={<About 
            signedIn={signedIn} 
            userCards={userCards}/>}/>
        <Route path="/profile" element={<Profile 
            handleLogOut={handleLogOut} 
            signedIn={signedIn} 
            setSignedIn={setSignedIn}l
            handleBackClick={handleBackClick}/>} />
        <Route path="/edit" element={<Edit
            user={user}
            setUser={setUser}
            signedIn={signedIn} 
            username={username} 
            setUsername={setUsername}             
            signUpFirstName={signUpFirstName}
            setSignUpFirstName={setSignUpFirstName}
            signUpLastName={signUpLastName}
            setSignUpLastName={setSignUpLastName}
            handleLogOut={handleLogOut}
 />} />
        <Route path="/*" element={signedIn?<Home />:<Auth signedIn={signedIn} setSignedIn={setSignedIn} />} />
      </Routes>
    </React.Fragment>
  );
}

