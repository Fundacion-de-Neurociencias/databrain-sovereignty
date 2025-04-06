import pytest
import sys
import os

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

def test_module_import():
    try:
        import databrain_sovereignty
        assert True
    except ImportError:
        assert False, "No se pudo importar el módulo 'databrain_sovereignty'"

def test_submodule_import():
    try:
        from databrain_sovereignty import submodulo
        assert True
    except ImportError:
        assert False, "No se pudo importar el submódulo"

def test_function_exists():
    try:
        from databrain_sovereignty import funcion_ejemplo
        assert callable(funcion_ejemplo)
    except (ImportError, AttributeError):
        assert False, "No se pudo acceder a la función funcion_ejemplo"

def test_class_exists():
    try:
        from databrain_sovereignty import ClaseEjemplo
        assert isinstance(ClaseEjemplo, type)
    except (ImportError, AttributeError):
        assert False, "No se pudo acceder a la clase ClaseEjemplo"

def test_biomarker_compatibility():
    try:
        from databrain_sovereignty import BiomarkerProcessor
        assert isinstance(BiomarkerProcessor, type)
        assert hasattr(BiomarkerProcessor, 'normalize')
        assert hasattr(BiomarkerProcessor, 'classify')
    except (ImportError, AttributeError):
        assert False, "No se pudo acceder a la funcionalidad de biomarcadores"
