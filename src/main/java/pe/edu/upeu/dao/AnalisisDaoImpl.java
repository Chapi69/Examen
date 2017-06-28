/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import pe.edu.upeu.configuration.SysDataAccess;
import pe.edu.upeu.model.Analisis;

/**
 *
 * @author Alumnos
 */
@Repository("AnalisisDao")
public class AnalisisDaoImpl extends SysDataAccess<Integer, Analisis> implements AnalisisDao {

    @SuppressWarnings("unchecked")
    public List<Analisis> listarEntidad() {
        return getListAll();
    }

    @Override
    public Analisis buscarEntidadId(int id) {
        return getByKey(id);
    }

    @Override
    public void guardarAnalisis(Analisis analisis) {
        savev(analisis);
    }

    public void eliminarEntidadId(int id) {
        delete(id);
    }

    @Override
    public void modificarEntidadId(Analisis analisis) {
        update(analisis);
    }

    public List<Analisis> listarPorNombre(String nombre) {
        return (List<Analisis>) sessionFactory.getCurrentSession()
                .createQuery("select a from Analisis a where a.idPaciente.idPersona.nombres like ? ")
                .setString(0, "%" + nombre + "%")
                .list();
    }

}
