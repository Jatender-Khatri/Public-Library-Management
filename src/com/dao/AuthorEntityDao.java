package com.dao;

import java.util.List;

import com.models.AuthorEntitiy;

public interface AuthorEntityDao {
	public Integer addAuthor(AuthorEntitiy author);

	public List<AuthorEntitiy> getAuthors();

	public Integer deleteAuthor(AuthorEntitiy author);

	public AuthorEntitiy getAuthorById(int id);

	public Integer updateAuthor(AuthorEntitiy author);

	public AuthorEntitiy getAuthorByName(String name);
}
