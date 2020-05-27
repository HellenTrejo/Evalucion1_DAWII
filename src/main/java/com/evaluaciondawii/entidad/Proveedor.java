package com.evaluaciondawii.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="proveedor")
public class Proveedor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idProveedor;
	
	@Column(name="razonProveedor")
	private String razonProveedor;
	
	@Column(name="dirProveedor")
	private String dirProveedor;
	
	@Column(name="rucProveedor")
	private String rucProveedor;
	
	@Column(name="fecRegProveedor")
	private String fecRegProveedor;
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "idCategoria")
	private Categoria categoria;

	public int getIdProveedor() {
		return idProveedor;
	}

	public void setIdProveedor(int idProveedor) {
		this.idProveedor = idProveedor;
	}

	public String getRazonProveedor() {
		return razonProveedor;
	}

	public void setRazonProveedor(String razonProveedor) {
		this.razonProveedor = razonProveedor;
	}

	public String getDirProveedor() {
		return dirProveedor;
	}

	public void setDirProveedor(String dirProveedor) {
		this.dirProveedor = dirProveedor;
	}

	public String getRucProveedor() {
		return rucProveedor;
	}

	public void setRucProveedor(String rucProveedor) {
		this.rucProveedor = rucProveedor;
	}

	public String getFecRegProveedor() {
		return fecRegProveedor;
	}

	public void setFecRegProveedor(String fecRegProveedor) {
		this.fecRegProveedor = fecRegProveedor;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	
	
	
}
