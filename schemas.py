from pydantic import BaseModel
from typing import Optional

class CrearAerolinea (BaseModel):
    nombre: str
    pais_origen: str
    rating: int
    activa: bool

class DevolverAerolinea (BaseModel):
    id_aerolinea: int | None = None 
    nombre: str | None = None 
    pais_origen: str | None = None 
    rating: int | None = None 
    activa: bool | None = None 

class ActualizarAerolinea (BaseModel):
    nombre: str
    pais_origen: str
    rating: int
    activa: bool