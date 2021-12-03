# Automatización de Casos de Prueba - Nahual

**Instalación**

Se necesita tener instalado Ruby 3.0.2.

Además de las siguientes gemas:

```
$ gem install cucumber
$ gem install capybara
$ gem install selenium-webdriver
$ gem install selenium
$ gem install rspec
$ gem install capybara-screenshot
$ gem install sinatra
```

**Ejecución**

En la carpeta _features_ se debe ejecutar el archivo desado, por ejemplo:

```
$ cd features/verifyAccess.feature
```

Para ejecutar un _feature_ y exportar los resultados en formato HTML:

```
$ cd features/verifyAccess.feature -f html -o verifyAccess.html
```

Para ejecutar todos los _features_:

```
$ cucumber features
```

## Descripción del sistema

El sistema Nahual Argentina es una página web que ayuda a la organización a gestionar sus actividades y las de sus voluntarios y permite descargar la información para su uso fuera de la página web.

## Herramientas utilizadas

**Cucumber:** Es una herramienta de software que soporta el desarrollo dirigido por el comportamiento (BDD, por sus siglas en inglés). Un elemento central del enfoque BDD de Cucumber es su analizador de lenguaje ordinario llamado Gherkin. Permite especificar los comportamientos esperados del software en un lenguaje lógico que los usuarios pueden entender.

**Capybara:** Es un _framework_ que se utiliza para crear pruebas funcionales que simulan cómo los usuarios interactuarían con una aplicación.
