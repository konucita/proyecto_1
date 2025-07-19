from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, ForeignKey, Boolean
from database import Base


class reserva(Base):
    __tablename__ = "reservas"
    
    id_reserva = Column(Integer, primary_key=True, index=True)
    id_pasajero = Column(Integer, ForeignKey(column="pasajeros.id_pasajero"), nullable=False)
    id_vuelo = Column(Integer, ForeignKey(column="vuelos.id_vuelo"), nullable=False)
    cancelado = Column(Boolean, nullable=False)
    fecha_reserva = Column(TIMESTAMP, nullable=False)