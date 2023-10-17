/* eslint-disable jsx-a11y/img-redundant-alt */
import React from 'react';
import '../style-sheets/testimonio.css'

class Testimonio extends React.Component {
    render() {
        return(
            <div className='contenedor-testimonio'>
            <img
                className='imagen-testimonio'
                src = {require(`../images/${this.props.imagen}.jpg`)}
                alt = {`${this.props.nombre} Photo`}
                />

            <div className='contenedor-texto-testimonio'>
            <p className='nombre-testimonio'><strong>{this.props.nombre}</strong> en {this.props.pais}</p>
            <p className='cargo-testimonio'><em>{this.props.cargo} de {this.props.empresa}</em></p>
            <p className='texto-testimonio'>{this.props.testimonio}</p>

                 </div>
            </div>
    );
    }
}

export default Testimonio;