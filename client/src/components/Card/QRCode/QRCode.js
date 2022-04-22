import React from 'react';
import { QRCode } from 'react-qrcode-logo';

export default function QrCode(props) {

  const defaultOptions = {
    ecLevel: 'M',
    enableCORS: false,
    size: 100,
    quietZone: 0,
    bgColor: "transparent",
    fgColor: "#000000",
    qrStyle: "dots"
  }

 const options = { ...defaultOptions, ...props.options }

  return <QRCode value={props.url} {...options} />;
};