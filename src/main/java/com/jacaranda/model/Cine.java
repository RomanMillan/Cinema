package com.jacaranda.model;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Cine {

	@Id
	private String cine;
	@Column(name="ciudad_cine")
	private String ciudadCine;
	@Column(name="direccion_cine")
	private String direccionCine;
	
//	constructores
	public Cine(String cine, String ciudadCine, String direccionCine) {
		super();
		this.cine = cine;
		this.ciudadCine = ciudadCine;
		this.direccionCine = direccionCine;
	}
	public Cine() {
		super();
	}
	
//	getter and setters
	public String getCine() {
		return cine;
	}
	public void setCine(String cine) {
		this.cine = cine;
	}
	public String getCiudadCine() {
		return ciudadCine;
	}
	public void setCiudadCine(String ciudadCine) {
		this.ciudadCine = ciudadCine;
	}
	public String getDireccionCine() {
		return direccionCine;
	}
	public void setDireccionCine(String direccionCine) {
		this.direccionCine = direccionCine;
	}
	
//	Hashcode and equeals
	@Override
	public int hashCode() {
		return Objects.hash(cine);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cine other = (Cine) obj;
		return Objects.equals(cine, other.cine);
	}
	

	
	
}
