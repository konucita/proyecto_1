from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, Boolean
from database import Base


class Aerolinea(Base):
    __tablename__ = "aerolineas"
    
    id_aerolinea = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(length=100), nullable=False)
    pais_origen = Column(String(length=100), nullable=False)
    rating = Column(Integer, nullable=False)
    activa = Column(Boolean, nullable=False)