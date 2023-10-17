
import React from 'react';
import './App.css';
import Testimonio from './components/testimonios';

class App extends React.Component {
  render()
  {
    return (
      <div className='App'>
  
      <div>
      <h1>Testimonios de casos de exitos de FreeCodeCamp</h1>
      <Testimonio
        nombre = 'Andrew Smith'
        pais = 'Nueva Zelanda'
        imagen = 'Andrew Smith'
        cargo = 'Ingeniero en Telecomunicaciones'
        empresa = 'Juniper Networks'
        testimonio = 'Anteriormente me habia graduado como ingeniero en telecomunicaciones, pero gracias a FreeCodeCamp pude descubrir un mundo sin limites con la integracion de otros lenguajes de programacion para la automatizacion y manejo de redes'
      />
  
  <Testimonio
        nombre = 'Madison Valenti'
        pais = 'Italia'
        imagen = 'Madison Valenti'
        cargo = 'Consultora en infraestructura de la informacion'
        empresa = 'VSCO'
        testimonio = 'Gracias a FreeCodeCamp pude lograr mi objetivo de poder aprender a programar de una forma muy efectiva con el proposito de ser mas eficientes en los procesos que requeria mi empresa'
      />
  
  <Testimonio
        nombre = 'Oustin Hoggen'
        pais = 'Australia'
        imagen = 'Oustin Hoggen'
        cargo = 'Programador'
        empresa = 'Microsoft'
        testimonio = 'He aprendido las mejores practicas y con mejor detalle sobre la programacion gracias a FreeCodeCamp, por su enfoque tan metodologico al aprendizaje sobre lo mas importante del desarrollo de lenguajes de programacion'
      />
  
  <Testimonio
        nombre = 'Sandra Cols'
        pais = 'Irlanda'
        imagen = 'Sandra Cols'
        cargo = 'Programadora'
        empresa = 'Amazon'
        testimonio = 'Tuve una gran experiencia de aprendizaje con FreeCodeCamp gracias al apoyo que nos brinda de una forma muy concisa sobre el desarrollo de los diferentes lenguajes de programacion'
      />
      </div>
      </div>
    );
  }
}

export default App;
