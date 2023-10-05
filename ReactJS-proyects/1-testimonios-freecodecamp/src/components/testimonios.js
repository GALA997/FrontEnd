/* eslint-disable jsx-a11y/img-redundant-alt */
import React from 'react';

export function Testimonio()
{
    return(
            <div className='contenedor-testimonio'>
            <img
                className='imagen-testimonio'
                src = {require('../images/Andrew Smith.jpg')}
                alt = 'Andrew Smith Photo'
                />

            <div className='contenedor-texto-testimonio'>
            <p className='nombre-testimonio'>Andrew Smith</p>
            <p className='cargo-testimonio'>Ingeniero en Telecomunicaciones en Cisco Nueva Zelanda</p>
            <p className='texto-testimonio'>Testimonio de Andrew</p>

                 </div>
            </div>
    );
}