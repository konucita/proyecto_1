from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP
from database import Base


class tripulacion(Base):
    __tablename__ = "tripulacion" #empleados del avion, no pasajeros
    
    id_tripulacion = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(length=100), nullable=False)
    apellido = Column(String(length=100), nullable=False)
    email = Column(String(length=255), nullable=False)
    telefono = Column(String(length=15), nullable=False)
    cargo = Column(String(length=50), nullable=False)
    fecha_registro = Column(TIMESTAMP, nullable=False)