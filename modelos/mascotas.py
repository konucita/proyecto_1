from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, ForeignKey
from database import Base


class mascota(Base):
    __tablename__ = "mascotas"
    
    id_mascota = Column(Integer, primary_key=True, index=True)
    id_pasajero = Column(Integer, ForeignKey(column="pasajeros.id_pasajero"), nullable=False)
    id_reserva = Column(Integer, ForeignKey(column="reservas.id_reserva"), nullable=False)
    nombre = Column(String(length=100), nullable=False)
    raza = Column(String(length=100), nullable=False)
    tipo = Column(String(length=25), nullable=False)
    peso = Column(Numeric(5,2), nullable=False)
    fecha_registro = Column(TIMESTAMP, nullable=False)