package com.evaluaciondawii.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluaciondawii.entidad.Categoria;
import com.evaluaciondawii.repositorio.CategoriaRepositorio;

@Service
public class CategoriaServicioImpl implements CategoriaServicio {

	@Autowired
	private CategoriaRepositorio repositorio;
	
	
	@Override
	public List<Categoria> listaCategoria() {
		return repositorio.findAll();
	}

}
