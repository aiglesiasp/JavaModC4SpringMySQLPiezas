/**
 * 
 */
package com.aiglesiasp.javamodc4.springmysql.piezas.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aiglesiasp.javamodc4.springmysql.piezas.dto.Proveedor;

/**
 * @author aitor
 *
 */
public interface IProveedorDAO extends JpaRepository<Proveedor, Integer> {

}
