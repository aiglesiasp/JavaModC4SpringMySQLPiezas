/**
 * 
 */
package com.aiglesiasp.javamodc4.springmysql.piezas.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aiglesiasp.javamodc4.springmysql.piezas.dto.Pieza;

/**
 * @author aitor
 *
 */
public interface IPiezaDAO extends JpaRepository<Pieza, Integer> {

}
