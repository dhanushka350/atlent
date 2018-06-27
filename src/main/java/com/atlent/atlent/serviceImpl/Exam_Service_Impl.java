package com.atlent.atlent.serviceImpl;

import com.atlent.atlent.dto.ExamDto;
import com.atlent.atlent.dto.ExamScheduleDto;
import com.atlent.atlent.dto.ExamScheduleTableDataDto;
import com.atlent.atlent.models.Exam;
import com.atlent.atlent.models.ExamSchedule;
import com.atlent.atlent.models.Registration;
import com.atlent.atlent.models.Student;
import com.atlent.atlent.repository.ExamDao;
import com.atlent.atlent.repository.ExamScheduleDao;
import com.atlent.atlent.repository.RegistrationDao;
import com.atlent.atlent.repository.StudentDao;
import com.atlent.atlent.service.Exam_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Exam_Service_Impl implements Exam_Service {

    @Autowired
    private ExamDao dao;
    @Autowired
    private StudentDao studentDao;
    @Autowired
    private ExamScheduleDao scheduleDao;

    @Override
    public ExamDto saveExam(ExamDto dto) {
        Exam exam = new Exam();
        exam.setDate(dto.getDate());
        exam.setTime(dto.getTime());
        exam.setType(dto.getType());
        dao.save(exam);
        return dto;
    }

    @Override
    public List<ExamDto> getAllExams() {
        List<ExamDto> list = new ArrayList<>();
        ExamDto dto = null;
        for (Exam exam : dao.findAll()) {
            dto = new ExamDto();
            dto.setDate(exam.getDate());
            dto.setTime(exam.getTime());
            dto.setType(exam.getType());
            dto.setId(exam.getId());
            list.add(dto);
        }
        ;
        return list;
    }

    @Override
    public ExamDto getById(String id) {

        int parseInt = Integer.parseInt(id);
        Exam exam = dao.getById(parseInt);
        ExamDto dto = new ExamDto();
        dto.setTime(exam.getTime());
        dto.setDate(exam.getDate());
        dto.setType(exam.getType());
        dto.setId(exam.getId());
        return dto;
    }

    @Override
    public boolean saveExamSchedule(ExamScheduleDto examScheduleDto) throws Exception {
        System.out.println("working on service layer");
        boolean res = false;
        Exam exam = dao.getByDate(examScheduleDto.getExamID());
        List<ExamSchedule> examSchedules = studentDao.getByNic(examScheduleDto.getStudentNIC()).getRegistration().getExamSchedules();
        if (examSchedules != null) {
            for (ExamSchedule schedule : examSchedules) {
                if (schedule.getExam().getId() == exam.getId()) {
                    schedule.setStates(examScheduleDto.getState());
                    scheduleDao.saveAndFlush(schedule);
                    res = true;
                }
            }
        } else {
            ExamSchedule schedule = new ExamSchedule();
            schedule.setStates(examScheduleDto.getState());
            schedule.setStudent_reg_id(studentDao.getByNic(examScheduleDto.getStudentNIC()).getRegistration());
            schedule.setExam(exam);
            scheduleDao.save(schedule);
        }


        ;
        return res;
    }

    @Override
    public List<ExamScheduleTableDataDto> getScheduleListDecendingOrder() throws Exception {
        List<ExamScheduleTableDataDto> list = new ArrayList<>();
        ExamScheduleTableDataDto dto = null;
        for (ExamSchedule schedule : scheduleDao.findAll()) {

            list.add(makeDTO(schedule));
        }
        ;
        return list;
    }

    @Override
    public List<ExamScheduleTableDataDto> getScheduleByStudent(String nic) throws Exception {
        List<ExamScheduleTableDataDto> list = new ArrayList<>();
        ExamScheduleTableDataDto data = null;
        Registration registration = studentDao.getByNic(nic).getRegistration();
        for (ExamSchedule schedule : registration.getExamSchedules()) {

            list.add(makeDTO(schedule));
        }
        ;
        return list;
    }

    @Override
    public List<ExamScheduleTableDataDto> getSchedulesByExam(String id) throws Exception {
        List<ExamScheduleTableDataDto> list = new ArrayList<>();
        for (ExamSchedule schedule : dao.getById(Integer.parseInt(id)).getExamSchedules()) {
            list.add(makeDTO(schedule));
        }
        ;
        return list;
    }

    private ExamScheduleTableDataDto makeDTO(ExamSchedule schedule) {
        ExamScheduleTableDataDto data = new ExamScheduleTableDataDto();
        data.setExam_date(schedule.getExam().getDate());
        data.setExam_type(schedule.getExam().getType());
        data.setNic(schedule.getStudent_reg_id().getStudent().getNic());
        data.setResult(schedule.getStates());
        data.setStudent_name(schedule.getStudent_reg_id().getStudent().getName());
        return data;
    }

}
