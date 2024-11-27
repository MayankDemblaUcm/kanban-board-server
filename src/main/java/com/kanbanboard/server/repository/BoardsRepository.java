package com.kanbanboard.server.repository;

import com.kanbanboard.server.entity.BoardEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardsRepository extends JpaRepository<BoardEntity,Integer> {

}
