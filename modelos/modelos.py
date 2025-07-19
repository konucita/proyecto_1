from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP
from database import Base


class modelo(Base):
    __tablename__ = "modelos"
    
    id_modelo = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(length=100), nullable=False)
    proveedor = Column(String(length=100), nullable=False)
    capacidad_personas = Column(Integer, nullable=False)
    capacidad_kg = Column(Numeric(10,2), nullable=False)
    combustible_ltrs = Column(Numeric(8,2), nullable=False)
    tipo = Column(String(length=50), nullable=False)
    anio_lanzamiento = Column(Date, nullable=False)