/**
 * 
 */
package com.aiglesiasp.javamodc4.springmysql.piezas.service;

import java.util.List;

import com.aiglesiasp.javamodc4.springmysql.piezas.dto.Suministra;

/**
 * @author aitor
 *
 */
public interface ISuministraService {
	// Metodos del CRUD
	public List<Suministra> listarSuministra(); // Listar All

	public Suministra guardarSuministra(Suministra suministra); // Guarda un suministra CREATE

	public Suministra suministraById(int id); // Leer datos de un suministra READ

	public Suministra actualizarSuministra(Suministra suministra); // Actualiza datos del suministra UPDATE

	public void eliminarSuministra(int id);// Elimina el suministra DELETE

}
