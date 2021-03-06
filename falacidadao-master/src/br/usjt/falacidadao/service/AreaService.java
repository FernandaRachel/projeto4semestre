package br.usjt.falacidadao.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.falacidadao.dao.AreaDAO;
import br.usjt.falacidadao.model.Area;

@Service
public class AreaService {

	@Autowired
	AreaDAO dao;

	@Transactional
	public void salvar(Area area) {
		dao.salvar(area);
	}

	@Transactional
	public void excluir(Area area) {
		dao.excluir(area);
	}

	public Area buscaPorId(Long id) {
		return dao.buscaPorId(id);
	}

	public List<Area> listar() {
		return dao.listar();
	}

}
