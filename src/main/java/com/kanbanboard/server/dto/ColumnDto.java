package com.kanbanboard.server.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ColumnDto {
    private int columnId;
    private String name;
    private int boardId;
    private int position;
    private List<CardDto> cards;
}
