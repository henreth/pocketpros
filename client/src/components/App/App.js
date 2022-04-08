import './App.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes,Navigate, useNavigate } from "react-router-dom";
import axios from 'axios';

import Home from '../Home/Home'
import Collection from '../Collection/Collection'
import YourCards from '../Collection/YourCards/YourCards'
import Auth from '../Auth/Auth';
import LogIn from '../Auth/LogIn/LogIn';
import SignUp from '../Auth/SignUp/SignUp';
import Profile from '../Profile/Profile';

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
  const [signedIn,setSignedIn] = useState(false)

  useEffect(() => {
    fetch("/me")
      .then((r) => {
        if (r.ok) {
          r.json().then((user) => {
            setUser(user)
            setUserCards(user.cards)
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
      credits: '25'
    }
    console.log(signUpDetails)
    axios.post("/signup", signUpDetails)
      .then(r => {
        setUsername('');
        setPassword('');
        setSignUpPasswordConfirmation('');
        setSignUpFirstName('');
        setSignUpLastName('');
        navigate('/login')
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
        setSignedIn(true);
        setUser(r.data);
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
        setSignedIn(false);
        navigate('/');
        window.location.reload();
        setUser(null);
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
      {user?<div className='user-identification'>👤{user.username} - 🟦 {user.packs['total']}- 🟥 {user.cards.length} - 🪙{user.credits}</div>:null}
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
        <Route path="/profile" element={<Profile handleLogOut={handleLogOut} signedIn={signedIn} setSignedIn={setSignedIn} handleBackClick={handleBackClick}/>} />
        <Route path="/*" element={signedIn?<Home />:<Auth signedIn={signedIn} setSignedIn={setSignedIn} />} />
      </Routes>
    </React.Fragment>
  );
}

