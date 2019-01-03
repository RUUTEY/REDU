CREATE DATABASE runt;

/*******************************************
***************RUNT***********************/

/******************************************
###########ADMINISTRATORS################*/
CREATE TABLE administrators (
    schoolname varchar(255) NOT NULL,
    schoollogo varchar(30) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    /*payment_method *****************payment method to be checking with db in who the schoolname is registered.....n to be paypal account*/
    password_user varchar(20) NOT NULL,
    phone_number int(12) NOT NULL,
    school_goal text(70),
    active varchar(15) DEFAULT 'active',

    PRIMARY KEY(schoolname
));

/******************************************
###########TEACHERS################*/
CREATE TABLE teachers (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    phone_number int(12) NOT NULL,
    class_name varchar(10) NOT NULL,
    active varchar(15) DEFAULT 'active',
    
    PRIMARY KEY(schoolname
));

/******************************************
###########Parents################*/
CREATE TABLE parents (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    phone_number int(12) NOT NULL,
    student_name varchar(10) NOT NULL,
    active varchar(15) DEFAULT 'active',
    
    PRIMARY KEY(schoolname
));

/******************************************
###########STUDENTS################*/
CREATE TABLE students (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    class_name varchar(10) NOT NULL,
    parents_name varchar(50) NOT NULL,
    active varchar(15) DEFAULT 'active',

    PRIMARY KEY(schoolname
));

/******************************************
###########librarians################*/
CREATE TABLE librarians (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    active varchar(15) DEFAULT 'active',

    PRIMARY KEY(schoolname
));

/******************************************
###########Stocks################*/
CREATE TABLE stocks (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    active varchar(15) DEFAULT 'active',
    
    PRIMARY KEY(schoolname
));

/******************************************
###########financial################*/
CREATE TABLE financial (
    schoolname varchar(255) NOT NULL,
    profilepic varchar(30),
    username varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password_user varchar(20) NOT NULL,
    active varchar(15) DEFAULT 'active',
    
    PRIMARY KEY(schoolname
));

/******************************************
###########SCHOOL################*/
CREATE TABLE school (
    id BIGINT AUTO_INCREMENT,
    schoolname text(255) NOT NULL,
    books_uploaded varchar(30),
     
    PRIMARY KEY(id
));
/****************************************
**********LIBRARY************************/
CREATE TABLE library (
     schoolname varchar(255) NOT NULL,
     bookname text(255) NOT NULL,
     bookindex text(255) NOT NULL,
     student_borrowed text(255) NOT NULL,
     deadline text(255) NOT NULL,
     overdue text(255) NOT NULL,

    PRIMARY KEY(schoolname
));
/****************************************
**********fees************************/
CREATE TABLE fees (
     schoolname varchar(255) NOT NULL,
     student_name varchar(255) NOT NULL,
     class_of_stud varchar(10) NOT NULL,
     money_toreach varchar(100) NOT NULL,
     overpaid varchar(10),
     less_paid varchar(10),
     equally_paid varchar(10),
     money_given varchar(10),
     balance varchar(10),
     balance_over varchar(10),
     validity text(25),

    PRIMARY KEY(schoolname
));
/****************************************
**********purchases************************/
CREATE TABLE purchases (
     schoolname varchar(255) NOT NULL,
     item text(255) NOT NULL,
     numb varchar(25) NOT NULL,
     cost text(255) NOT NULL,

    PRIMARY KEY(schoolname
));

/****************************************
**********lab equipment************************/
CREATE TABLE lab_stuff (
     schoolname varchar(255) NOT NULL,
     burrette varchar(25) DEFAULT 0,
     burrette_req varchar(25) DEFAULT 0,
     burrette_dam varchar(25) DEFAULT 0,
     pipette varchar(25) DEFAULT 0,
     pipette_req varchar(25) DEFAULT 0,
     pipette_dam varchar(25) DEFAULT 0,
     bunsen varchar(25) DEFAULT 0,
     bunsen_req varchar(25) DEFAULT 0,
     bunsen_dam varchar(25) DEFAULT 0,
     testtube varchar(25) DEFAULT 0,
     testtube_req varchar(25) DEFAULT 0,
     testtube_dam varchar(25) DEFAULT 0,
     boiltube varchar(25) DEFAULT 0,
     boiltube_req varchar(25) DEFAULT 0,
     boiltube_dam varchar(25) DEFAULT 0,
     testholder varchar(25) DEFAULT 0,
     testholder_req varchar(25) DEFAULT 0,
     testholder_dam varchar(25) DEFAULT 0,
     tripod varchar(25) DEFAULT 0,
     tripod_req varchar(25) DEFAULT 0,
     tripod_dam varchar(25) DEFAULT 0,
     teatpipette varchar(25) DEFAULT 0,
     teatpipette_req varchar(25) DEFAULT 0,
     teatpipette_dam varchar(25) DEFAULT 0,
     conical varchar(25) DEFAULT 0,
     conical_req varchar(25) DEFAULT 0,
     conical_dam varchar(25) DEFAULT 0,
     spatula varchar(25) DEFAULT 0,
     spatula_req varchar(25) DEFAULT 0,
     spatula_dam varchar(25) DEFAULT 0,
     deflaragating varchar(25) DEFAULT 0,
     deflaragating_req varchar(25) DEFAULT 0,
     deflaragating_dam varchar(25) DEFAULT 0,
     beaker varchar(25) DEFAULT 0,
     beaker_req varchar(25) DEFAULT 0,
     beaker_dam varchar(25) DEFAULT 0,
     smoke varchar(25) DEFAULT 0,
     smoke_req varchar(25) DEFAULT 0,
     smoke_dam varchar(25) DEFAULT 0,
     fireextinguish varchar(25) DEFAULT 0,
     fireextinguish_req varchar(25) DEFAULT 0,
     fireextinguish_dam varchar(25) DEFAULT 0,
     laptop varchar(25) DEFAULT 0,
     laptop_req varchar(25) DEFAULT 0,
     laptop_dam varchar(25) DEFAULT 0,
     computer varchar(25) DEFAULT 0,
     computer_req varchar(25) DEFAULT 0,
     computer_dam varchar(25) DEFAULT 0,
     cctv varchar(25) DEFAULT 0,
     cctv_req varchar(25) DEFAULT 0,
     cctv_dam varchar(25) DEFAULT 0,
     
    PRIMARY KEY(schoolname
));

/****************************************
**********class equipment************************/
CREATE TABLE class_stuff (
     schoolname varchar(255) NOT NULL,
     cduster varchar(25) DEFAULT 0,
     cduster_req varchar(25) DEFAULT 0,
     cduster_dam varchar(25) DEFAULT 0,
     cruler varchar(25) DEFAULT 0,
     cruler_req varchar(25) DEFAULT 0,
     cruler_dam varchar(25) DEFAULT 0,
     ctable varchar(25) DEFAULT 0,
     ctable_req varchar(25) DEFAULT 0,
     ctable_dam varchar(25) DEFAULT 0,
     desks varchar(25) DEFAULT 0,
     desks_req varchar(25) DEFAULT 0,
     desks_dam varchar(25) DEFAULT 0,
     chairs varchar(25) DEFAULT 0,
     chairs_req varchar(25) DEFAULT 0,
     chairs_dam varchar(25) DEFAULT 0,
     bulbs varchar(25) DEFAULT 0,
     bulbs_req varchar(25) DEFAULT 0,
     bulbs_dam varchar(25) DEFAULT 0,
     trashcans varchar(25) DEFAULT 0,
     trashcans_req varchar(25) DEFAULT 0,
     trashcans_dam varchar(25) DEFAULT 0,
     window varchar(25) DEFAULT 0,
     window_req varchar(25) DEFAULT 0,
     window_dam varchar(25) DEFAULT 0,
     calendar varchar(25) DEFAULT 0,
     calendar_req varchar(25) DEFAULT 0,
     calendar_dam varchar(25) DEFAULT 0,
     clock varchar(25) DEFAULT 0,
     clock_req varchar(25) DEFAULT 0,
     clock_dam varchar(25) DEFAULT 0,
     switches varchar(25) DEFAULT 0,
     switches_req varchar(25) DEFAULT 0,
     switches_dam varchar(25) DEFAULT 0,
     smoke varchar(25) DEFAULT 0,
     smoke_req varchar(25) DEFAULT 0,
     smoke_dam varchar(25) DEFAULT 0,
     fireextinguish varchar(25) DEFAULT 0,
     fireextinguish_req varchar(25) DEFAULT 0,
     fireextinguish_dam varchar(25) DEFAULT 0,
     exercisebkruled varchar(25) DEFAULT 0,
     exercisebkruled_req varchar(25) DEFAULT 0,
     exercisebkruled_dam varchar(25) DEFAULT 0,
     exercisebksquared varchar(25) DEFAULT 0,
     exercisebksquared_req varchar(25) DEFAULT 0,
     exercisebksquared_dam varchar(25) DEFAULT 0,
     graphbk varchar(25) DEFAULT 0,
     graphbk_req varchar(25) DEFAULT 0,
     graphbk_dam varchar(25) DEFAULT 0,
     chalks varchar(25) DEFAULT 0,
     chalks_req varchar(25) DEFAULT 0,
     chalks_dam varchar(25) DEFAULT 0,
     markerpens varchar(25) DEFAULT 0,
     markerpens_req varchar(25) DEFAULT 0,
     markerpens_dam varchar(25) DEFAULT 0,
     ccompass varchar(25) DEFAULT 0,
     ccompass_req varchar(25) DEFAULT 0,
     ccompass_dam varchar(25) DEFAULT 0,
     cprotrator varchar(25) DEFAULT 0,
     cprotrator_req varchar(25) DEFAULT 0,
     cprotrator_dam varchar(25) DEFAULT 0,
     csetsquare varchar(25) DEFAULT 0,
     csetsquare_req varchar(25) DEFAULT 0,
     csetsquare_dam varchar(25) DEFAULT 0,
     cbroom varchar(25) DEFAULT 0,
     cbroom_req varchar(25) DEFAULT 0,
     cbroom_dam varchar(25) DEFAULT 0,
     
    PRIMARY KEY(schoolname
));

/****************************************
**********staff equipment************************/
CREATE TABLE staff_stuff (
     schoolname varchar(255) NOT NULL,
     squeegee varchar(25) DEFAULT 0,
     squeegee_req varchar(25) DEFAULT 0,
     squeegee_dam varchar(25) DEFAULT 0,
     brooms varchar(25) DEFAULT 0,
     brooms_req varchar(25) DEFAULT 0,
     brooms_dam varchar(25) DEFAULT 0,
     scrubs varchar(25) DEFAULT 0,
     scrubs_req varchar(25) DEFAULT 0,
     scrubs_dam varchar(25) DEFAULT 0,
     detergent varchar(25) DEFAULT 0,
     detergent_req varchar(25) DEFAULT 0,
     detergent_dam varchar(25) DEFAULT 0,
     trashcans varchar(25) DEFAULT 0,
     trashcans_req varchar(25) DEFAULT 0,
     trashcans_dam varchar(25) DEFAULT 0,
     
    PRIMARY KEY(schoolname
));

/****************************************
**********domitory equipment************************/
CREATE TABLE domitory_stuff (
     schoolname varchar(255) NOT NULL,
     beds varchar(25) DEFAULT 0,
     beds_req varchar(25) DEFAULT 0,
     beds_dam varchar(25) DEFAULT 0,
     cabinets varchar(25) DEFAULT 0,
     cabinets_req varchar(25) DEFAULT 0,
     cabinets_dam varchar(25) DEFAULT 0,
     showers varchar(25) DEFAULT 0,
     showers_req varchar(25) DEFAULT 0,
     showers_dam varchar(25) DEFAULT 0,
     heaters varchar(25) DEFAULT 0,
     heaters_req varchar(25) DEFAULT 0,
     heaters_dam varchar(25) DEFAULT 0,
     trashcans varchar(25) DEFAULT 0,
     trashcans_req varchar(25) DEFAULT 0,
     trashcans_dam varchar(25) DEFAULT 0,
     taps varchar(25) DEFAULT 0,
     taps_req varchar(25) DEFAULT 0,
     taps_dam varchar(25) DEFAULT 0,
     window varchar(25) DEFAULT 0,
     window_req varchar(25) DEFAULT 0,
     window_dam varchar(25) DEFAULT 0,
     switches varchar(25) DEFAULT 0,
     switches_req varchar(25) DEFAULT 0,
     switches_dam varchar(25) DEFAULT 0,
     bulbs varchar(25) DEFAULT 0,
     bulbs_req varchar(25) DEFAULT 0,
     bulbs_dam varchar(25) DEFAULT 0,
     mirrors varchar(25) DEFAULT 0,
     mirrors_req varchar(25) DEFAULT 0,
     mirrors_dam varchar(25) DEFAULT 0,
     
    PRIMARY KEY(schoolname
));

/****************************************
**********dining equipment************************/
CREATE TABLE dining_stuff (
     schoolname varchar(255) NOT NULL,
     benches varchar(25) DEFAULT 0,
     benches_req varchar(25) DEFAULT 0,
     benches_dam varchar(25) DEFAULT 0,
     plates varchar(25) DEFAULT 0,
     plates_req varchar(25) DEFAULT 0,
     plates_dam varchar(25) DEFAULT 0,
     tables varchar(25) DEFAULT 0,
     tables_req varchar(25) DEFAULT 0,
     tables_dam varchar(25) DEFAULT 0,
     spoons varchar(25) DEFAULT 0,
     spoons_req varchar(25) DEFAULT 0,
     spoons_dam varchar(25) DEFAULT 0,
     cups varchar(25) DEFAULT 0,
     cups_req varchar(25) DEFAULT 0,
     cups_dam varchar(25) DEFAULT 0,
    PRIMARY KEY(schoolname
));

/****************************************
**********accessories************************/
CREATE TABLE accessories (
     schoolname varchar(255) NOT NULL,
     tv varchar(25) DEFAULT 0,
     tv_req varchar(25) DEFAULT 0,
     tv_dam varchar(25) DEFAULT 0,
     projector varchar(25) DEFAULT 0,
     projector_req varchar(25) DEFAULT 0,
     projector_dam varchar(25) DEFAULT 0,
     speakers varchar(25) DEFAULT 0,
     speakers_req varchar(25) DEFAULT 0,
     speakers_dam varchar(25) DEFAULT 0,
    PRIMARY KEY(schoolname
));

/*****************************************
**************DEPARTMENTS*****************/
CREATE TABLE departments (
   schoolname varchar(255) NOT NULL,
   departments text(255),
   departments_management text(255),

   PRIMARY KEY(schoolname
));

/*****************************************
***********CLASS*************************/
CREATE TABLE class (
   schoolname varchar(255) NOT NULL,
   class_name varchar(10),
   notes_uploaded varchar(30),
   videos_uploaded VARCHAR(2555),
   /*************recent_confrencing datetime NOT NULL,###################not 4 now#################**/
   timetable VARCHAR(60000) DEFAULT 'LACKING',
   class_teacher varchar(50) NOT NULL,
   class_topic varchar(255),
   student_name varchar(50) NOT NULL,
   student_email varchar(255) NOT NULL,
   parent_name varchar(50) NOT NULL,
   validity varchar(25) DEFAULT 0,

   PRIMARY KEY(class_name

));

/****************************************
**********office equipment************************/
CREATE TABLE office_stuff (
     schoolname varchar(255) NOT NULL,
     ppunch varchar(25) DEFAULT 0,
     ppunch_req varchar(25) DEFAULT 0,
     ppunch_dam varchar(25) DEFAULT 0,
     stapler varchar(25) DEFAULT 0,
     stapler_req varchar(25) DEFAULT 0,
     stapler_dam varchar(25) DEFAULT 0,
     staple varchar(25) DEFAULT 0,
     staple_req varchar(25) DEFAULT 0,
     staple_dam varchar(25) DEFAULT 0,
     blankpaper varchar(25) DEFAULT 0,
     blankpaper_req varchar(25) DEFAULT 0,
     blankpaper_dam varchar(25) DEFAULT 0,
     pclips varchar(25) DEFAULT 0,
     pclips_req varchar(25) DEFAULT 0,
     pclips_dam varchar(25) DEFAULT 0,
     cellotape varchar(25) DEFAULT 0,
     cellotape_req varchar(25) DEFAULT 0,
     cellotape_dam varchar(25) DEFAULT 0,
     officeglue varchar(25) DEFAULT 0,
     officeglue_req varchar(25) DEFAULT 0,
     officeglue_dam varchar(25) DEFAULT 0,
     stamps varchar(25) DEFAULT 0,
     stamps_req varchar(25) DEFAULT 0,
     stamps_dam varchar(25) DEFAULT 0,
     registerbk varchar(25) DEFAULT 0,
     registerbk_req varchar(25) DEFAULT 0,
     registerbk_dam varchar(25) DEFAULT 0,
     diary varchar(25) DEFAULT 0,
     diary_req varchar(25) DEFAULT 0,
     diary_dam varchar(25) DEFAULT 0,
     reportbk varchar(25) DEFAULT 0,
     reportbk_req varchar(25) DEFAULT 0,
     reportbk_dam varchar(25) DEFAULT 0,
     markerpens varchar(25) DEFAULT 0,
     markerpens_req varchar(25) DEFAULT 0,
     markerpens_dam varchar(25) DEFAULT 0,
     fireextinguish varchar(25) DEFAULT 0,
     fireextinguish_req varchar(25) DEFAULT 0,
     fireextinguish_dam varchar(25) DEFAULT 0,
     smoke varchar(25) DEFAULT 0,
     smoke_req varchar(25) DEFAULT 0,
     smoke_dam varchar(25) DEFAULT 0,
     computer varchar(25) DEFAULT 0,
     computer_req varchar(25) DEFAULT 0,
     computer_dam varchar(25) DEFAULT 0,
     printers varchar(25) DEFAULT 0,
     printers_req varchar(25) DEFAULT 0,
     printers_dam varchar(25) DEFAULT 0,
     files varchar(25) DEFAULT 0,
     files_req varchar(25) DEFAULT 0,
     files_dam varchar(25) DEFAULT 0,
     cabinets varchar(25) DEFAULT 0,
     cabinets_req varchar(25) DEFAULT 0,
     cabinets_dam varchar(25) DEFAULT 0,
     
    PRIMARY KEY(schoolname
));

/*****************************************
*************ASSIGNMENTS******************/
CREATE TABLE assignments (
    schoolname varchar(255) NOT NULL,
    class_name varchar(10) NOT NULL,
    student_name varchar(50) NOT NULL,
    assignment_name text(20) NOT NULL,
    deadline text(20) NOT NULL,
    grade int(100),
    done_not_done text(20) NOT NULL,
    done_notgraded text(35),
    date_created text(20) NOT NULL,
    subject_ass text(20) NOT NULL,
    ass varchar(30),

    PRIMARY KEY(class_name

));

/******************************PERFORMANCE OF TUDENT************************/
CREATE TABLE student_perfomance (
   schoolname varchar(255) NOT NULL,
   class_name varchar(10),
   student_name varchar(50) NOT NULL,
   class_teacher varchar(50) NOT NULL,
  
   PRIMARY KEY(class_name
));