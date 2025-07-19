from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP
from database import Base


class aeropuerto(Base):
    __tablename__ = "aeropuertos"
    
    id_aeropuerto = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(length=100), nullable=False)
    pais = Column(String(length=100), nullable=False)
    ciudad = Column(String(length=100), nullable=False)