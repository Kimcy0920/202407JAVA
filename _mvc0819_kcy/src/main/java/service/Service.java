package service;

import java.util.ArrayList;
import java.util.List;

import board.BoardDAO;
import board.BoardDTO;
import board.Pagination;

public class Service {

    private static final int listSize = 3;
    private static final int paginationSize = 2;

    public List<BoardDTO> getMsgList(int pageNo) {
    	return new BoardDAO().selectList((pageNo - 1) * listSize+1, listSize);
    }

    public ArrayList<Pagination> getPagination(int pageNo) {

        ArrayList<Pagination> pgnList = new ArrayList<Pagination>();

        int numRecords = new BoardDAO().getNumRecords();
        int numPages = (int)Math.ceil((double)numRecords / listSize);

        int firstLink = ((pageNo - 1) / paginationSize)
                        * paginationSize + 1;
        int lastLink = firstLink + paginationSize - 1;
        if (lastLink > numPages) {
            lastLink = numPages;
        }

        if (firstLink > 1) {
            pgnList.add(
                   new Pagination("이전", pageNo - paginationSize, false));
        }

        for (int i = firstLink; i <= lastLink; i++) {
            pgnList.add(new Pagination("" + i, i, i == pageNo));
        }

        if (lastLink < numPages) {
            int tmpPageNo = pageNo + paginationSize;
            if (tmpPageNo > numPages) {
                tmpPageNo = numPages;
            }
            pgnList.add(new Pagination("다음", tmpPageNo, false));
        }

        return pgnList;
    }


    public BoardDTO getMsg(int num) {
        BoardDTO dto = new BoardDAO().selectOne(num, true);

        dto.setTitle(dto.getTitle().replace (" ",  "&nbsp;"));
        dto.setContent(dto.getContent().replace(" ",  "&nbsp;")
                                       .replace("\n", "<br>"));

        return dto;
    }

    public BoardDTO getMsgForWrite(int num) {
        return new BoardDAO().selectOne(num, false);
    }

    public void writeMsg(String writer, String title, String content, String regtime)
            throws Exception {

        if (writer  == null || writer.length()  == 0 ||
            title   == null || title.length()   == 0 ||
            content == null || content.length() == 0 ||
            regtime == null || regtime.length() == 0) {

           throw new Exception("모든 항목이 빈칸 없이 입력되어야 합니다.");
        }

        BoardDTO dto = new BoardDTO();
        dto.setWriter (writer );
        dto.setTitle  (title  );
        dto.setContent(content);
        dto.setRegtime(regtime);

        new BoardDAO().insertOne(dto);
    }

    public void updateMsg(
            String writer, String title, String content, int num)
                    throws Exception {

        if (writer  == null || writer.length()  == 0 ||
            title   == null || title.length()   == 0 ||
            content == null || content.length() == 0) {

           throw new Exception("모든 항목이 빈칸 없이 입력되어야 합니다.");
        }

        BoardDTO dto = new BoardDTO();
        dto.setNum    (num    );
        dto.setWriter (writer );
        dto.setTitle  (title  );
        dto.setContent(content);

        new BoardDAO().updateOne(dto);
    }

    public void deleteMsg(int num) {
        new BoardDAO().deleteOne(num);
    }
}