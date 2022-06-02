package persistence.dto;

public class TeacherDTO {
    public String TeacherId;
    public String TeacherName;
    public String TeacherPassWord;

    public TeacherDTO(String TeacherId, String TeacherName, String TeacherPassWord){
        this.TeacherId = TeacherId;
        this.TeacherName = TeacherName;
        this.TeacherPassWord = TeacherPassWord;
    }

    public TeacherDTO() {

    }

    public String getTeacherId(){
        return TeacherId;
    }

    public void setTeacherId(String TeacherId){
        this.TeacherId = TeacherId;
    }

    public String getTeacherName(){
        return TeacherName;
    }

    public void setTeacherName(String TeacherName){
        this.TeacherName = TeacherName;
    }

    public String getTeacherPassWord(){
        return TeacherPassWord;
    }

    public void setTeacherPassWord(String TeacherPassWord){
        this.TeacherPassWord = TeacherPassWord;
    }
}
