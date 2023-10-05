/* eslint-disable jsx-a11y/img-redundant-alt */
import React from 'react';
import '../style-sheets/testimonio.css'

export function Testimonio(props)
{
    return(
            <div className='contenedor-testimonio'>
            <img
                className='imagen-testimonio'
                src = {require(`../images/${props.imagen}.jpg`)}
                alt = 'Andrew Smith Photo'
                />

            <div className='contenedor-texto-testimonio'>
            <p className='nombre-testimonio'>{props.nombre} en {props.pais}</p>
            <p className='cargo-testimonio'>{props.cargo} de {props.empresa}</p>
            <p className='texto-testimonio'>{props.testimonio}</p>

                 </div>
            </div>
    );
}