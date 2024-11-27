package com.kanbanboard.server.service;

import com.kanbanboard.server.dto.ColumnDto;
import com.kanbanboard.server.exception.ColumnNotFoundException;

import java.util.List;
import java.util.Optional;

public interface ColumnService {
    List<ColumnDto> getColumnsByBoardId(int boardId);
    Optional<ColumnDto> getColumnById(int boardId, int columnId) throws ColumnNotFoundException;
    ColumnDto createColumn(int boardId, ColumnDto columnDto);
    Optional<ColumnDto> updateColumn(int boardId, int columnId, ColumnDto updatedColumnDto) throws ColumnNotFoundException;
    void deleteColumn(int boardId, int columnId) throws ColumnNotFoundException;
}
