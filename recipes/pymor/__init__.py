from pythonforandroid.recipe import CythonRecipe

class PymorRecipe(CythonRecipe):
     version = 'master'
     url = 'https://github.com/pymor/pymor/archive/{version}.zip'
     name = 'pymor'

     depends = ['numpy', ]

recipe = PymorRecipe()
