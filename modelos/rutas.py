from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, ForeignKey
from database import Base


class ruta(Base):
    __tablename__ = "rutas"
    
    id_ruta = Column(Integer, primary_key=True, index=True)
    aeropuerto_origen = Column(Integer, ForeignKey(column="aeropuertos.id_aeropuerto"), nullable=False)
    aeropuerto_destino = Column(Integer, ForeignKey(column="aeropuertos.id_aeropuerto"), nullable=False)
    descripcion = Column(Text, nullable=False)
    distancia_km = Column(Numeric(10,2), nullable=False)
    tiempo_min = Column(Integer, nullable=False)
