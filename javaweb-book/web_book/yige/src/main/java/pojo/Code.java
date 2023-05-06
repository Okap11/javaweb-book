package pojo;




public class Code {
    public static final Integer SAVE_OK = 20201;
    public static final Integer DELETE_OK = 20211;
    public static final Integer UPDATE_OK = 20221;
    public static final Integer GET_OK = 20231;
    public static final Integer CHECK_OK = 20241;


    public static final Integer SAVE_ERR = 20200;
    public static final Integer DELETE_ERR = 20210;
    public static final Integer UPDATE_ERR = 20220;
    public static final Integer GET_ERR = 20230;
    public static final Integer CHECK_ERR = 20240;


    public static final Integer SYSTEM_UNKONW_ERROR = 5001;
    public static final Integer SYSTEM_TIMEOUT_ERROR = 5002;

    public static final Integer PROJECT_VALIDATE_ERROR= 6001;
    public static final Integer PROJECT_BUSINESS_ERROR = 6002;


    public static Integer getSaveOk() {
        return SAVE_OK;
    }

    public static Integer getDeleteOk() {
        return DELETE_OK;
    }

    public static Integer getUpdateOk() {
        return UPDATE_OK;
    }

    public static Integer getGetOk() {
        return GET_OK;
    }

    public static Integer getCheckOk() {
        return CHECK_OK;
    }

    public static Integer getSaveErr() {
        return SAVE_ERR;
    }

    public static Integer getDeleteErr() {
        return DELETE_ERR;
    }

    public static Integer getUpdateErr() {
        return UPDATE_ERR;
    }

    public static Integer getGetErr() {
        return GET_ERR;
    }

    public static Integer getCheckErr() {
        return CHECK_ERR;
    }

    public static Integer getSystemUnkonwError() {
        return SYSTEM_UNKONW_ERROR;
    }

    public static Integer getSystemTimeoutError() {
        return SYSTEM_TIMEOUT_ERROR;
    }

    public static Integer getProjectValidateError() {
        return PROJECT_VALIDATE_ERROR;
    }

    public static Integer getProjectBusinessError() {
        return PROJECT_BUSINESS_ERROR;
    }
}