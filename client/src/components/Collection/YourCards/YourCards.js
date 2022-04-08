import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';



export default function YourCards({ user, userCards, setUserCards, handleBackClick, signedIn }) {
  document.title = 'Pocket Pros - Your Cards';

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])


  // 
  function map(val, minA, maxA, minB, maxB) {
    return minB + ((val - minA) * (maxB - minB)) / (maxA - minA);
  }

  function Card3D(card, ev) {
    let img = card.querySelector('img');
    let imgRect = card.getBoundingClientRect();
    let width = imgRect.width;
    let height = imgRect.height;
    let mouseX = ev.offsetX;
    let mouseY = ev.offsetY;
    let rotateY = map(mouseX, 0, 180, -25, 25);
    let rotateX = map(mouseY, 0, 250, 25, -25);
    let brightness = map(mouseY, 0, 250, 1.5, 0.5);

    img.style.transform = `rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
    img.style.filter = `brightness(${brightness})`;
  }

  let cards = document.querySelectorAll('.card3d');

  cards.forEach((card) => {
    card.addEventListener('mousemove', (ev) => {
      Card3D(card, ev);
    });

    card.addEventListener('mouseleave', (ev) => {
      let img = card.querySelector('img');

      img.style.transform = 'rotateX(0deg) rotateY(0deg)';
      img.style.filter = 'brightness(1)';
    });
  });

  // --------------------------------

  function map(val, minA, maxA, minB, maxB) {
    return minB + ((val - minA) * (maxB - minB)) / (maxA - minA);
  }

  function Card3D(card, ev) {
    let img = card.querySelector('div');
    let mouseX = ev.offsetX;
    let mouseY = ev.offsetY;
    let rotateY = map(mouseX, 0, 180, -25, 25);
    let rotateX = map(mouseY, 0, 250, 25, -25);
    let brightness = map(mouseY, 0, 250, 1.5, 0.5);

    img.style.transform = `rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
    img.style.filter = `brightness(${brightness})`;
  }

  let cardElements = document.querySelectorAll('.card');

  cardElements.forEach((card) => {
    card.addEventListener('mousemove', (ev) => {
      Card3D(card, ev);
    });

    card.addEventListener('mouseleave', (ev) => {
      let img = card.querySelector('.noImage');

      img.style.transform = 'rotateX(0deg) rotateY(0deg)';
      img.style.filter = 'brightness(1)';
    });
  });      // 


  function displayCards(data) {
    return data.map(card => {
      return (
        <div key={card.id} className="card"><div className="noImage">{card.rarity} {card.character.first_name} {card.character.last_name}</div></div>
      )
    })
  }

  return (
    <div className='yourCards-container'>
      <div className="card"><div className="noImage">1</div></div>
      {displayCards(userCards.splice(0, 4))}
      {/* <div class="card"><div class="noImage">2</div></div>
          <div class="card"><div class="noImage">3</div></div>
          <div class="card"><div class="noImage">4</div></div>
          <div class="card"><div class="noImage">5</div></div> */}
    </div>
  )
}