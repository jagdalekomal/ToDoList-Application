package com.todo.dao;

import java.util.List;

import javax.transaction.TransactionScoped;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionalEventListener;

import com.todo.entity.Task;

@Component
public class TaskDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int addTask(Task task) {
		return (int) hibernateTemplate.save(task);
	}

	@Transactional
	public Task getTask(int id) {
		return hibernateTemplate.get(Task.class, id);
	}

	@Transactional
	public List<Task> getAllTask() {
		return hibernateTemplate.loadAll(Task.class);
	}
	
	@Transactional
	public void deleteTask(int id)
	{
		Task task= hibernateTemplate.get(Task.class, id);
		hibernateTemplate.delete(task);
	}
}
