package com.kanbanboard.server.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto extends BaseDto {
    private int boardId;
    private String title;
    private String description;
    private List<CardDto> cards;
}
