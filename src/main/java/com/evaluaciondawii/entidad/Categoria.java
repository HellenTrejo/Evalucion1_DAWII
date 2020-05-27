package com.evaluaciondawii.entidad;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="categoria")
public class Categoria {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idcategoria")
	private int idCategoria;
	
	@Column(name="nombre")
	private String nombre;
	
	@OneToMany(mappedBy = "categoria",fetch = FetchType.EAGER)
	private List<Proveedor> provedores;

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Proveedor> getProvedores() {
		return provedores;
	}

	public void setProvedores(List<Proveedor> provedores) {
		this.provedores = provedores;
	}
	
	
	
}
