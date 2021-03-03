# Pruebas Automatizadas de APIs con Karate DSL

[![karate DSL](https://img.shields.io/badge/karate%20DSL-v0.9.4-brightgreen)](https://github.com/intuit/karate/tree/v0.9.4)
[![Maven](https://img.shields.io/badge/maven-v3.6.3-blue)](https://maven.apache.org/download.cgi#downloading-apache-maven-3-6-3)

- Pruebas de APIs desarrolladas con la herramienta open-source Karate DSL
- Las pruebas tiene dos demos, la primera son tests encarados de forma básica y el otro refactorizado usando funcionalidades muy útiles del framework
- La API usado de ejemplo para los tests es el siguiente: https://github.com/frankramle/api-rest-node-express

### Pre-requisitos 📋

- Java 1.8
- Maven 3.6.3
- SO W10, Ubuntu


### Plugins para la ejecución desde IDE 🔌

- Cucumber for java
- Gherkin


### Instalación 🔧

_Para instalar todas las dependencias_

```
$ mvn clean install -DskipTests
```


### Run Test desde el IDE para un escenario 📢

_Colocar el ratón sobre el scenario o la feature a ejecutar. Luego click derecho en "Run"_


### Run Test FirstDemo 🚀

```
$ mvn clean test -Dtest=FirstDemoRunner
```


### Run Test SecondDemo 🚀

```
$ mvn clean test -Dtest=SecondDemoRunner
```


### Run Full Test 🚀

```
$ mvn clean test "-Dkarate.options=--tags ~@ignore"
```


### Construido con 🛠

* [Karate DSL](https://github.com/intuit/karate) - Framework usado para los test
* [Maven](https://maven.apache.org/) - Manejador de dependencias
* [jUnit5](https://junit.org/junit5/docs/current/user-guide/#overview) - Lanzador del framework de test


## Esquema usado en la apis 📖

```
{
  "id": "#notnull",
  "nombres": "#string",
  "apellido": "#string",
  "direccion": "#string",
  "cod_postal": "#string",
  "telefono": "#string"
} 
```


## Autor

* **Adrián Ramos Leon** - [frankramle](https://github.com/frankramle) 😊